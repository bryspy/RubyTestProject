
require 'httparty'

response = HTTParty.get("http://fc3.digitalriver.com/fcweb/wip.jsp?name=gc2-sys-shopper-s2.wipint.digitalriverws.net")

puts response.code
