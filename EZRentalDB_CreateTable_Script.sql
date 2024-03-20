CREATE TABLE CREDITCARDPROCESSINGMERCHANTSERVICECOMPANY (
    CreditCardProcessingMerchantServiceCompanyCode TINYINT CHECK(
        CreditCardProcessingMerchantServiceCompanyCode between 1 and 20
    ) PRIMARY KEY,
    CreditCardProcessingMerchantServiceCompanyName VarChar(30) UNIQUE NOT NULL
);

CREATE TABLE CREDITCARDNETWORKCOMPANY (
    CreditCardNetworkCompanyCode TINYINT CHECK(
        CreditCardNetworkCompanyCode between 1 and 20
    ) PRIMARY KEY,
    CreditCardNetworkCompanyName VarChar(30) UNIQUE NOT NULL
);

CREATE TABLE CREDITCARDISSUINGBANK (
    CreditCardIssuingBankCode TINYINT CHECK(
        CreditCardIssuingBankCode between 1 and 20
    ) PRIMARY KEY,
    CreditCardIssuingBankName VarChar(30) UNIQUE NOT NULL
);

CREATE TABLE CREDITCARDCORPORATEMERCHANTBANK (
    CreditCardCorporateMerchantBankCode TINYINT CHECK(
        CreditCardCorporateMerchantBankCode between 1 and 10
    ) PRIMARY KEY,
    CreditCardCorparateMerchantBankName VarChar(30) UNIQUE NOT NULL
);

Create TABLE USSTATE (
    StateID TINYINT CHECK(
        StateID between 1 and 75
    ) PRIMARY KEY,
    StateCode2Char CHAR(2) UNIQUE NOT NULL,
    StateName VARCHAR(30) UNIQUE NOT NULL,
);

Create TABLE COUNTRY(
    CountryID TINYINT CHECK(
        CountryID between 1 and 250
    ) PRIMARY KEY,
    CountryCode2Char CHAR(2) UNIQUE NOT NULL,
    CountryCode3Char CHAR(3) UNIQUE NOT NULL,
    CountryName VARCHAR(100) UNIQUE NOT NULL,
);

CREATE TABLE CREDITCARD (
    CreditCardNumber VARCHAR(16) PRIMARY KEY,
    CreditCardOwnerName VARCHAR(100) NOT NULL,
    CreditCardProcessingMerchantServiceCompanyCode TINYINT NOT NULL,
    CreditCardNetworkCompanyCode TINYINT NOT NULL,
    CreditCardIssuingBankCode TINYINT NOT NULL,
    CreditCardCorporateMerchantBankCode TINYINT NOT NULL,
    ExpDate DATE NOT NULL,
    AddressLine1 VARCHAR(150) NOT NULL,
    AddressLine2 VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    StateCode CHAR(2) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    CreditCardLimit DECIMAL(8, 2) NOT NULL,
    CreditCardAvailableCredit DECIMAL(8, 2) NOT NULL,
    ActivationStatus BIT NOT NULL,
    CONSTRAINT fk_CreditCardInstance_CreditCardProcessingMerchantService FOREIGN KEY (CreditCardProcessingMerchantServiceCompanyCode) REFERENCES CREDITCARDPROCESSINGMERCHANTSERVICECOMPANY (CreditCardProcessingMerchantServiceCompanyCode) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_CreditCardInstance_CreditCardNetworkCompany FOREIGN KEY (CreditCardNetworkCompanyCode) REFERENCES CREDITCARDNETWORKCOMPANY (CreditCardNetworkCompanyCode) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_CreditCardInstance_CreditCardIssuingBank FOREIGN KEY (CreditCardIssuingBankCode) REFERENCES CREDITCARDISSUINGBANK (CreditCardIssuingBankCode) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_CreditCardInstance_CreditCardCorporateMerchantBank FOREIGN KEY (CreditCardCorporateMerchantBankCode) REFERENCES CREDITCARDCORPORATEMERCHANTBANK(CreditCardCorporateMerchantBankCode) ON DELETE CASCADE ON UPDATE CASCADE
);