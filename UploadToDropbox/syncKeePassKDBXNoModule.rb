require 'dropbox_sdk'


# Get your app key and secret from the Dropbox developer website
  APP_KEY = '5l1ycd1q7yxf6js'
  APP_SECRET = 'q1040czoixwiqds'

  flow = DropboxOAuth2FlowNoRedirect.new(APP_KEY, APP_SECRET)

access_token = 'ADSSQtmZuQAAAAAAAAADiQzLIou8u97h8h8k1SSn5a2hEDo23lSEY5_xevufx9rQ'

  client = DropboxClient.new(access_token)
  puts "linked account:", client.account_info().inspect

file = open('C:\Users\bikonomovski\Documents\BryanIkon.kdbx')
response = client.put_file('/backup.kdbx', file)


puts "uploaded:", response.inspect

