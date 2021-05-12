from __future__ import print_function
import os.path
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
import time
# If modifying these scopes, delete the file token.json.
SCOPES = ['https://www.googleapis.com/auth/tasks.readonly']

def main():
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

    while True:
        tasks = []
        totaltasks = 0
        if not items:
            print('No task lists found.')
        else:
            print('Task lists:')
            for item in items:
                lists = service.tasks().list(tasklist=item['id'], showCompleted=False).execute().get('items')

                if lists is not None:
                    totaltasks += len(lists)
                    tasks.append(lists)
                #print(u'{0} ({1})'.format(item['title'], item['id']))
        print('total tasks' , totaltasks)
        time.sleep(1)
if __name__ == '__main__':
    main()