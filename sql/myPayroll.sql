SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PTSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PTSettings](
	[CompanyId] [numeric](18, 0) NULL,
	[PTSettingsId] [numeric](18, 0) NULL,
	[State] [nvarchar](50) NULL,
	[MinSalary] [numeric](18, 0) NULL,
	[MaxSalary] [numeric](18, 0) NULL,
	[PTax] [nvarchar](50) NULL,
	[SplCalcApplicable] [nvarchar](50) NULL,
	[SplMonth] [nvarchar](50) NULL,
	[SplAmount] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PFSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PFSettings](
	[CompanyId] [numeric](18, 0) NULL,
	[PFSettingId] [numeric](18, 0) NULL,
	[MonthYear] [nvarchar](50) NULL,
	[EmployeesShare] [nvarchar](50) NULL,
	[FixEmployerShare] [nvarchar](50) NULL,
	[EmployersShare] [nvarchar](50) NULL,
	[PensionFund] [nvarchar](50) NULL,
	[PFLimitRs] [nvarchar](50) NULL,
	[PFAdminCharges] [nvarchar](50) NULL,
	[EDLICharges] [nvarchar](50) NULL,
	[EDLIAdminCharges] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PFMonthlyReturn]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PFMonthlyReturn](
	[CompanyId] [numeric](18, 0) NULL,
	[MonthYear] [nvarchar](50) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[EPFWages] [nvarchar](50) NULL,
	[EPSWages] [nvarchar](50) NULL,
	[EPFContribution] [nvarchar](50) NULL,
	[EPSContribution] [nvarchar](50) NULL,
	[DiffEPFAndEPSContribution] [nvarchar](50) NULL,
	[AbsentDays] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PayrollSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PayrollSettings](
	[CompanyId] [numeric](18, 0) NULL,
	[PFApplicable] [nvarchar](50) NULL,
	[ESICApplicable] [nvarchar](50) NULL,
	[SalaryRateType] [varchar](20) NULL,
	[FixMonthDays] [nvarchar](5) NULL,
	[FixDays] [nvarchar](50) NULL,
	[OnlyMonthDay] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PayrollSalaryHeadAmout]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PayrollSalaryHeadAmout](
	[CompanyId] [numeric](18, 0) NULL,
	[PayrollId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[SalaryHeadId] [numeric](18, 0) NULL,
	[Amount] [float] NULL,
	[MonthYear] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PayrollLoanAmount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PayrollLoanAmount](
	[CompanyId] [numeric](18, 0) NULL,
	[PayrollId] [numeric](18, 0) NULL,
	[MonthYear] [nvarchar](50) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[LoanId] [numeric](18, 0) NULL,
	[Amount] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payroll]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Payroll](
	[PayrollId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[MonthYear] [nvarchar](50) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[PresentDays] [nvarchar](50) NULL,
	[AbsentDays] [nvarchar](50) NULL,
	[GrossEarning] [nvarchar](50) NULL,
	[GrossDeduction] [nvarchar](50) NULL,
	[NetSalary] [nvarchar](50) NULL,
	[InWord] [nvarchar](max) NULL,
	[PF] [float] NULL,
	[ESIC] [float] NULL,
	[PT] [float] NULL,
	[OTHrs] [nvarchar](50) NULL,
	[OTDay] [nvarchar](50) NULL,
	[OT] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NACDeviceConfig]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NACDeviceConfig](
	[CompanyId] [numeric](18, 0) NULL,
	[NacDevId] [numeric](18, 0) NULL,
	[DeviceName] [nvarchar](100) NULL,
	[DBType] [nvarchar](50) NULL,
	[ConStr] [nvarchar](500) NULL,
	[DeviceCompany] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ManualAttendance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ManualAttendance](
	[CompanyId] [numeric](18, 0) NULL,
	[ManualAttendanceId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[ShiftId] [numeric](18, 0) NULL,
	[InTime] [nvarchar](50) NULL,
	[OutTime] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[OTHrs] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Logs](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Time] [datetime] NULL,
	[DeviceNo] [nvarchar](50) NULL,
	[VerifyNo] [nvarchar](50) NULL,
	[DeviceName] [nvarchar](50) NULL,
	[IndexId] [numeric](18, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoanMonthAmount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoanMonthAmount](
	[CompanyId] [numeric](18, 0) NULL,
	[EntryId] [numeric](18, 0) NULL,
	[EnrollId] [varchar](50) NULL,
	[MonthYear] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[LoanId] [numeric](18, 0) NULL,
	[CurrentAmount] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoanEntry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoanEntry](
	[CompanyId] [numeric](18, 0) NULL,
	[EntryId] [numeric](18, 0) NULL,
	[Date] [datetime] NULL,
	[EnrollId] [varchar](50) NULL,
	[LoanId] [numeric](18, 0) NULL,
	[LoanAmount] [varchar](50) NULL,
	[EMIType] [varchar](50) NULL,
	[AmountMonth] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Loan](
	[CompanyId] [numeric](18, 0) NULL,
	[LoanId] [numeric](18, 0) NULL,
	[Name] [nvarchar](50) NULL,
	[ShortName] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Licence]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Licence](
	[SerialNumber] [nvarchar](50) NULL,
	[LicenceNumber] [nvarchar](50) NULL,
	[LicenceTo] [nvarchar](50) NULL,
	[ComputerId] [nvarchar](50) NULL,
	[LicenceFor] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LeaveYear]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LeaveYear](
	[CompanyId] [numeric](18, 0) NULL,
	[Year] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LeaveApplicationDates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LeaveApplicationDates](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[LeaveId] [numeric](18, 0) NULL,
	[Leave] [float] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LeaveApplication]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LeaveApplication](
	[CompanyId] [numeric](18, 0) NULL,
	[LeaveApplicationId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[LeaveId] [numeric](18, 0) NULL,
	[FromDate] [datetime] NULL,
	[IsHalfDayFrom] [nvarchar](50) NULL,
	[ToDate] [datetime] NULL,
	[IsHalfDayTo] [nvarchar](50) NULL,
	[TotalLeave] [nvarchar](50) NULL,
	[Reason] [nvarchar](50) NULL,
	[CurrentBalance] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Leave]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Leave](
	[LeaveId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[LeaveName] [nvarchar](50) NULL,
	[LeaveShortName] [nvarchar](50) NULL,
	[CarryFoward] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HolidayDates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HolidayDates](
	[CompanyId] [numeric](18, 0) NULL,
	[HolidayId] [numeric](18, 0) NULL,
	[HolidayDate] [datetime] NULL,
	[Payble] [varchar](5) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Holiday]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Holiday](
	[HolidayId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[HolidayName] [nvarchar](50) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Payble] [varchar](5) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GatePassEntry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GatePassEntry](
	[CompanyId] [numeric](18, 0) NULL,
	[GatePassId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[FromTime] [nvarchar](50) NULL,
	[ToTime] [nvarchar](50) NULL,
	[TotalHrs] [nvarchar](50) NULL,
	[Reason] [nvarchar](50) NULL,
	[Remark] [nvarchar](max) NULL,
	[ApprovedByName] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ESICSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ESICSettings](
	[CompanyId] [numeric](18, 0) NULL,
	[ESICSettingId] [numeric](18, 0) NULL,
	[ApplicableFrom] [datetime] NULL,
	[EmployeesShare] [nvarchar](50) NULL,
	[EmployersShare] [nvarchar](50) NULL,
	[ESICLimit] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ESICMonthlyReturns]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ESICMonthlyReturns](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[PresentDays] [nvarchar](50) NULL,
	[ESICWages] [nvarchar](50) NULL,
	[MonthYear] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ESICDeActiveEmployee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ESICDeActiveEmployee](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeSalaryRate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeSalaryRate](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[SalaryHeadId] [numeric](18, 0) NULL,
	[Rate] [nvarchar](50) NULL,
	[WEFDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeePhoto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeePhoto](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [varchar](50) NULL,
	[Photo] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeLeaveDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeLeaveDetails](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[LeaveId] [numeric](18, 0) NULL,
	[Allotment] [nvarchar](50) NULL,
	[Balance] [nvarchar](50) NULL,
	[Year] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeCOFFDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeCOFFDetails](
	[CompanyId] [numeric](18, 0) NULL,
	[EmployeeId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[Year] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[COFF] [float] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeCOFFBalance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeCOFFBalance](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[CoffBalance] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[RefId] [nvarchar](50) NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[BloodGroup] [nvarchar](50) NULL,
	[Sex] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[MartialStatus] [nvarchar](50) NULL,
	[WeddDate] [datetime] NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CurrentAddress] [nvarchar](max) NULL,
	[ParmanantAddress] [nvarchar](max) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[BranchId] [numeric](18, 0) NULL,
	[DepartmentId] [numeric](18, 0) NULL,
	[DesignationId] [numeric](18, 0) NULL,
	[CategoryId] [numeric](18, 0) NULL,
	[Type] [nvarchar](50) NULL,
	[JoiningDate] [datetime] NULL,
	[ConfirmationDate] [datetime] NULL,
	[JobStatus] [nvarchar](50) NULL,
	[LeavingDate] [datetime] NULL,
	[ShiftType] [nvarchar](50) NULL,
	[FixShiftId] [numeric](18, 0) NULL,
	[LateAllowedMin] [nvarchar](50) NULL,
	[EarlyAllowedMin] [nvarchar](50) NULL,
	[HalfDayMin] [nvarchar](50) NULL,
	[ApplicableFrom] [datetime] NULL,
	[WOFF] [nvarchar](50) NULL,
	[IsSecondWOFF] [nvarchar](50) NULL,
	[SecondWOFF] [nvarchar](50) NULL,
	[SecondWOFFStatus] [nvarchar](50) NULL,
	[Pattern] [nvarchar](50) NULL,
	[Punch] [nvarchar](50) NULL,
	[NoOutPunchFound] [nvarchar](50) NULL,
	[OTAllowed] [nvarchar](50) NULL,
	[OTStartMin] [nvarchar](50) NULL,
	[LunchAllowed] [nvarchar](50) NULL,
	[LunchMin] [nvarchar](50) NULL,
	[IFPresentOnWOFFOrHOFF] [nvarchar](50) NULL,
	[LateCutAllowed] [nvarchar](50) NULL,
	[LateAllowedDays] [nvarchar](50) NULL,
	[LateCutAction] [nvarchar](50) NULL,
	[BankId] [numeric](18, 0) NULL,
	[BankAccountNo] [nvarchar](50) NULL,
	[PFApplicable] [nvarchar](50) NULL,
	[PFWEF] [datetime] NULL,
	[PFNo] [nvarchar](50) NULL,
	[RestrictPF] [nvarchar](50) NULL,
	[ESICApplicable] [nvarchar](50) NULL,
	[ESICWEF] [datetime] NULL,
	[ESICNo] [nvarchar](50) NULL,
	[PTApplicable] [nvarchar](50) NULL,
	[PTState] [nvarchar](50) NULL,
	[PTNotApplicableFrom] [datetime] NULL,
	[PANNo] [nvarchar](50) NULL,
	[OTCalcultionType] [nvarchar](50) NULL,
	[OTRate] [nvarchar](50) NULL,
	[OTDayHRs] [nvarchar](50) NULL,
	[FatherHusbandName] [nvarchar](200) NULL,
	[RelationWithEmployee] [nvarchar](2) NULL,
	[LeavingReason] [nvarchar](2) NULL,
	[SalaryRateType] [varchar](20) NULL DEFAULT ('Monthly'),
	[WOFFPayble] [varchar](10) NULL,
	[WOFFWorkingHrsAllowed] [nvarchar](50) NULL,
	[HOFFWorkingHrsAllowed] [nvarchar](50) NULL,
	[FullDayMins] [nvarchar](50) NULL,
	[ShiftRuleLateMinsAllowed] [nvarchar](2) NULL,
	[ShiftRuleEarlyMinsAllowed] [nvarchar](2) NULL,
	[ShiftRuleFullDayMinsAllowed] [nvarchar](2) NULL,
	[ShiftRuleHalfDayMinsAllowed] [nvarchar](2) NULL,
	[ShiftRuleLunchMinsAllowed] [nvarchar](2) NULL,
	[ShiftRuleOTAllowed] [nvarchar](2) NULL,
	[WOFFBeforeAbsetAllowed] [nvarchar](5) NULL,
	[WOFFAfterAbsentAllowed] [nvarchar](5) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmailSettings](
	[CompanyId] [numeric](18, 0) NULL,
	[SettingId] [numeric](18, 0) NULL,
	[FromEmailId] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[SmtpServer] [varchar](50) NULL,
	[Port] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeviceUser](
	[ComapnyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Privilege] [int] NULL,
	[FingerIndex] [int] NULL,
	[TempData] [nvarchar](max) NULL,
	[Enable] [bit] NULL,
	[flag] [int] NULL,
	[DeviceType] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Device]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Device](
	[DeviceId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[DeviceName] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[Port] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[MachineNo] [nvarchar](50) NULL,
	[DeviceCompany] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Designation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Designation](
	[DesignationId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[Designation] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Department](
	[DepartmentId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[Department] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyLogo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompanyLogo](
	[CompanyId] [numeric](18, 0) NULL,
	[Logo] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Company](
	[CompanyId] [numeric](18, 0) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[CompanyShortName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COFFApplicationDate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COFFApplicationDate](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[COFF] [float] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COFFApplication]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COFFApplication](
	[CompanyId] [numeric](18, 0) NULL,
	[COFFApplicationId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[FromDate] [datetime] NULL,
	[IsFromHalfDay] [nvarchar](50) NULL,
	[ToDate] [datetime] NULL,
	[IsToHalfDay] [nvarchar](50) NULL,
	[TotalCOFF] [nvarchar](50) NULL,
	[Reason] [nvarchar](50) NULL,
	[Balance] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[CategoryId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[Category] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BranchWiseAttendance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BranchWiseAttendance](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[BranchId] [numeric](18, 0) NULL,
	[Present] [float] NULL,
	[MonthYear] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Branch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Branch](
	[BranchId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[BranchName] [nvarchar](50) NULL,
	[BranchShortName] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[LogDownloadPath] [nvarchar](500) NULL,
	[LastDwnldDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bank]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bank](
	[BankId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[BankName] [nvarchar](50) NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Attendance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Attendance](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[ShiftId] [numeric](18, 0) NULL,
	[Date] [datetime] NULL,
	[InTime] [nvarchar](50) NULL,
	[OutTime] [nvarchar](50) NULL,
	[Late] [nvarchar](50) NULL,
	[Early] [nvarchar](50) NULL,
	[OT] [nvarchar](50) NULL,
	[TotalHrs] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Day] [float] NULL,
	[OutNextDay] [varchar](50) NULL,
	[LunchMin] [varchar](50) NULL,
	[LateStatus] [varchar](10) NULL,
	[LunchIn] [nvarchar](50) NULL,
	[LunchOut] [nvarchar](50) NULL,
	[BreakIn] [nvarchar](50) NULL,
	[BreakOut] [nvarchar](50) NULL,
	[LeaveDay] [float] NULL,
	[GatePassHrs] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SMSAccountManager]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SMSAccountManager](
	[CompanyId] [numeric](18, 0) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRights]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserRights](
	[CompanyId] [numeric](18, 0) NULL,
	[UserId] [numeric](18, 0) NULL,
	[UserName] [nvarchar](200) NULL,
	[PWD] [nvarchar](200) NULL,
	[Company] [nvarchar](5) NULL,
	[Branch] [nvarchar](5) NULL,
	[Department] [nvarchar](5) NULL,
	[Designation] [nvarchar](5) NULL,
	[Category] [nvarchar](5) NULL,
	[Bank] [nvarchar](5) NULL,
	[AttendanceSetting] [nvarchar](5) NULL,
	[PayrollSetting] [nvarchar](5) NULL,
	[Attendance] [nvarchar](5) NULL,
	[Payroll] [nvarchar](5) NULL,
	[Employee] [nvarchar](5) NULL,
	[CreateLeaveYear] [nvarchar](5) NULL,
	[LeaveAllotment] [nvarchar](5) NULL,
	[ShiftAllotment] [nvarchar](5) NULL,
	[LeaveApplication] [nvarchar](5) NULL,
	[CoffApplication] [nvarchar](5) NULL,
	[ManualAttendace] [nvarchar](5) NULL,
	[MissingLogsEntry] [nvarchar](5) NULL,
	[DownloadLogs] [nvarchar](5) NULL,
	[ProcessLogs] [nvarchar](5) NULL,
	[SalaryRate] [nvarchar](5) NULL,
	[PayrollProcess] [nvarchar](5) NULL,
	[PFEReturn] [nvarchar](5) NULL,
	[ESICEReturn] [nvarchar](5) NULL,
	[AttendanceReport] [nvarchar](5) NULL,
	[PayrollReport] [nvarchar](5) NULL,
	[LeaveReport] [nvarchar](5) NULL,
	[EmployeeReport] [nvarchar](5) NULL,
	[MasterReport] [nvarchar](5) NULL,
	[BackupRestore] [nvarchar](5) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShiftAllotment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShiftAllotment](
	[CompanyId] [numeric](18, 0) NULL,
	[EnrollId] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Shift] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shift]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Shift](
	[ShiftId] [numeric](18, 0) NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[ShiftName] [nvarchar](50) NULL,
	[ShiftShortName] [nvarchar](50) NULL,
	[InTime] [nvarchar](50) NULL,
	[OutTime] [nvarchar](50) NULL,
	[LateAllowed] [nvarchar](50) NULL,
	[EarlyAllowed] [nvarchar](50) NULL,
	[BeforeTime] [nvarchar](50) NULL,
	[AfterTime] [nvarchar](50) NULL,
	[OTNextDay] [nvarchar](50) NULL,
	[IsFixShift] [nvarchar](50) NULL,
	[IsEndsOnNextDay] [nvarchar](50) NULL,
	[LunchIn] [nvarchar](50) NULL,
	[LunchOut] [nvarchar](50) NULL,
	[LunchApplicable] [nvarchar](5) NULL,
	[BreakApplicable] [nvarchar](5) NULL,
	[BreakIn] [nvarchar](50) NULL,
	[BreakOut] [nvarchar](50) NULL,
	[FullDayMinutes] [nvarchar](50) NULL,
	[HalfDayMinutes] [nvarchar](50) NULL,
	[OTAllowed] [nvarchar](50) NULL,
	[GracePeriod] [nvarchar](50) NULL,
	[OneDayHrs] [nvarchar](50) NULL,
	[MaxOTHrs] [nvarchar](50) NULL,
	[FixLunchMins] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Settings](
	[CompanyId] [numeric](18, 0) NULL,
	[ShiftTotalMin] [nvarchar](50) NULL,
	[ShiftHalfDayMin] [nvarchar](50) NULL,
	[LateAllowedMin] [nvarchar](50) NULL,
	[EarlyAllowedMin] [nvarchar](50) NULL,
	[WeeklyOff] [nvarchar](50) NULL,
	[IsSecondweeklyOff] [nvarchar](50) NULL,
	[SecondWeeklyOff] [nvarchar](50) NULL,
	[SecondWeeklyOffStatus] [nvarchar](50) NULL,
	[SecondWeeklyOffPattern] [nvarchar](50) NULL,
	[DevicePunch] [nvarchar](50) NULL,
	[IsLateCutAllowed] [nvarchar](50) NULL,
	[LateCutDay] [nvarchar](50) NULL,
	[LateCutAction] [nvarchar](50) NULL,
	[NoOutPunchFound] [nvarchar](50) NULL,
	[IsOTAllowed] [nvarchar](50) NULL,
	[OTStartMinute] [nvarchar](50) NULL,
	[OTDayHrs] [nvarchar](50) NULL,
	[IsLunchAllowed] [nvarchar](50) NULL,
	[LunchMinute] [nvarchar](50) NULL,
	[IfPresentOnWOFForHOFF] [nvarchar](50) NULL,
	[MaxOtHrs] [nvarchar](50) NULL,
	[TolleranceMins] [numeric](18, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalaryHead]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SalaryHead](
	[CompanyId] [numeric](18, 0) NULL,
	[SalaryHeadId] [numeric](18, 0) NULL,
	[SalaryHeadName] [nvarchar](50) NULL,
	[PrintingName] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[ApplicableFrom] [datetime] NULL,
	[PF] [nvarchar](50) NULL,
	[ESIC] [nvarchar](50) NULL,
	[PT] [nvarchar](50) NULL,
	[Variable] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL
) ON [PRIMARY]
END
