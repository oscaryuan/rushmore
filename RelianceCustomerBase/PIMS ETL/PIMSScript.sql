

USE [FDW_STG]
GO

IF OBJECT_ID('[dbo].[Mkg_Staging_PIMS]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Mkg_Staging_PIMS]
GO

CREATE TABLE [dbo].[Mkg_Staging_PIMS]
(
	[P_OriginalCustomerCode] [varchar](40) NULL,
	[P_EmailAddress] [varchar](40) NULL,
	[P_SuppressTelephone] [varchar](40) NULL,
	[P_SuppressPostal] [varchar](40) NULL,
	[P_SuppressElectronic] [varchar](40) NULL,
	[PhoneNumber] [varchar](40) NULL,
	[MailAddress] [varchar](100) NULL
) ON [PRIMARY]

GO