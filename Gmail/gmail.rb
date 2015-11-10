# Useful for notifying about errors from deploy scripts, etc.

require_relative "tlsmail"
require "time"

module Gmail



  def self.send(subject, body, opts = {})
  to = opts[:to]
  from = opts[:from]
  password = opts[:password]

    content = <<EOF
From: #{from}
To: #{to}
Subject: #{subject}
Date: #{Time.now.rfc2822}
    #{body}
EOF

    Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
    # Net::SMTP.start('smtp.gmail.com', 587, 'gmail.com', from, password, :login) do |smtp|
    Net::SMTP.start('smtp.gmail.com', 465, 'mail.google.com', from, password, :login) do |smtp|
      smtp.send_message(content, from, to)
    end
  end
end

opts = { #:address              => "smtp.gmail.com",
         # :port                 => 465,
         # :domain               => 'gmail.com',

         # :authentication       => 'login',
         # :enable_starttls_auto => true,
         :to         => '',
         :from       => '',
         :password   => ''
}

Gmail.send("kdbx backup", "hello", opts)
