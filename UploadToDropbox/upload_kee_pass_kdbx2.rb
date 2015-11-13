require 'dropbox_sdk'

module UploadKeePassKDBX2

  APP_KEY = 'key'
  APP_SECRET = 'secret'

  def UploadKeePassKDBX2.connectToDropbox()
    # Get your app key and secret from the Dropbox developer website

    flow = DropboxOAuth2FlowNoRedirect.new(APP_KEY, APP_SECRET)

    access_token = 'access_token'
    client = DropboxClient.new(access_token)
  end

end


client =  UploadKeePassKDBX2.connectToDropbox



puts "linked account:", client.account_info().inspect

file = open('path_to_keepass_kdbx')
response = client.put_file('/backup.kdbx', file)

if response["bytes"] != 0 && response["mime_type"] == "application/octet-stream"
  puts "uploaded:", response.inspect
else
  puts "bad"
  gets bad
end


