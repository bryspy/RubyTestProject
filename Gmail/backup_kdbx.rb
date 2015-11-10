require 'mail'
require "digest"
require 'bcrypt'
require_relative 'gmail'

  opts = { :address              => "smtp.gmail.com",
              :port                 => 465,
              :domain               => 'gmail.com',
              :user_name            => '',
              :password             => '',
              :authentication       => 'login',
              :enable_starttls_auto => true  }

  Gmail.send("kdbx backup", "hello", opts)





# Mail.defaults do
#   delivery_method :smtp, options
# end


# Mail.deliver do
#   to        ''
#   from      ''
#   subject   'Email with attachment'
#   body      'Hello world'
#   add_file  ""
# end

# def bcrypt(password)
#   my_password = BCrypt::Password.create(password)
# end
#
# password = bcrypt(options[:password])
#
# puts "encrypted password: #{password} and original: #{options[:password]}"
#
#
# fail "Passwords Do Not Match" unless password == options[:password]
