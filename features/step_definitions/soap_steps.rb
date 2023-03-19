Given /^a SOAP client POST with:$/ do |data|
	
	@last_response = $safetoken_client.request('', 'CustomerInformationRequest') do
		soap.namespaces["xmlns:soapenv"] = "http://schemas.xmlsoap.org/soap/envelope/"
		soap.element_form_default = :qualified
		soap.body = data
		http.headers["SecurityToken"] =  "83a7443f6f19c1a4c2e7fe225b059a2f8eadd6fb7765a811b817edcff12e2cd95c13ef458dfc215541c53b63ec6e0318a445737b0e9eec91d6c3b9d4638dcf767eb3de51d91ad68cad9a89b9fd07b594e0aa7b1f3ef48846675cfa428d552e06ac1147f9279cead5315b0cd85388c0390265f5e5e04ff1f1ff2c8e3bb66bd07701b893ccce7e11d37742ca1694750b6448884d5f2b2b33bb64ff1f34e820b6132f78fbd3460e32aaaa79ac26f970a0f7f3ac006886d66560eef319372f1f3b6888410614f4733f4464c84f0c7fea6990da1cc91d55e72b6da229831ca444fe4e6bee20f527991cc83234b629c82230392ce528c209dc07343f2d8cfc95a3a0b65dbba59530fb165891bdd69dba089669"
	end
	puts body
	puts last_response.body
	puts @body
	puts @last_response.body
	@last_response.http.code.should eq (200)

end

Then /^the HTTP status should be "(.*?)"$/ do |code|
	@last_response.http.code.should eq(code.to_i)
end

Then /^the status should be "(.*?)"$/ do |status|
	@last_response.body[:customer_information_response][:customers][:customer][:status].should eq(status)
end

Then /^the cust reference should be "(.*?)"$/ do |cust_ref|
	@last_response.body[:customer_information_response][:customers][:customer][:cust_reference].should eq(cust_ref)
end

Then /^the customer reference alternate should be "(.*?)"$/ do |cust_ref_alt|
	@last_response.body[:customer_information_response][:customers][:customer][:customer_reference_alternate].should eq(cust_ref_alt)
end

Then /^the first name should be "(.*?)"$/ do |first_name|
	@last_response.body[:customer_information_response][:customers][:customer][:first_name].should eq(first_name)
end

Then /^the last name should be "(.*?)"$/ do |last_name|
	@last_response.body[:customer_information_response][:customers][:customer][:last_name].should eq(last_name)
end

Then /^the amount should be "(.*?)"$/ do |amount|
	@last_response.body[:customer_information_response][:customers][:customer][:amount].should eq(amount)
end

Then /^the merchant reference should be "(.*?)"$/ do |merchant_ref|
	@last_response.body[:customer_information_response][:customers][:customer][:merchant_reference].should eq(merchant_ref)
end

Then /^the response code should be "(.*?)"$/ do |response_code|
	@last_response.body[:customer_information_response][:response_code].should eq(response_code)
end

Then /^the response message should be "(.*?)"$/ do |response_message|
	puts @last_response.body[:customer_information_response][:response_message].should eq(response_message)
end

Then /^the system response code should be "(.*?)"$/ do |system_response_code|
	puts @last_response.body[:customer_information_response][:system_response_code].should eq(system_response_code)
end

Then /^the system response message should be "(.*?)"$/ do |system_response_message|
	puts @last_response.body[:customer_information_response][:system_response_message].should eq(system_response_message)
end

Then /^the third party code should be "(.*?)"$/ do |third_party_code|
	@last_response.body[:customer_information_response][:customers][:customer][:third_party_code].should eq(third_party_code)
end

Then /^the Additional Info should be "(.*?)"$/ do |additional_info|
	@last_response.body[:customer_information_response][:customers][:customer][:additional_info].should eq(additional_info)
end

Then /^the address should be "(.*?)"$/ do |address|
	@last_response.body[:customer_information_response][:customers][:customer][:address].should eq(address)
