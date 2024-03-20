Insert into CREDITCARDPROCESSINGMERCHANTSERVICECOMPANY
(CreditCardProcessingMerchantServiceCompanyCode,CreditCardProcessingMerchantServiceCompanyName)
values
(1,'Stax by Fattmerchant'),
(2,'Helcim'),
(3,'Dharma Merchant Services'),
(4,'Payment Depot'),
(5,'National Processing'),
(6,'Block'),
(7,'IntuIt Quickbooks'),
(8,'PayPal'),
(9,'Stripe'),
(10,'Flagship Merchant Services'),
(11,'Clover');


INSERT INTO 
CREDITCARDNETWORKCOMPANY
(CreditCardNetworkCompanyCode,CreditCardNetworkCompanyName)
VALUES 
(1,'American Express'),
(2,'Visa'),
(3,'Master Card'),
(4,'Discover'),
(5,'DinersClub'),
(6,'Interlink'),
(7,'Star'),
(8,'Accel'),
(9,'Interac'),
(10,'Visa Ready Link'),
(11,'Pulse'),
(12,'JCB (Japan Credit Bureau)'),
(13,'Rupay');

INSERT INTO
CREDITCARDISSUINGBANK
(CreditCardIssuingBankCode,CreditCardIssuingBankName)
VALUES
(1, 'American Express'),
(2, 'Bank of America'),
(3, 'Barclays'),
(4, 'Capital One'),
(5, 'Chase'),
(6, 'Citi'),
(7, 'Discover'),
(8, 'Synchrony Bank'),
(9, 'U.S. Bank'),
(10, 'Wells Fargo');

INSERT INTO 
CREDITCARDCORPORATEMERCHANTBANK
(CreditCardCorporateMerchantBankCode,CreditCardCorparateMerchantBankName)
VALUES
(1,'Chase'),
(2, 'Citi'),
(3,'Capital One');

INSERT INTO CREDITCARD
(CreditCardNumber,CreditCardOwnerName,
CreditCardProcessingMerchantServiceCompanyCode,CreditCardNetworkCompanyCode,
CreditCardIssuingBankCode,CreditCardCorporateMerchantBankCode,ExpDate,
AddressLine1,AddressLine2,City,StateCode,ZipCode,Country,
CreditCardLimit,CreditCardAvailableCredit,ActivationStatus
)
VALUES
(1111111111111111,'Ryan Brown',8,2,2,1,'01/01/2025',
'111 Jay Street','Suite 101', 'Freehold','NJ','17711','USA',
3000.00,1000.00,1),
(2222222222222221,'Alex Rodriguez',7,6,4,2,'02/02/2027',
'222 Glenwood Rd', 'Apt 6H','Brooklyn','NY', '11222','USA',
10000.00,8000.00,1),
(2222222222222222,'Alex Rodriguez',8,2,1,2,'02/02/2027',
'222 Glenwood Rd', 'Apt 6H','Brooklyn','NY', '11222','USA',
10000.00,8000.00,1),
(2222222222222223,'Alex Rodriguez',11,4,2,3,'02/02/2027',
'222 Glenwood Rd', 'Apt 6H','Brooklyn','NY', '11222','USA',
10000.00,8000.00,1),
(3333333333333333,'Michelle Apicotta',1,3,5,1,'03/03/2024',
'333 5th Avenue', NULL, 'New York','NY', '10033', 'USA',
3000.00,3000.00,0),
(4444444444444444,'Mike Greene', 6, 11,8,3,'04/04/2029',
'444 Flatlands Ave','3rd Floor', 'Allentown','PA','14344','USA',
5000.00,3000.00,1),
(5555555555555555,'Sandra Lopez', 8, 7, 1, 1,'05/05/2030',
'6th Avenue', ' Apt 4f', 'Jersey City','NJ','07032','USA',
10000.00,500.00,1);

INSERT INTO CREDITCARDPROCESSINGMERCHANTSERVICECOMPANY
VALUES (12,'US Merchant Processing Services');




update CREDITCARD
set CreditCardOwnerName='Sandra German-Lopez',
	CreditCardProcessingMerchantServiceCompanyCode = 4,
	CreditCardNetworkCompanyCode =2,
	CreditCardIssuingBankCode=3,
	CreditCardCorporateMerchantBankCode=2,
	ExpDate='05/05/2032',
	AddressLine1 = '123 Villa Lane',
	AddressLine2=null,
	City='Nueva Villa',
	StateCode= 'PA',
	ZipCode ='14132',
	Country= 'USA',
	CreditCardLimit=250000.00,
	CreditCardAvailableCredit=245000.00,
	ActivationStatus=1
WHERE   CreditCardNumber ='5555555555555555';

UPDATE CREDITCARD
SET CreditCardOwnerName='Darwhin De Jesus Gomez',
	AddressLine1 = '188 Warwick Street',
	AddressLine2='1st Floor',
	City='Brooklyn',
	StateCode= 'NY',
	ZipCode ='11207',
	Country= 'USA'
	WHERE CreditCardNumber ='5555555555555555';

UPDATE CREDITCARD
SET CreditCardProcessingMerchantServiceCompanyCode = 12 
WHERE CreditCardNumber='1111111111111111';

DELETE FROM CREDITCARD
WHERE CreditCardNumber = '3333333333333333';

INSERT INTO CREDITCARDPROCESSINGMERCHANTSERVICECOMPANY
VALUES (13,'Holding');

UPDATE CREDITCARD 
SET CreditCardProcessingMerchantServiceCompanyCode=13
WHERE CreditCardProcessingMerchantServiceCompanyCode=11;

DELETE FROM CREDITCARDPROCESSINGMERCHANTSERVICECOMPANY
WHERE CreditCardProcessingMerchantServiceCompanyCode=11;

