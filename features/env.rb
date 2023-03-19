require 'test_xml'
#require 'test_xml/spec'
require 'savon'

# some global variables

Savon.configure do |config|
	config.env_namespace = :soap
end


$safetoken_client = Savon.client do
	wsdl.endpoint = "http://172.25.20.104/v2/billpaymentservice"
	wsdl.namespace = "http://techquest.interswitchng.com/"
end