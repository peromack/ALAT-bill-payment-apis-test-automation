@SubscriberPaymentNotification
Feature: Payment Notification for Airtel
	Perform a Payment Notification Request for Airtel

	Scenario: Perform a AIRTEL Payment Notification with a valid Payment log id and Customer Reference
		When a payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl/>
		<ServiceUsername/>
		<ServicePassword/>
		<FtpUrl/>
		<FtpUsername/>
		<FtpPassword/>
		<Payments>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837333</PaymentLogId>
		<CustReference>BA0127</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>50000.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839088</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>KANO-3</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:08</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>KANO-3</BranchName>
		<BankName>Guaranty Trust Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NN0258  </CustomerName>
		<OtherCustomerInfo>|BA0127</OtherCustomerInfo>
		<ReceiptNo>1423705615</ReceiptNo>
		<CollectionsAccount>20501332******0100</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>50000.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>058</LeadBankCbnCode>
		<LeadBankName>Guaranty Trust Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber>BA0127</CustomerPhoneNumber>
		<DepositorName>BA0127</DepositorName>
		<DepositSlipNumber>4399478</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>MUKHTARI BELLO</Teller>
		</Payment>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837341</PaymentLogId>
		<CustReference>BA0031</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>14200.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839089</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>GTB - Wuse 2</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:10</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>GTB - Wuse 2</BranchName>
		<BankName>First City Monument Bank</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NC8022   </CustomerName>
		<OtherCustomerInfo>|</OtherCustomerInfo>
		<ReceiptNo>1423705616</ReceiptNo>
		<CollectionsAccount>0130257016</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>14200.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>214</LeadBankCbnCode>
		<LeadBankName>First City Monument Bank</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber/>
		<DepositorName/>
		<DepositSlipNumber>06724638</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>Osemeke Chukwuemeka</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the bulk payment notification status "0" should be "0"
		And the bulk payment notification payment log id "0" should be "9837333"
		And the bulk payment notification status "1" should be "0"
		And the bulk payment notification payment log id "1" should be "9837341"	


		Scenario: Perform an AIRTEL Payment Notification with a valid Payment log id and Customer Reference for Zenith Bank (To confirm that ESB changes the Bank Short Name to what Airtel's Bank Code)

		When a payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl/>
		<ServiceUsername/>
		<ServicePassword/>
		<FtpUrl/>
		<FtpUsername/>
		<FtpPassword/>
		<Payments>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>6007333</PaymentLogId>
		<CustReference>BA0127</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>50000.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>ZIB|BRH|AIRTEL|25-08-2014|839088</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>KANO-3</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:08</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>KANO-3</BranchName>
		<BankName>Zenith Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NN0258  </CustomerName>
		<OtherCustomerInfo>|BA0127</OtherCustomerInfo>
		<ReceiptNo>1423705615</ReceiptNo>
		<CollectionsAccount>20501332******0100</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>50000.00</ItemAmount>
		<LeadBankCode>ZIB</LeadBankCode>
		<LeadBankCbnCode>057</LeadBankCbnCode>
		<LeadBankName>Zenith Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>ZIB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber>BA0127</CustomerPhoneNumber>
		<DepositorName>BA0127</DepositorName>
		<DepositSlipNumber>4399478</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>MUKHTARI BELLO</Teller>
		</Payment>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>6007341</PaymentLogId>
		<CustReference>BA0031</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>14200.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>ZIB|BRH|AIRTEL|25-08-2014|839089</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>FCMB - Wuse 2</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:10</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>ZIB - Wuse 2</BranchName>
		<BankName>Zenith Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NC8022   </CustomerName>
		<OtherCustomerInfo>|</OtherCustomerInfo>
		<ReceiptNo>1423705616</ReceiptNo>
		<CollectionsAccount>0130257016</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>14200.00</ItemAmount>
		<LeadBankCode>ZIB</LeadBankCode>
		<LeadBankCbnCode>57</LeadBankCbnCode>
		<LeadBankName>Zenith Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>ZIB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber/>
		<DepositorName/>
		<DepositSlipNumber>06724638</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>Osemeke Chukwuemeka</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the bulk payment notification status "0" should be "0"
		And the bulk payment notification payment log id "0" should be "6007333"
		And the bulk payment notification status "1" should be "0"
		And the bulk payment notification payment log id "1" should be "6007341"	


		Scenario: Perform an AIRTEL Payment Notification with a valid Payment log id and Customer Reference for Equitorial Trust Bank (To confirm that ESB sends Paydirect Bank Short Name as received if there is no matching Airtel Bank Short Name available) 

		When a payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl/>
		<ServiceUsername/>
		<ServicePassword/>
		<FtpUrl/>
		<FtpUsername/>
		<FtpPassword/>
		<Payments>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>6017333</PaymentLogId>
		<CustReference>BA0127</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>50000.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>ETB|BRH|AIRTEL|25-08-2014|839088</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>KANO-3</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:08</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>KANO-3</BranchName>
		<BankName>Equitorial Trust Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NN0258  </CustomerName>
		<OtherCustomerInfo>|BA0127</OtherCustomerInfo>
		<ReceiptNo>1423705615</ReceiptNo>
		<CollectionsAccount>20501332******0100</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>50000.00</ItemAmount>
		<LeadBankCode>ETB</LeadBankCode>
		<LeadBankCbnCode>040</LeadBankCbnCode>
		<LeadBankName>Equitorial Trust Bank</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>ETB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber>BA0127</CustomerPhoneNumber>
		<DepositorName>BA0127</DepositorName>
		<DepositSlipNumber>4399478</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>MUKHTARI BELLO</Teller>
		</Payment>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>7017341</PaymentLogId>
		<CustReference>BA0031</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>14200.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>ETB|BRH|AIRTEL|25-08-2014|839089</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>ETB - Wuse 2</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:10</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>ETB - Wuse 2</BranchName>
		<BankName>Equitorial Trust Bank</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NC8022   </CustomerName>
		<OtherCustomerInfo>|</OtherCustomerInfo>
		<ReceiptNo>1423705616</ReceiptNo>
		<CollectionsAccount>0130257016</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>14200.00</ItemAmount>
		<LeadBankCode>ETB</LeadBankCode>
		<LeadBankCbnCode>040</LeadBankCbnCode>
		<LeadBankName>Equitorial Trust Bank</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>ETB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber/>
		<DepositorName/>
		<DepositSlipNumber>06724638</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>Osemeke Chukwuemeka</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the bulk payment notification status "0" should be "0"
		And the bulk payment notification payment log id "0" should be "6017333"
		And the bulk payment notification status "1" should be "0"
		And the bulk payment notification payment log id "1" should be "7017341"


		Scenario: Perform an AIRTEL Payment Notification with a valid Payment log id and Customer Reference for Unity Bank Plc using an empty Airtel Bank Short Name(To confirm that ESB sends Paydirect Bank Short Name as received when the configured Airtel Bank Short Name is empty)

		When a payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl/>
		<ServiceUsername/>
		<ServicePassword/>
		<FtpUrl/>
		<FtpUsername/>
		<FtpPassword/>
		<Payments>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>6027333</PaymentLogId>
		<CustReference>BA0127</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>50000.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>UNITY|BRH|AIRTEL|25-08-2014|839088</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>KANO-3</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:08</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>KANO-3</BranchName>
		<BankName>Unity Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NN0258  </CustomerName>
		<OtherCustomerInfo>|BA0127</OtherCustomerInfo>
		<ReceiptNo>1423705615</ReceiptNo>
		<CollectionsAccount>20501332******0100</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>50000.00</ItemAmount>
		<LeadBankCode>UNITY</LeadBankCode>
		<LeadBankCbnCode>215</LeadBankCbnCode>
		<LeadBankName>Unity Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>UNITY</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber>BA0127</CustomerPhoneNumber>
		<DepositorName>BA0127</DepositorName>
		<DepositSlipNumber>4399478</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>MUKHTARI BELLO</Teller>
		</Payment>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>6027341</PaymentLogId>
		<CustReference>BA0031</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>14200.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>UNITY|BRH|AIRTEL|25-08-2014|839089</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>UNITY - Wuse 2</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:10</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>UNITY - Wuse 2</BranchName>
		<BankName>Unity Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NC8022   </CustomerName>
		<OtherCustomerInfo>|</OtherCustomerInfo>
		<ReceiptNo>1423705616</ReceiptNo>
		<CollectionsAccount>0130257016</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>14200.00</ItemAmount>
		<LeadBankCode>UNITY</LeadBankCode>
		<LeadBankCbnCode>251</LeadBankCbnCode>
		<LeadBankName>Unity Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>UNITY</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber/>
		<DepositorName/>
		<DepositSlipNumber>06724638</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>Osemeke Chukwuemeka</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the bulk payment notification status "0" should be "0"
		And the bulk payment notification payment log id "0" should be "6027333"
		And the bulk payment notification status "1" should be "0"
		And the bulk payment notification payment log id "1" should be "6027341"


	Scenario: Perform an AIRTEL Payment Notification Request using an invalid amount
		When a payment notification SOAP client POST with:
		"""
        <RouteId>AIRTELFTP</RouteId>
		<ServiceUrl/>
		<ServiceUsername/>
		<ServicePassword/>
		<FtpUrl/>
		<FtpUsername/>
		<FtpPassword/>
		<Payments>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837333</PaymentLogId>
		<CustReference>BA0127</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>0.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839088</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>KANO-3</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:08</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>KANO-3</BranchName>
		<BankName>Guaranty Trust Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NN0258  </CustomerName>
		<OtherCustomerInfo>|BA0127</OtherCustomerInfo>
		<ReceiptNo>1423705615</ReceiptNo>
		<CollectionsAccount>20501332******0100</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>50000.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>058</LeadBankCbnCode>
		<LeadBankName>Guaranty Trust Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber>BA0127</CustomerPhoneNumber>
		<DepositorName>BA0127</DepositorName>
		<DepositSlipNumber>4399478</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>MUKHTARI BELLO</Teller>
		</Payment>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837341</PaymentLogId>
		<CustReference>BA0031</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>14200.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839089</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>GTB - Wuse 2</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:10</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>GTB - Wuse 2</BranchName>
		<BankName>Guarantee Trust Bank</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NC8022   </CustomerName>
		<OtherCustomerInfo>|</OtherCustomerInfo>
		<ReceiptNo>1423705616</ReceiptNo>
		<CollectionsAccount>0130257016</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>14200.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>214</LeadBankCbnCode>
		<LeadBankName>Guarantee Trust Bank</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber/>
		<DepositorName/>
		<DepositSlipNumber>06724638</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>Osemeke Chukwuemeka</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the bulk payment notification status "0" should be "0"
		And the bulk payment notification payment log id "0" should be "9837333"
		And the bulk payment notification status "1" should be "0"
		And the bulk payment notification payment log id "1" should be "9837341"
		

	Scenario: Perform a AIRTEL Payment Notification Request using negative amount
		When a payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl/>
		<ServiceUsername/>
		<ServicePassword/>
		<FtpUrl/>
		<FtpUsername/>
		<FtpPassword/>
		<Payments>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837333</PaymentLogId>
		<CustReference>BA0127</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>-50000.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839088</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>KANO-3</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:08</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>KANO-3</BranchName>
		<BankName>Guaranty Trust Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NN0258  </CustomerName>
		<OtherCustomerInfo>|BA0127</OtherCustomerInfo>
		<ReceiptNo>1423705615</ReceiptNo>
		<CollectionsAccount>20501332******0100</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>50000.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>058</LeadBankCbnCode>
		<LeadBankName>Guaranty Trust Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber>BA0127</CustomerPhoneNumber>
		<DepositorName>BA0127</DepositorName>
		<DepositSlipNumber>4399478</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>MUKHTARI BELLO</Teller>
		</Payment>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837341</PaymentLogId>
		<CustReference>BA0031</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>14200.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839089</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>GTB - Wuse 2</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:10</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>GTB - Wuse 2</BranchName>
		<BankName>Guarantee Trust Bank</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NC8022   </CustomerName>
		<OtherCustomerInfo>|</OtherCustomerInfo>
		<ReceiptNo>1423705616</ReceiptNo>
		<CollectionsAccount>0130257016</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>14200.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>214</LeadBankCbnCode>
		<LeadBankName>Guarantee Trust Bank</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber/>
		<DepositorName/>
		<DepositSlipNumber>06724638</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>Osemeke Chukwuemeka</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the bulk payment notification status "0" should be "0"
		And the bulk payment notification payment log id "0" should be "9837333"
		And the bulk payment notification status "1" should be "0"
		And the bulk payment notification payment log id "1" should be "9837341"
		

		Scenario: Perform a AIRTEL Payment Notification Request without amount
		When a payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl/>
		<ServiceUsername/>
		<ServicePassword/>
		<FtpUrl/>
		<FtpUsername/>
		<FtpPassword/>
		<Payments>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837333</PaymentLogId>
		<CustReference>BA0127</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount></Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839088</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>KANO-3</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:08</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>KANO-3</BranchName>
		<BankName>Guaranty Trust Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NN0258  </CustomerName>
		<OtherCustomerInfo>|BA0127</OtherCustomerInfo>
		<ReceiptNo>1423705615</ReceiptNo>
		<CollectionsAccount>20501332******0100</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>50000.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>058</LeadBankCbnCode>
		<LeadBankName>Guaranty Trust Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber>BA0127</CustomerPhoneNumber>
		<DepositorName>BA0127</DepositorName>
		<DepositSlipNumber>4399478</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>MUKHTARI BELLO</Teller>
		</Payment>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837341</PaymentLogId>
		<CustReference>BA0031</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>14200.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839089</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>GTB - Wuse 2</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:10</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>GTB - Wuse 2</BranchName>
		<BankName>First City Monument Bank</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NC8022   </CustomerName>
		<OtherCustomerInfo>|</OtherCustomerInfo>
		<ReceiptNo>1423705616</ReceiptNo>
		<CollectionsAccount>0130257016</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>14200.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>214</LeadBankCbnCode>
		<LeadBankName>Guarantee Trust Bank</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber/>
		<DepositorName/>
		<DepositSlipNumber>06724638</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>Osemeke Chukwuemeka</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the bulk payment notification status "0" should be "0"
		And the bulk payment notification payment log id "0" should be "9837333"
		And the bulk payment notification status "1" should be "0"
		And the bulk payment notification payment log id "1" should be "9837341"
		
		
	Scenario: Perform a AIRTEL Payment Notification Request without payment log id
		When a payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl/>
		<ServiceUsername/>
		<ServicePassword/>
		<FtpUrl/>
		<FtpUsername/>
		<FtpPassword/>
		<Payments>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId></PaymentLogId>
		<CustReference>BA0127</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>50000.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839088</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>KANO-3</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:08</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>KANO-3</BranchName>
		<BankName>Guaranty Trust Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NN0258  </CustomerName>
		<OtherCustomerInfo>|BA0127</OtherCustomerInfo>
		<ReceiptNo>1423705615</ReceiptNo>
		<CollectionsAccount>20501332******0100</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>50000.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>058</LeadBankCbnCode>
		<LeadBankName>Guaranty Trust Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber>BA0127</CustomerPhoneNumber>
		<DepositorName>BA0127</DepositorName>
		<DepositSlipNumber>4399478</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>MUKHTARI BELLO</Teller>
		</Payment>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837341</PaymentLogId>
		<CustReference>BA0031</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>14200.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839089</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>GTB - Wuse 2</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:10</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>GTB - Wuse 2</BranchName>
		<BankName>Guarantee Trust Bank</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NC8022   </CustomerName>
		<OtherCustomerInfo>|</OtherCustomerInfo>
		<ReceiptNo>1423705616</ReceiptNo>
		<CollectionsAccount>0130257016</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>14200.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>214</LeadBankCbnCode>
		<LeadBankName>Guarantee Trust Bank</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber/>
		<DepositorName/>
		<DepositSlipNumber>06724638</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>Osemeke Chukwuemeka</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the bulk payment notification status "0" should be "0"
		And the bulk payment notification status "1" should be "0"
		And the bulk payment notification payment log id "1" should be "9837341"
		
		
	Scenario: Perform a AIRTEL Payment Notification without Customer Reference
		When a payment notification SOAP client POST with:
		"""
		<RouteId>AIRTELFTP</RouteId>
		<ServiceUrl/>
		<ServiceUsername/>
		<ServicePassword/>
		<FtpUrl/>
		<FtpUsername/>
		<FtpPassword/>
		<Payments>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837333</PaymentLogId>
		<CustReference></CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>50000.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839088</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>KANO-3</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:08</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>KANO-3</BranchName>
		<BankName>Guaranty Trust Bank Plc</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NN0258  </CustomerName>
		<OtherCustomerInfo>|BA0127</OtherCustomerInfo>
		<ReceiptNo>1423705615</ReceiptNo>
		<CollectionsAccount>20501332******0100</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>50000.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>058</LeadBankCbnCode>
		<LeadBankName>Guaranty Trust Bank Plc</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber>BA0127</CustomerPhoneNumber>
		<DepositorName>BA0127</DepositorName>
		<DepositSlipNumber>4399478</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>MUKHTARI BELLO</Teller>
		</Payment>
		<Payment>
		<ProductGroupCode>AIRTELFTP</ProductGroupCode>
		<PaymentLogId>9837341</PaymentLogId>
		<CustReference>BA0031</CustReference>
		<AlternateCustReference>--N/A--</AlternateCustReference>
		<Amount>14200.00</Amount>
		<PaymentStatus>0</PaymentStatus>
		<PaymentMethod>Cash</PaymentMethod>
		<PaymentReference>GTB|BRH|AIRTEL|25-08-2014|839089</PaymentReference>
		<TerminalId/>
		<ChannelName>Bank Branc</ChannelName>
		<Location>GTB - Wuse 2</Location>
		<IsReversal>False</IsReversal>
		<PaymentDate>08/25/2014 10:56:10</PaymentDate>
		<SettlementDate>08/26/2014 00:00:01</SettlementDate>
		<InstitutionId>AIRTEL</InstitutionId>
		<InstitutionName>Airtel</InstitutionName>
		<BranchName>GTB - Wuse 2</BranchName>
		<BankName>Guarantee Trust Bank</BankName>
		<FeeName/>
		<CustomerName>BUS ACTIVATION NC8022   </CustomerName>
		<OtherCustomerInfo>|</OtherCustomerInfo>
		<ReceiptNo>1423705616</ReceiptNo>
		<CollectionsAccount>0130257016</CollectionsAccount>
		<ThirdPartyCode>DEALER</ThirdPartyCode>
		<PaymentItems>
		<PaymentItem>
		<ItemName>Dealer Stock</ItemName>
		<ItemCode>Stock</ItemCode>
		<ItemAmount>14200.00</ItemAmount>
		<LeadBankCode>GTB</LeadBankCode>
		<LeadBankCbnCode>214</LeadBankCbnCode>
		<LeadBankName>Guarantee Trust Bank</LeadBankName>
		<CategoryCode/>
		<CategoryName/>
		<ItemQuantity>1</ItemQuantity>
		</PaymentItem>
		</PaymentItems>
		<BankCode>GTB</BankCode>
		<CustomerAddress/>
		<CustomerPhoneNumber/>
		<DepositorName/>
		<DepositSlipNumber>06724638</DepositSlipNumber>
		<PaymentCurrency>566</PaymentCurrency>
		<OriginalPaymentLogId/>
		<OriginalPaymentReference/>
		<Teller>Osemeke Chukwuemeka</Teller>
		</Payment>
		</Payments>
		"""

		Then the payment notification HTTP status should be "200"
		And the payment notification response code should be "000"
		And the bulk payment notification status "0" should be "0"
		And the bulk payment notification payment log id "0" should be "9837333"
		And the bulk payment notification status "1" should be "0"
		And the bulk payment notification payment log id "1" should be "9837341"