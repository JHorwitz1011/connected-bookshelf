# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

#tasks api setup 
from __future__ import print_function
import os.path
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials

SCOPES = ['https://www.googleapis.com/auth/tasks.readonly']


#AWS SETUP
from awscrt import io, mqtt, auth, http
from awsiot import mqtt_connection_builder
import time
import json

# Define ENDPOINT, CLIENT_ID, PATH_TO_CERT, PATH_TO_KEY, PATH_TO_ROOT, MESSAGE, TOPIC, and RANGE
ENDPOINT = "a318wo20lj9o2p-ats.iot.us-east-1.amazonaws.com"
CLIENT_ID = "ShelfEC2"
PATH_TO_CERT = "certificates/df9bd14653-certificate.pem.crt"
PATH_TO_KEY = "certificates/df9bd14653-private.pem.key"
PATH_TO_ROOT = "certificates/AmazonRootCA1.pem"
MESSAGE = "Hello World"
TOPIC = "lamp/state"
RANGE = 256



def main():
    #AWS CONNECTION
    event_loop_group = io.EventLoopGroup(1)
    host_resolver = io.DefaultHostResolver(event_loop_group)
    client_bootstrap = io.ClientBootstrap(event_loop_group, host_resolver)
    mqtt_connection = mqtt_connection_builder.mtls_from_path(
                endpoint=ENDPOINT,
                cert_filepath=PATH_TO_CERT,
                pri_key_filepath=PATH_TO_KEY,
                client_bootstrap=client_bootstrap,
                ca_filepath=PATH_TO_ROOT,
                client_id=CLIENT_ID,
                clean_session=False,
                keep_alive_secs=6
                )
    print("Connecting to {} with client ID '{}'...".format(
            ENDPOINT, CLIENT_ID))
    # Make the connect() call
    connect_future = mqtt_connection.connect()
    # Future.result() waits until a result is available
    connect_future.result()
    print("Connected!")

    """
    Tasks API
    """
    creds = None
    # The file token.json stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first
    # time.
    if os.path.exists('token.json'):
        creds = Credentials.from_authorized_user_file('token.json', SCOPES)
    # If there are no (valid) credentials available, let the user log in.
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                'credentials.json', SCOPES)
            creds = flow.run_local_server(port=0)
        # Save the credentials for the next run
        with open('token.json', 'w') as token:
            token.write(creds.to_json())

    service = build('tasks', 'v1', credentials=creds)

    # Call the Tasks API
    results = service.tasklists().list(maxResults=10).execute()
    items = results.get('items', [])

    previous_task_count = 0
    current_task_count = 0

    while True:
        previous_task_count = current_task_count

        tasks = []
        if not items:
            print('No task lists found.')
        else:
            print('Task lists:')
            for item in items:
                lists = service.tasks().list(tasklist=item['id'], showCompleted=False).execute().get('items')

                if lists is not None:
                    current_task_count += len(lists)
                    tasks.append(lists)
                #print(u'{0} ({1})'.format(item['title'], item['id']))
        print('total tasks' , current_task_count)
        
        #if current task count has decreased
        if(current_task_count < previous_task_count):
            print('Begin Publish')
            for i in range(0, RANGE, 15):
            data = "{} [{}]".format(MESSAGE, i+1)
            message = {"h" : i, "s": 255, 'v': 255, "client": 'ec2'}
            mqtt_connection.publish(topic=TOPIC, payload=json.dumps(message), qos=mqtt.QoS.AT_LEAST_ONCE)
            print("Published: '" + json.dumps(message) + "' to the topic: " + "'lamp/state'")
        
        time.sleep(1)


    print('Ending')
    disconnect_future = mqtt_connection.disconnect()
    disconnect_future.result()

if __name__ == "__main__":
    main()