end

Then /^the payment items should be "(.*?)"$/ do |payment_items|
	@last_response.body[:customer_information_response][:customers][:customer][:payment_items].should eq(payment_items)
end

Then /^the item should be "(.*?)"$/ do |item|
	@last_response.body[:customer_information_response][:customers][:customer][:payment_items][:item].should eq(item)
end

Then /^the product name should be "(.*?)"$/ do |product_name|
	@last_response.body[:customer_information_response][:customers][:customer][:payment_items][:item][:product_name].should eq(product_name)
end

Then /^the total should be "(.*?)"$/ do |total|
	@last_response.body[:customer_information_response][:customers][:customer][:payment_items][:item][:total].should eq(total)
end

Then /^the price should be "(.*?)"$/ do |price|
	@last_response.body[:customer_information_response][:customers][:customer][:payment_items][:item][:price].should eq(price)
end

Then /^the product code should be "(.*?)"$/ do |product_code|
	@last_response.body[:customer_information_response][:customers][:customer][:payment_items][:item][:product_code].should eq(product_code)
end

Then /^the quantity should be "(.*?)"$/ do |quantity|
	@last_response.body[:customer_information_response][:customers][:customer][:payment_items][:item][:quantity].should eq(quantity)
end

Then /^the bank code should be "(.*?)"$/ do |bank_code|
	@last_response.body[:customer_information_response][:customers][:customer][:bank_code].should eq(bank_code)
end

Then /^the amount paid should be "(.*?)"$/ do |amount_paid|
	@last_response.body[:customer_information_response][:customers][:customer][:amount_paid].should eq(amount_paid)
end
#		--MTN cust. validation success result--
#		And the cust reference should be "100005807"
#		And the first name should be "N/A"
#		And the amount should be "0"
#		And the amount paid should be "0"
#		And the customer reference alternate should be "GSMUSER"


#--Payment Notification Test Suite--

Given /^a payment notification SOAP client POST with:$/ do |data|
	
	@last_response = $safetoken_client.request('', 'PaymentNotificationRequest') do
		soap.namespaces["xmlns:soapenv"] = "http://schemas.xmlsoap.org/soap/envelope"
		soap.element_form_default = :qualified
		soap.body = data
		http.headers["SecurityToken"] =  "a2811f0df531ee5e4c47dbef360d01f3a15d990981f95895388819446e15b102d99d30b83ff79896782562c6e8d10cfa96f01428c0b563994f5a09ad47889925727aad9f1643c981344980252ad775e92cf0390ff2e61faa44ddebc299568e24a44e1131c68c50a22c347bdf6106f5a91c03ab8ef71f8803867d3c13a7791abf90159dfb201d8ba0697cf8b1d1587389a30baeab2aa321f12cf6c96bc06716420b019ec274d72f42e51d4e05955ffb8f"
	end
	
	@last_response.http.code.should eq (200)

end

Given /^a dealer payment notification SOAP client POST with:$/ do |data|
	
	data ["200800"] = rand(6 ** 6).to_s.rjust(6,'0')
	@last_response = $safetoken_client.request('', 'PaymentNotificationRequest') do
		soap.namespaces["xmlns:soapenv"] = "http://schemas.xmlsoap.org/soap/envelope"
		soap.element_form_default = :qualified
		soap.body = data
		http.headers["SecurityToken"] =  "a2811f0df531ee5e4c47dbef360d01f3a15d990981f95895388819446e15b102d99d30b83ff79896782562c6e8d10cfa96f01428c0b563994f5a09ad47889925727aad9f1643c981344980252ad775e92cf0390ff2e61faa44ddebc299568e24a44e1131c68c50a22c347bdf6106f5a91c03ab8ef71f8803867d3c13a7791abf90159dfb201d8ba0697cf8b1d1587389a30baeab2aa321f12cf6c96bc06716420b019ec274d72f42e51d4e05955ffb8f"
	end
	
	@last_response.http.code.should eq (200)

