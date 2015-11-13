require 'dropbox_sdk'


# Get your app key and secret from the Dropbox developer website
  APP_KEY = 'key'
  APP_SECRET = 'secret'

  flow = DropboxOAuth2FlowNoRedirect.new(APP_KEY, APP_SECRET)

access_token = 'access_token'

  client = DropboxClient.new(access_token)
  puts "linked account:", client.account_info().inspect

file = open('path_to_keepass_kdbx')
response = client.put_file('/backup.kdbx', file)


puts "uploaded:", response.inspect

