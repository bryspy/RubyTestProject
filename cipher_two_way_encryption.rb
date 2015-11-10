require 'openssl'


cipher = OpenSSL::Cipher::AES.new(256, :CBC)

cipher.encrypt

key = cipher.random_key

iv = cipher.random_iv

puts "key: #{key} iv: #{iv}"

password = 'password'

encryptedPwd = cipher.update(password) + cipher.final

puts encryptedPwd

decipher = OpenSSL::Cipher::AES.new(256, :CBC)
decipher.decrypt

decipher.key = key
decipher.iv = iv

plain = decipher.update(encryptedPwd) + decipher.final

puts plain == password