end


Then /^the payment notification HTTP status should be "(.*?)"$/ do |code|
	@last_response.http.code.should eq(code.to_i)
end

Then /^the payment notification status should be "(.*?)"$/ do |pay_status|
	@last_response.body[:payment_notification_response][:payments][:payment][:status].should eq(pay_status)
end

Then /^the payment notification payment log id should be "(.*?)"$/ do |payment_log_id|
	@last_response.body[:payment_notification_response][:payments][:payment][:payment_log_id].should eq(payment_log_id)
end

Then /^the bulk payment notification status "(.*?)" should be "(.*?)"$/ do |index, bulk_pay_status|
	@last_response.body[:payment_notification_response][:payments][:payment][index.to_i][:status].should eq(bulk_pay_status)
end

Then /^the bulk payment notification payment log id "(.*?)" should be "(.*?)"$/ do |index, bulk_payment_log_id|
	@last_response.body[:payment_notification_response][:payments][:payment][index.to_i][:payment_log_id].should eq(bulk_payment_log_id)
end

Then /^the payment notification merchant payment reference should be "(.*?)"$/ do |merchant_payment_ref|
	@last_response.body[:payment_notification_response][:payments][:payment][:merchant_payment_reference].should eq(merchant_payment_ref)
end

Then /^the payment notification response code should be "(.*?)"$/ do |pay_response_code|
	@last_response.body[:payment_notification_response][:response_code].should eq(pay_response_code)
end

Then /^the payment notification response message should be "(.*?)"$/ do |pay_response_message|
	puts @last_response.body[:payment_notification_response][:response_message].should eq(pay_response_message)
end

Then /^the payment notification system response code should be "(.*?)"$/ do |pay_system_response_code|
	@last_response.body[:payment_notification_response][:system_response_code].should eq(pay_system_response_code)
end

Then /^the payment notification cust reference should be "(.*?)"$/ do |pay_cust_reference|
	@last_response.body[:payment_notification_response][:payments][:payment][:cust_reference].should eq(pay_cust_reference)
end

Then /^the payment notification amount should be "(.*?)"$/ do |pay_amount|
	@last_response.body[:payment_notification_response][:payments][:payment][:amount].should eq(pay_amount)
end

Then /^the payment notification payment method should be "(.*?)"$/ do |pay_payment_method|
	@last_response.body[:payment_notification_response][:payments][:payment][:payment_method].should eq(pay_payment_method)
end

Then /^the payment notification payment reference should be "(.*?)"$/ do |pay_payment_reference|
	@last_response.body[:payment_notification_response][:payments][:payment][:payment_reference].should eq(pay_payment_reference)
end

Then /^the payment notification payment status should be "(.*?)"$/ do |pay_payment_status|
	@last_response.body[:payment_notification_response][:payments][:payment][:payment_status].should eq(pay_payment_status)
end

Then /^the payment notification is reversal should be "(.*?)"$/ do |pay_is_reversal|
	@last_response.body[:payment_notification_response][:payments][:payment][:is_reversal].should eq(pay_is_reversal)
end

Then /^the payment notification product group code should be "(.*?)"$/ do |pay_product_group_code|
	@last_response.body[:payment_notification_response][:payments][:payment][:product_group_code].should eq(pay_product_group_code)
end

Then /^the payment notification system response message should be "(.*?)"$/ do |pay_system_response_message|
	@last_response.body[:payment_notification_response][:system_response_message].should eq(pay_system_response_message)
end

Then /^the payment notification system response message should be "(.*?)"$/ do |pay_system_response_message|
	@last_response.body[:payment_notification_response][:system_response_message].should eq(pay_system_response_message)
end

Then /^the payment notification payment log id should contain "(.*?)"$/ do |value|
	@last_response.body[:payment_notification_response][:payments][:payment][:payment_log_id].should include(value)
end
