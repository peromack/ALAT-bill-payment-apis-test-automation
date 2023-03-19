@DealerPaymentNotification
Feature: Dealer Payment Notification for Airtel
	Perform a Payment Notification Request for Airtel

Scenario: Perform an AIRTEL Dealer Payment Notification - Dealer Payment Item Code is in CAPs

		When a dealer payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl></ServiceUrl>
		<ServiceUsername></ServiceUsername>
		<ServicePassword></ServicePassword>
		<FtpUrl></FtpUrl>
		<FtpUsername></FtpUsername>
		<FtpPassword></FtpPassword>
		<Payments><Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>A200800</PaymentLogId>
		<CustReference>08022221412</CustReference>
		<AlternateCustReference></AlternateCustReference>
		<Amount>5600.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>FBN|BRH|AIRTEL|28-01-2015|009652</PaymentReference>
		<TerminalId></TerminalId>
		<ChannelName>Bank Branc</ChannelName>
		<Location>ABAJI</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>01/28/2015 16:39:51</PaymentDate>
		<SettlementDate>01/29/2015 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>AirTel</InstitutionName>
		<BranchName>ABAJI</BranchName>
		<BankName>First Bank of Nigeria Plc</BankName>
		<FeeName></FeeName>
		<CustomerName>OPE ADEOYE</CustomerName>
		<OtherCustomerInfo>|08022221412</OtherCustomerInfo>
		<ReceiptNo>1502846081</ReceiptNo>
		<CollectionsAccount>1234567890</CollectionsAccount>
		<ThirdPartyCode></ThirdPartyCode>
		<PaymentItems><PaymentItem>
		<ItemName>Airtel Stock (Bulk)</ItemName>
		<ItemCode>DEALER</ItemCode>
		<ItemAmount>5600.00</ItemAmount>
		<LeadBankCode>FBN</LeadBankCode>
		<LeadBankCbnCode>011</LeadBankCbnCode>
		<LeadBankName>First Bank of Nigeria Plc</LeadBankName>
		<CategoryCode>A001</CategoryCode>
		<CategoryName>Bulk</CategoryName>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem></PaymentItems>
		<BankCode>FBN</BankCode>
		<CustomerAddress></CustomerAddress>
		<CustomerPhoneNumber>08022221412</CustomerPhoneNumber>
		<DepositorName>Peter Daniels</DepositorName>
		<DepositSlipNumber>10012</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId></OriginalPaymentLogId>
		<OriginalPaymentReference></OriginalPaymentReference>
		<Teller>ABAJI1 ABAJI</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the payment notification status should be "0"
		And the payment notification payment log id should contain "A"


	Scenario: Perform an AIRTEL Dealer Payment Notification - Dealer Payment Item Code starts with Capital D

		When a dealer payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl></ServiceUrl>
		<ServiceUsername></ServiceUsername>
		<ServicePassword></ServicePassword>
		<FtpUrl></FtpUrl>
		<FtpUsername></FtpUsername>
		<FtpPassword></FtpPassword>
		<Payments><Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>B200800</PaymentLogId>
		<CustReference>08022221412</CustReference>
		<AlternateCustReference></AlternateCustReference>
		<Amount>5600.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>ZIB|BRH|AIRTEL|28-01-2015|009652</PaymentReference>
		<TerminalId></TerminalId>
		<ChannelName>Bank Branc</ChannelName>
		<Location>ABAJI</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>01/28/2015 16:39:51</PaymentDate>
		<SettlementDate>01/29/2015 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>AirTel</InstitutionName>
		<BranchName>ABAJI</BranchName>
		<BankName>Zenith Bank Plc</BankName>
		<FeeName></FeeName>
		<CustomerName>OPE ADEOYE</CustomerName>
		<OtherCustomerInfo>|08022221412</OtherCustomerInfo>
		<ReceiptNo>1502846081</ReceiptNo>
		<CollectionsAccount>1234567890</CollectionsAccount>
		<ThirdPartyCode></ThirdPartyCode>
		<PaymentItems><PaymentItem>
		<ItemName>Airtel Stock (Bulk)</ItemName>
		<ItemCode>Dealer</ItemCode>
		<ItemAmount>5600.00</ItemAmount>
		<LeadBankCode>ZIB</LeadBankCode>
		<LeadBankCbnCode>057</LeadBankCbnCode>
		<LeadBankName>Zenith Bank Plc</LeadBankName>
		<CategoryCode>A001</CategoryCode>
		<CategoryName>Bulk</CategoryName>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem></PaymentItems>
		<BankCode>FBN</BankCode>
		<CustomerAddress></CustomerAddress>
		<CustomerPhoneNumber>08022221412</CustomerPhoneNumber>
		<DepositorName>Peter Daniels</DepositorName>
		<DepositSlipNumber>10014</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId></OriginalPaymentLogId>
		<OriginalPaymentReference></OriginalPaymentReference>
		<Teller>ABAJI1 ABAJI</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the payment notification status should be "0"
		And the payment notification payment log id should contain "B"	


	Scenario: Perform an AIRTEL Dealer Payment Notification - Dealer Payment Item Code starts with Capital D

		When a dealer payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl></ServiceUrl>
		<ServiceUsername></ServiceUsername>
		<ServicePassword></ServicePassword>
		<FtpUrl></FtpUrl>
		<FtpUsername></FtpUsername>
		<FtpPassword></FtpPassword>
		<Payments><Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>C200800</PaymentLogId>
		<CustReference>08022221412</CustReference>
		<AlternateCustReference></AlternateCustReference>
		<Amount>5600.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>ZIB|BRH|AIRTEL|28-01-2015|009652</PaymentReference>
		<TerminalId></TerminalId>
		<ChannelName>Bank Branc</ChannelName>
		<Location>ABAJI</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>01/28/2015 16:39:51</PaymentDate>
		<SettlementDate>01/29/2015 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>AirTel</InstitutionName>
		<BranchName>ABAJI</BranchName>
		<BankName>Zenith Bank Plc</BankName>
		<FeeName></FeeName>
		<CustomerName>OPE ADEOYE</CustomerName>
		<OtherCustomerInfo>|08022221412</OtherCustomerInfo>
		<ReceiptNo>1502846081</ReceiptNo>
		<CollectionsAccount>1234567890</CollectionsAccount>
		<ThirdPartyCode></ThirdPartyCode>
		<PaymentItems><PaymentItem>
		<ItemName>Airtel Stock (Bulk)</ItemName>
		<ItemCode>dealer</ItemCode>
		<ItemAmount>5600.00</ItemAmount>
		<LeadBankCode>ZIB</LeadBankCode>
		<LeadBankCbnCode>057</LeadBankCbnCode>
		<LeadBankName>Zenith Bank Plc</LeadBankName>
		<CategoryCode>A001</CategoryCode>
		<CategoryName>Bulk</CategoryName>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem></PaymentItems>
		<BankCode>FBN</BankCode>
		<CustomerAddress></CustomerAddress>
		<CustomerPhoneNumber>08022221412</CustomerPhoneNumber>
		<DepositorName>Peter Daniels</DepositorName>
		<DepositSlipNumber>10014</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId></OriginalPaymentLogId>
		<OriginalPaymentReference></OriginalPaymentReference>
		<Teller>ABAJI1 ABAJI</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the payment notification status should be "0"
		And the payment notification payment log id should contain "C"	


	Scenario: Perform an AIRTEL Dealer Payment Notification - A newline character in the alternateCustReference field
	NB: To check that ESB trims all csv entries before sending to Airtel.

		When a dealer payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl></ServiceUrl>
		<ServiceUsername></ServiceUsername>
		<ServicePassword></ServicePassword>
		<FtpUrl></FtpUrl>
		<FtpUsername></FtpUsername>
		<FtpPassword></FtpPassword>
		<Payments><Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>D200800</PaymentLogId>
		<CustReference>08022221412</CustReference>
		<AlternateCustReference>
		</AlternateCustReference>
		<Amount>5600.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>ZIB|BRH|AIRTEL|28-01-2015|009652</PaymentReference>
		<TerminalId></TerminalId>
		<ChannelName>Bank Branc</ChannelName>
		<Location>ABAJI</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>01/28/2015 16:39:51</PaymentDate>
		<SettlementDate>01/29/2015 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>AirTel</InstitutionName>
		<BranchName>ABAJI</BranchName>
		<BankName>Zenith Bank Plc</BankName>
		<FeeName></FeeName>
		<CustomerName>OPE ADEOYE</CustomerName>
		<OtherCustomerInfo>|08022221412</OtherCustomerInfo>
		<ReceiptNo>1502846081</ReceiptNo>
		<CollectionsAccount>1234567890</CollectionsAccount>
		<ThirdPartyCode></ThirdPartyCode>
		<PaymentItems><PaymentItem>
		<ItemName>Airtel Stock (Bulk)</ItemName>
		<ItemCode>dealer</ItemCode>
		<ItemAmount>5600.00</ItemAmount>
		<LeadBankCode>ZIB</LeadBankCode>
		<LeadBankCbnCode>057</LeadBankCbnCode>
		<LeadBankName>Zenith Bank Plc</LeadBankName>
		<CategoryCode>A001</CategoryCode>
		<CategoryName>Bulk</CategoryName>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem></PaymentItems>
		<BankCode>FBN</BankCode>
		<CustomerAddress></CustomerAddress>
		<CustomerPhoneNumber>08022221412</CustomerPhoneNumber>
		<DepositorName>Peter Daniels</DepositorName>
		<DepositSlipNumber>10014</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId></OriginalPaymentLogId>
		<OriginalPaymentReference></OriginalPaymentReference>
		<Teller>ABAJI1 ABAJI</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the payment notification status should be "0"
		And the payment notification payment log id should contain "D"