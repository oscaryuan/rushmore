
USE [FDW]
GO

/****** Object:  Table [dbo].[BaseReportDetails]    Script Date: 6/1/2016 10:17:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Mkg_BaseReport](
	[ProdCount] [varchar](23) NULL,
	[Product] [text] NULL,
	[Mailing] [int] NULL,
	[CustomerStatus] [int] NULL,
	[PimmsMailing] [int] NULL,
	[Phone] [int] NULL,
	[PimmsPhone] [int] NULL,
	[Email] [int] NULL,
	[PimmsEmail] [int] NULL,
	[Customer_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[Mkg_BaseReportDetails](
	[ProdCount] [int] NULL,
	[Product] [text] NULL,
	[CustomerStatus] [int] NULL,
	[Customer_ID] [int] NULL,
	[CAT] [varchar](50) NULL,
	[Equipment] [varchar](50) NULL,
	[Status] [int] NULL,
	[Full Name] [varchar](8000) NULL,
	[Email_Address] [varchar](8000) NULL,
	[User Defined] [varchar](159) NULL,
	[Banner_Customer_Code] [varchar](150) NULL,
	[First_Name] [varchar](8000) NULL,
	[Last_Name] [varchar](8000) NULL,
	[Banner_Premise_Code] [varchar](8000) NULL,
	[Address1] [varchar](8000) NULL,
	[Address2] [varchar](8000) NULL,
	[City] [varchar](8000) NULL,
	[Province_State] [varchar](8000) NULL,
	[Postal_Code] [varchar](8000) NULL,
	[Customer_Since] [datetime2](0) NULL,
	[Phone_Home_Number] [varchar](8000) NULL,
	[Phone_Other_Number] [varchar](8000) NULL,
	[Phone_Work_Number] [varchar](8000) NULL,
	[FSA] [varchar](3) NULL,
	[Communication_Language] [varchar](4) NULL,
	[Billing_Type] [varchar](1) NULL,
	[GECA_Code] [varchar](6) NULL,
	[Branch_Name] [nvarchar](255) NULL,
	[Email_Contact] [varchar](5) NULL,
	[Mail_Contact] [varchar](4) NULL,
	[Phone_Contact] [varchar](5) NULL,
	[Equipcombo] [text] NULL,
	[EquipCount] [int] NULL,
	[Equipment2] [varchar](5) NULL,
	[Equipcombo2] [text] NULL,
	[Premise_ID] [int] NULL,
	[Productcombo] [text] NULL,
	[CATCount] [int] NULL,
	[Banner_Cust_Code_Owner] [numeric](9, 0) NULL,
	[CATcombo2] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


CREATE TABLE [dbo].[Mkg_Dim_Customer](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUST_CODE] [nvarchar](210) NULL,
	[BANNER_CUST_CODE] [varchar](150) NULL,
	[SOLOMON_CustId] [varchar](150) NULL,
	[SuppressEmail] [varchar](40) NULL,
	[SuppressHomeTelephone] [varchar](40) NULL,
	[SuppressOtherTelephone] [varchar](40) NULL,
	[SuppressWorkTelephone] [varchar](40) NULL,
	[FIRST_NAME] [varchar](60) NULL,
	[LAST_NAME] [varchar](80) NULL,
	[UCVHTEL_PHONE_AREA] [varchar](30) NULL,
	[UCVHTEL_PHONE_NUMBER] [varchar](7) NULL,
	[UCVOTEL_PHONE_AREA] [varchar](3) NULL,
	[UCVOTEL_PHONE_NUMBER] [varchar](7) NULL,
	[UCVWTEL_PHONE_AREA] [varchar](3) NULL,
	[UCVWTEL_PHONE_NUMBER] [varchar](7) NULL,
	[CustomerSince] [datetime2](0) NULL,
	[UCBPREM_LANG_CODE] [varchar](4) NULL,
	[UCRACCT_BILL_PRES_TYPE] [varchar](1) NULL,
	[UCBCUST_OPT_MKTG_IND] [varchar](1) NULL,
	[Email] [varchar](80) NULL,
	[HomeTelephone] [varchar](8000) NULL,
	[OtherTelephone] [varchar](8000) NULL,
	[WorkTelephone] [varchar](8000) NULL,
	[BANNER_CUST_CODE_OWNER] [numeric](9, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[Mkg_Dim_Equipment](
	[Equipment_ID] [int] IDENTITY(1,1) NOT NULL,
	[Equipment] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Equipment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


CREATE TABLE [dbo].[Mkg_Dim_Premise](
	[Premise_ID] [int] IDENTITY(1,1) NOT NULL,
	[PREM_CODE] [nvarchar](300) NULL,
	[BANNER_PREM_CODE] [varchar](7) NULL,
	[SOLOMON_ShipToId] [varchar](150) NULL,
	[UCVPADR_ADDRESS1] [varchar](60) NULL,
	[UCVPADR_UNIT] [varchar](60) NULL,
	[UCVPADR_CITY] [varchar](30) NULL,
	[UCVPADR_STATE] [varchar](3) NULL,
	[UCVPADR_ZIP] [varchar](10) NULL,
	[UCBPREM_GECA_CODE] [varchar](6) NULL,
	[UCBPREM_LANG_CODE] [varchar](4) NULL,
	[UCRACCT_BILL_PRES_TYPE] [varchar](1) NULL,
	[SOLOMON_BranchID] [varchar](10) NULL,
	[SuppressPostal] [varchar](40) NULL,
	[BranchCode] [nvarchar](255) NULL,
	[BranchName] [nvarchar](255) NULL,
 CONSTRAINT [PK__Dim_Prem__BC6A398DC9AE0A1F] PRIMARY KEY CLUSTERED 
(
	[Premise_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[Mkg_Dim_Product](
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[Mkg_EGroup](
	[EquipGroup] [varchar](50) NULL,
	[B_PTYP_CODE] [varchar](10) NULL,
	[S_EquipType] [varchar](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


CREATE TABLE [dbo].[Mkg_Fact_Base](
	[Customer_ID] [int] NULL,
	[Premise_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[Equipment_ID] [int] NULL,
	[Status] [int] NULL,
	[DS] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[Mkg_MappingGecaToBranch](
	[GECA] [nvarchar](255) NULL,
	[Branch1] [nvarchar](255) NULL,
	[Branch2] [nvarchar](255) NULL,
	[BranchName] [nvarchar](255) NULL
) ON [PRIMARY]

GO


use [FDW_STG]
GO

/****** Object:  Table [dbo].[BaseReportDetails]    Script Date: 6/1/2016 10:17:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO



CREATE TABLE [dbo].[Mkg_Staging_Banner](
	[URRSHIS_PREM_CODE] [varchar](7) NULL,
	[URRSHIS_CUST_CODE] [numeric](9, 0) NULL,
	[URRSHIS_STYP_CODE] [varchar](4) NULL,
	[URRSHIS_ACTN_CODE] [varchar](4) NULL,
	[URRSHIS_INVN_CODE] [varchar](20) NULL,
	[URRSHIS_SRAT_CODE] [varchar](4) NULL,
	[URRSHIS_ORIGIN] [varchar](8) NULL,
	[S_PMTypeId] [varchar](2) NULL,
	[S_SWOgroup] [varchar](10) NULL,
	[S_EquipType] [varchar](10) NULL,
	[CommercialFlag] [smallint] NULL,
	[B_PTYP_CODE] [varchar](4) NULL,
	[UIBOTIV_CODE] [varchar](20) NULL,
	[URRSHIS_ACTION_DATE] [datetime2](0) NULL,
	[CAT] [nvarchar](6) NULL,
	[B_BUYOUT_PRICE] [numeric](12, 2) NULL,
	[B_BUYOUT_DATE] [datetime2](7) NULL,
	[EquipGroup] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



CREATE TABLE [dbo].[Mkg_Staging_Banner_Account](
	[UCRACCT_PREM_CODE] [numeric](9, 0) NULL,
	[UCBCUST_FIRST_NAME] [varchar](15) NULL,
	[UCBCUST_LAST_NAME] [varchar](60) NULL,
	[UCBCUST_EMAIL_ADDR] [varchar](49) NULL,
	[UCVPADR_ADDRESS1] [varchar](56) NULL,
	[UCVPADR_UNIT] [varchar](13) NULL,
	[UCVPADR_CITY] [varchar](20) NULL,
	[UCVPADR_STATE] [varchar](3) NULL,
	[UCVPADR_ZIP] [varchar](10) NULL,
	[UCVHTEL_PHONE_AREA] [varchar](3) NULL,
	[UCVHTEL_PHONE_NUMBER] [varchar](7) NULL,
	[UCVOTEL_PHONE_AREA] [varchar](3) NULL,
	[UCVOTEL_PHONE_NUMBER] [varchar](7) NULL,
	[UCVWTEL_PHONE_AREA] [varchar](3) NULL,
	[UCVWTEL_PHONE_NUMBER] [varchar](7) NULL,
	[UCBPREM_GECA_CODE] [varchar](6) NULL,
	[UCBPREM_LANG_CODE] [varchar](4) NULL,
	[UCRACCT_BILL_PRES_TYPE] [varchar](1) NULL,
	[UCRACCT_CUST_CODE] [numeric](9, 0) NULL,
	[UCBCUST_OPT_MKTG_IND] [varchar](1) NULL,
	[UCBPREM_CUST_CODE_OWNER] [numeric](9, 0) NULL,
	[UCRACCT_ESTABLISHED_DATE] [datetime2](0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



CREATE TABLE [dbo].[Mkg_Staging_Banner_History](
	[URRSHIS_CUST_CODE] [numeric](9, 0) NULL,
	[URRSHIS_PREM_CODE] [varchar](7) NULL,
	[URRSHIS_STYP_CODE] [varchar](4) NULL,
	[URRSHIS_INVN_CODE] [varchar](20) NULL,
	[URRSHIS_SRAT_CODE] [varchar](4) NULL,
	[URRSHIS_ACTN_CODE] [varchar](4) NULL,
	[URRSHIS_ORIGIN] [varchar](8) NULL,
	[URRSHIS_ACTION_DATE] [datetime2](0) NULL,
	[URRSHIS_ACTIVITY_DATE] [datetime2](0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


--CREATE TABLE [dbo].[Mkg_Staging_Banner_Inventory](
--	[B_PTYP_CODE] [varchar](4) NULL,
--	[UIBOTIV_CODE] [varchar](20) NULL,
--	[UIBOTIV_REPORT_DATE] [datetime] NULL,
--	[B_STATUS_CODE] [varchar](1) NULL,
--	[B_BUYOUT_DATE] [datetime] NULL,
--	[B_BUYOUT_PRICE] [numeric](12, 2) NULL,
--	[UIBOTIV_VTYP_CODE] [varchar](4) NULL
--) ON [PRIMARY]

--GO

--SET ANSI_PADDING OFF
--GO


CREATE TABLE [dbo].[Mkg_Staging_Inventory](
	[B_PTYP_CODE] [varchar](4) NULL,
	[UIBOTIV_CODE] [varchar](20) NULL,
	[UIBOTIV_REPORT_DATE] [datetime] NULL,
	[B_STATUS_CODE] [varchar](1) NULL,
	[B_BUYOUT_DATE] [datetime2](7) NULL,
	[B_BUYOUT_PRICE] [numeric](12, 2) NULL,
	[UIBOTIV_VTYP_CODE] [varchar](4) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


CREATE TABLE [dbo].[Mkg_Staging_Merge](
	[BANNER_PREM_CODE] [varchar](7) NULL,
	[EquipGroup] [varchar](50) NULL,
	[Status] [int] NULL,
	[BANNER_CUST_CODE] [varchar](150) NULL,
	[CAT] [varchar](50) NULL,
	[FIRST_NAME] [varchar](60) NULL,
	[LAST_NAME] [varchar](80) NULL,
	[EMAIL] [varchar](80) NULL,
	[UCVPADR_ADDRESS1] [varchar](60) NULL,
	[UCVPADR_UNIT] [varchar](60) NULL,
	[UCVPADR_CITY] [varchar](30) NULL,
	[UCVPADR_STATE] [varchar](3) NULL,
	[UCVPADR_ZIP] [varchar](10) NULL,
	[UCVHTEL_PHONE_AREA] [varchar](30) NULL,
	[UCVHTEL_PHONE_NUMBER] [varchar](7) NULL,
	[UCVOTEL_PHONE_AREA] [varchar](3) NULL,
	[UCVOTEL_PHONE_NUMBER] [varchar](7) NULL,
	[UCVWTEL_PHONE_AREA] [varchar](3) NULL,
	[UCVWTEL_PHONE_NUMBER] [varchar](7) NULL,
	[UCBPREM_GECA_CODE] [varchar](6) NULL,
	[UCBPREM_LANG_CODE] [varchar](4) NULL,
	[UCRACCT_BILL_PRES_TYPE] [varchar](1) NULL,
	[UCBCUST_OPT_MKTG_IND] [varchar](1) NULL,
	[UCRACCT_PREM_CODE2] [varchar](150) NULL,
	[UCRACCT_CUST_CODE2] [varchar](150) NULL,
	[SOLOMON_CustId] [varchar](150) NULL,
	[SOLOMON_ShipToId] [varchar](150) NULL,
	[SOLOMON_Phone] [varchar](30) NULL,
	[SOLOMON_BranchID] [varchar](10) NULL,
	[DS] [nvarchar](1) NULL,
	[S_ShipToId2] [nvarchar](300) NULL,
	[S_CustId2] [nvarchar](210) NULL,
	[CustomerSince] [datetime2](0) NULL,
	[UCBPREM_CUST_CODE_OWNER] [numeric](9, 0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


--CREATE TABLE [dbo].[Mkg_Staging_PIMS](
--	[P_OriginalCustomerCode] [varchar](40) NULL,
--	[P_EmailAddress] [varchar](40) NULL,
--	[P_SuppressTelephone] [varchar](40) NULL,
--	[P_SuppressPostal] [varchar](40) NULL,
--	[P_SuppressElectronic] [varchar](40) NULL,
--	[PhoneNumber] [varchar](40) NULL,
--	[MailAddress] [varchar](100) NULL
--) ON [PRIMARY]

--GO

--SET ANSI_PADDING OFF
--GO


CREATE TABLE [dbo].[Mkg_Staging_Solomon](
	[S_CustId] [varchar](150) NULL,
	[S_ShipToId] [varchar](150) NULL,
	[S_Phone] [varchar](30) NULL,
	[S_Name] [varchar](60) NULL,
	[S_address] [varchar](150) NULL,
	[S_email] [varchar](80) NULL,
	[CAT] [varchar](9) NULL,
	[Equipment] [varchar](14) NULL,
	[STATUS] [int] NULL,
	[S_LastName] [varchar](80) NULL,
	[S_FirstName] [varchar](60) NULL,
	[S_Addr1] [varchar](60) NULL,
	[S_Addr2] [varchar](60) NULL,
	[S_City] [varchar](30) NULL,
	[S_State] [varchar](3) NULL,
	[S_Zip] [varchar](10) NULL,
	[S_BranchID] [varchar](10) NULL,
	[BS_PREM_CODE] [varchar](7) NULL,
	[BS_CUST_CODE] [varchar](150) NULL,
	[DS] [nvarchar](1) NULL,
	[S_ShipToId2] [nvarchar](300) NULL,
	[S_CustId2] [nvarchar](210) NULL,
	[S_CustomerSince] [datetime2](0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [FDW]
GO

/****** Object:  Table [dbo].[BaseReportDetails]    Script Date: 6/1/2016 10:17:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO


create FUNCTION [dbo].[ufn_mkg_SplitStrings]
(
    @List       NVARCHAR(MAX),
    @Delimiter  NVARCHAR(255)
)
RETURNS TABLE
AS
    RETURN (SELECT Number = ROW_NUMBER() OVER (ORDER BY Number),
        Item FROM (SELECT Number, Item = LTRIM(RTRIM(SUBSTRING(@List, Number, 
        CHARINDEX(@Delimiter, @List + @Delimiter, Number) - Number)))
    FROM (SELECT ROW_NUMBER() OVER (ORDER BY s1.[object_id])
        FROM sys.all_objects AS s1 CROSS APPLY sys.all_objects) AS n(Number)
    WHERE Number <= CONVERT(INT, LEN(@List))
        AND SUBSTRING(@Delimiter + @List, Number, 1) = @Delimiter
    ) AS y);
GO



CREATE function [dbo].[ufn_mkg_incancate]
( @in       NVARCHAR(MAX),
@P1 NVARCHAR(200),
@P2 NVARCHAR(200),
@P3 NVARCHAR(200)
)

returns NVARCHAR(max)
as
begin
DECLARE @LoopCounter2 INT
DECLARE @MaxRecords2 INT
DECLARE @ConditionString2 as NVARCHAR(max)
SET @ConditionString2=''
SET @LoopCounter2 = 1

SET @MaxRecords2 = (Select MAX(Number) from ufn_mkg_SplitStrings(@in, ','))

WHILE  ( @LoopCounter2 IS NOT NULL AND  @LoopCounter2 <= @MaxRecords2)
	BEGIN		
		SET @ConditionString2 = CASE WHEN @LoopCounter2 = 1 THEN @P1 + (Select Item FROM ufn_mkg_SplitStrings(@in, ',') WHERE Number = @LoopCounter2) + @P2		
		ELSE
			@ConditionString2 + @P3 + (Select Item FROM ufn_mkg_SplitStrings(@in, ',') WHERE Number =@LoopCounter2) + @P2
		END		
		SET @LoopCounter2 = @LoopCounter2 + 1
		
	END

return @ConditionString2  

end


GO


CREATE function [dbo].[ufn_mkg_incancateCount]
( @in       NVARCHAR(MAX),
@P1 NVARCHAR(200),
@P2 NVARCHAR(200),
@P3 NVARCHAR(200)
)

returns NVARCHAR(max)
as
begin
DECLARE @LoopCounter2 INT
DECLARE @MaxRecords2 INT
DECLARE @ConditionString2 as NVARCHAR(max)
SET @ConditionString2=''
SET @LoopCounter2 = 1

SET @MaxRecords2 = (Select MAX(Number) from ufn_mkg_SplitStrings(@in, ','))

WHILE  ( @LoopCounter2 IS NOT NULL AND  @LoopCounter2 <= @MaxRecords2)
	BEGIN		
		SET @ConditionString2 = CASE WHEN @LoopCounter2 = 1 THEN @P1 + (Select Item FROM ufn_mkg_SplitStrings(@in, ',') WHERE Number = @LoopCounter2) + @P2		
		ELSE
			@ConditionString2 + @P3 + (Select Item FROM ufn_mkg_SplitStrings(@in, ',') WHERE Number =@LoopCounter2) + @P2
		END		
		SET @LoopCounter2 = @LoopCounter2 + 1
		
	END

return cast(@LoopCounter2-1 as nvarchar(5))


end

GO


create function [dbo].[ufn_mkg_SplitRemoveDupes] (
@String VARCHAR(MAX) 
,@Delimiter VARCHAR(5)
)
RETURNS VARCHAR(MAX) 
AS
BEGIN

DECLARE @SplitLength INT 
DECLARE @DedupedValues VARCHAR(MAX) 

DECLARE @SplittedValues TABLE 
( 
  OccurenceId int IDENTITY(1,1), 
  SplitValue VARCHAR(2000) 
)  

    WHILE LEN(@String) > 0
    BEGIN
        SELECT @SplitLength = (
                CASE CHARINDEX(@Delimiter, @String)
                    WHEN 0
                        THEN LEN(@String)
                    ELSE CHARINDEX(@Delimiter, @String) - 1
                    END
                )

    INSERT INTO @SplittedValues
    SELECT SUBSTRING(@String, 1, @SplitLength)

    SELECT @String = (
            CASE (LEN(@String) - @SplitLength)
                WHEN 0
                    THEN ''
                ELSE RIGHT(@String, LEN(@String) - @SplitLength - 1) END)

END

SET @DedupedValues=(SELECT DISTINCT STUFF((
            SELECT DISTINCT (@Delimiter + SplitValue)
            FROM @SplittedValues s
            ORDER BY (@Delimiter +  SplitValue)
                        FOR XML PATH('')
            ), 1, 1, '') AS a
FROM @SplittedValues ss)

RETURN @DedupedValues 
END

GO



insert into  [FDW].[dbo].[Mkg_EGroup]
select * from [SDMON010249].[RelianceCustomerBase].[dbo].[EGroup]
go



-- =============================================
-- Author:		Oscar Yuan
-- Create date: May 24 2016
-- Description:	SP for Summary Report
-- =============================================
CREATE PROCEDURE [dbo].[usp_mkg_DetailsStrict] 

@Equipment VARCHAR(max),
@Exclude1 BIT,
@Exclude2 BIT,
@Strict BIT,
@ProductCategary VARCHAR(100),
@Status  INT,
@ContactType VARCHAR(15),
@BranchName  VARCHAR(max),
@Province VARCHAR(200)

AS
BEGIN
SET NOCOUNT ON;
DECLARE @ReturnString as NVARCHAR(max)
SET @ReturnString = ''
SET @ReturnString =
'select   *
FROM [FDW].[dbo].[Mkg_BaseReportDetails] 
where 
(('+cast(@Exclude1 AS NCHAR(2))+'=0 and '+cast(@Exclude2 AS NCHAR(2))+'=0 and '+cast(@Strict AS NCHAR(2))+'=0 AND ('+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] like ''%','%''',' or [Productcombo] like ''%') +')'+
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] like ''%','%''',' or [Productcombo] like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=1 and '+cast(@Exclude2 AS NCHAR(2))+'=1 and '+cast(@Strict AS NCHAR(2))+'=0 AND ('+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] not like ''%','%''',' and [Productcombo] not like ''%') +')'+
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] not like ''%','%''',' and [Productcombo] not like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=1 and '+cast(@Exclude2 AS NCHAR(2))+'=0 and '+cast(@Strict AS NCHAR(2))+'=0 AND ('+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] like ''%','%''',' or [Productcombo] like ''%') +')'+
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] not like ''%','%''',' or [Productcombo] not like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=0 and '+cast(@Exclude2 AS NCHAR(2))+'=1 and '+cast(@Strict AS NCHAR(2))+'=0 AND ('+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] not like ''%','%''',' or [Productcombo] not like ''%') +')'+
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] like ''%','%''',' or [Productcombo] like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=0 and '+cast(@Exclude2 AS NCHAR(2))+'=0 and '+cast(@Strict AS NCHAR(2))+'=1 AND '+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] like ''%','%''',' and [Productcombo] like ''%') +
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] like ''%','%''',' AND [Productcombo] like ''%')+') and [CATCount]='+
[dbo].[ufn_mkg_incancateCount](@ProductCategary,' and ([Productcombo] like ''%','%''',' and  [Productcombo] like ''%')+' and [EquipCount]='+
[dbo].[ufn_mkg_incancateCount](@Equipment,'[Equipcombo] like ''%','%''',' and [Equipcombo] like ''%')+' and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=1 and '+cast(@Exclude2 AS NCHAR(2))+'=1 and '+cast(@Strict AS NCHAR(2))+'=1 AND '+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] not like ''%','%''',' and [Productcombo] not like ''%') +
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] not like ''%','%''',' AND [Productcombo] not like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=1 and '+cast(@Exclude2 AS NCHAR(2))+'=0 and '+cast(@Strict AS NCHAR(2))+'=1 AND '+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] like ''%','%''',' and [Productcombo] like ''%') +
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] not like ''%','%''',' AND [Productcombo] not like ''%')+') and [EquipCount]='+
[dbo].[ufn_mkg_incancateCount](@Equipment,'[Equipcombo] like ''%','%''',' and [Equipcombo] like ''%')+' and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=0 and '+cast(@Exclude2 AS NCHAR(2))+'=1 and '+cast(@Strict AS NCHAR(2))+'=1 AND '+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] not like ''%','%''',' and [Productcombo] not like ''%') +
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] like ''%','%''',' AND [Productcombo] like ''%')+') and [CATCount]='+
[dbo].[ufn_mkg_incancateCount](@ProductCategary,' and ([Productcombo] like ''%','%''',' and  [Productcombo] like ''%')+' and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+')))
'
EXECUTE sp_executesql @ReturnString
END 

GO




-- =============================================
-- Author:		Oscar Yuan
-- Create date: May 24 2016
-- Description:	SP for Summary Report
-- =============================================
CREATE PROCEDURE [dbo].[usp_mkg_DetailsStrictSummary] 
@Equipment VARCHAR(max),
@Exclude1 BIT,
@Exclude2 BIT,
@Strict BIT,
@ProductCategary VARCHAR(100),
@Status  INT,
@ContactType VARCHAR(15),
@BranchName  VARCHAR(max),
@Province VARCHAR(200)
AS
BEGIN
SET NOCOUNT ON;
DECLARE @ReturnString as NVARCHAR(max)
SET @ReturnString = ''
SET @ReturnString =
'select    [Premise_ID],
      [Customer_ID] AS Customer_ID,
	  max([ProdCount]) AS  ProdCount,
	  replace(replace(max(cast([Product] as varchar(max))),''_'','' ''),''+'','', '') as Product,
	  max([CustomerStatus]) as CustomerStatus,
	  Max([CAT]) CAT
      ,max([Equipment]) "Equipment"
      ,max([Status]) "Status"
      ,max(replace(isnull(First_Name,''''), '','', '''')+'' ''+replace(isnull(Last_Name,''''), '','', '''')) "Full Name"
      ,max([Email_Address]) Email_Address
      ,max([User Defined]) "User Defined"
      ,max([Banner_Customer_Code]) "Banner_Customer_Code"
      ,max([First_Name]) First_Name
      ,max([Last_Name]) Last_Name
      ,max([Banner_Premise_Code]) Banner_Premise_Code
      ,max([Address1]) Address1
      ,max([Address2]) Address2
      ,max([City]) City
      ,max([Province_State]) Province_State
      ,max([Postal_Code]) Postal_Code
      ,min([Customer_Since]) Customer_Since
      ,max([Phone_Home_Number]) Phone_Home_Number
      ,max([Phone_Other_Number]) Phone_Other_Number
      ,max([Phone_Work_Number]) Phone_Work_Number
      ,max([FSA]) FSA
      ,max([Communication_Language]) Communication_Language
      ,max([Billing_Type]) Billing_Type
      ,max([GECA_Code]) GECA_Code
      ,max([Branch_Name]) Branch_Name
      ,max([Email_Contact]) Email_Contact
      ,max([Mail_Contact]) Mail_Contact
      ,max([Phone_Contact]) Phone_Contact
      ,max(cast([Equipcombo] as varchar(max))) Equipcombo
      ,max([EquipCount]) EquipCount
      ,max(cast([Equipment2] as varchar(max))) Equipment2
	  ,replace(replace(max(cast([CATcombo2] as varchar(max))),''_'','' ''),''+'','', '') CATcombo2
      ,replace(replace(max(cast([Equipcombo2] as varchar(max))),''_'','' ''),''+'','', '') Equipcombo2     
      ,max(cast([Productcombo] as varchar(max))) Productcombo
      ,max([CATCount]) CATCount
FROM [FDW].[dbo].[Mkg_BaseReportDetails] 
where 
(('+cast(@Exclude1 AS NCHAR(2))+'=0 and '+cast(@Exclude2 AS NCHAR(2))+'=0 and '+cast(@Strict AS NCHAR(2))+'=0 AND ('+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] like ''%','%''',' or [Productcombo] like ''%') +')'+
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] like ''%','%''',' or [Productcombo] like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=1 and '+cast(@Exclude2 AS NCHAR(2))+'=1 and '+cast(@Strict AS NCHAR(2))+'=0 AND ('+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] not like ''%','%''',' and [Productcombo] not like ''%') +')'+
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] not like ''%','%''',' and [Productcombo] not like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=1 and '+cast(@Exclude2 AS NCHAR(2))+'=0 and '+cast(@Strict AS NCHAR(2))+'=0 AND ('+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] like ''%','%''',' or [Productcombo] like ''%') +')'+
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] not like ''%','%''',' or [Productcombo] not like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=0 and '+cast(@Exclude2 AS NCHAR(2))+'=1 and '+cast(@Strict AS NCHAR(2))+'=0 AND ('+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] not like ''%','%''',' or [Productcombo] not like ''%') +')'+
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] like ''%','%''',' or [Productcombo] like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=0 and '+cast(@Exclude2 AS NCHAR(2))+'=0 and '+cast(@Strict AS NCHAR(2))+'=1 AND '+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] like ''%','%''',' and [Productcombo] like ''%') +
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] like ''%','%''',' AND [Productcombo] like ''%')+') and [CATCount]='+
[dbo].[ufn_mkg_incancateCount](@ProductCategary,' and ([Productcombo] like ''%','%''',' and  [Productcombo] like ''%')+' and [EquipCount]='+
[dbo].[ufn_mkg_incancateCount](@Equipment,'[Equipcombo] like ''%','%''',' and [Equipcombo] like ''%')+' and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=1 and '+cast(@Exclude2 AS NCHAR(2))+'=1 and '+cast(@Strict AS NCHAR(2))+'=1 AND '+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] not like ''%','%''',' and [Productcombo] not like ''%') +
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] not like ''%','%''',' AND [Productcombo] not like ''%')+') and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=1 and '+cast(@Exclude2 AS NCHAR(2))+'=0 and '+cast(@Strict AS NCHAR(2))+'=1 AND '+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] like ''%','%''',' and [Productcombo] like ''%') +
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] not like ''%','%''',' AND [Productcombo] not like ''%')+') and [EquipCount]='+
[dbo].[ufn_mkg_incancateCount](@Equipment,'[Equipcombo] like ''%','%''',' and [Equipcombo] like ''%')+' and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+'))
or ('+cast(@Exclude1 AS NCHAR(2))+'=0 and '+cast(@Exclude2 AS NCHAR(2))+'=1 and '+cast(@Strict AS NCHAR(2))+'=1 AND '+
[dbo].[ufn_mkg_incancate](@Equipment,'[Productcombo] not like ''%','%''',' and [Productcombo] not like ''%') +
[dbo].[ufn_mkg_incancate](@ProductCategary,' and ([Productcombo] like ''%','%''',' AND [Productcombo] like ''%')+') and [CATCount]='+
[dbo].[ufn_mkg_incancateCount](@ProductCategary,' and ([Productcombo] like ''%','%''',' and  [Productcombo] like ''%')+' and (CustomerStatus='+cast(@Status AS NCHAR(2))+' or '+cast(@Status AS NCHAR(2))+'=-1) and (Email_Contact='''+@ContactType+''' or Mail_Contact='''+@ContactType+''' or Phone_Contact='''+@ContactType+''')
and Province_State in ('+[dbo].[ufn_mkg_incancate](@Province,'''','''',',''')+') and Branch_Name in ('+[dbo].[ufn_mkg_incancate](@BranchName,'''','''',',''')+')))
GROUP BY [Premise_ID],[Customer_ID]'

--select @ReturnString
--([Banner_Cust_Code_Owner] is not null or Banner_Customer_Code is null) and
EXECUTE sp_executesql @ReturnString
END 
GO








