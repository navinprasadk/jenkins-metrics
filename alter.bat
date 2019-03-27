rem echo off

SET Server=.\nicean.cjquxgucf2u8.ap-south-1.rds.amazonaws.com:1433
SET LogFile=DB.log

sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\01_TicketLayout.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\02_Process.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\03_ConvertMessage.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\04_LayoutTemplate.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\05_LayoutTemplate.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\06_PrintIndicator.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\07_LayoutTemplate.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\08_CartonLabel.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\09_LayoutTemplate.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\10_PrintIndicator.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\11_TicketOrder.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\12_SplitString.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\13_DCSettings.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\14_GtaPrintJob.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\15_Details.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\16_ImportJob.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\17_Index.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\18_StoredProcedures.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\19_ErrorLog.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\20_MessageConversion.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\21_TicketLayout.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\22_GtaUserHistory.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\23_TicketOrder.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\24_PreTicketDetail.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\25_PrintIndicator.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\26_DCSettings.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\27_Role.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\28_GtaPrintJob.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\29_DCSettings.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\30_DepartmentList.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\31_DCSettings.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\32_CountryInfo.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\33_Store.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\34_TicketInfo.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\35_CBC.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\36_StyleHeader.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\37_StyleHeaderDetail.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\38_CartonLabel.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\39_CartonStore.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\40_CountryInfo.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\41_CBC.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Security\EpmUser_Grant_Alter.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\42_ArchiveTables.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\43_CountryInfo.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\44_Printing_SH_Details_Get.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\45_Printing_SH_PickNFH_GetCC.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\46_Status.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\47_ReprintMode.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\48_TicketOrder.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\49_CartonLabel.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\50_A_CartonLabel.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\51_TR_TicketOrder.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\52_ReprintMode.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\53_TR_A_TicketOrder.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\54_CountryInfo.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\55_DCSettings.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\56_DCSettings_Reprint.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\57_Printing_SH_TicketCount_CC.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\58_Printing_SH_Details_Get.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\59_TR_TicketOrder.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\60_ReprintMode.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\61_CartonLabel.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\62_A_CartonLabel.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\63_TR_TicketOrder.sql" >> %LogFile% 2>&1
sqlcmd -e -E -S %Server% -d NiceAN -i "Alter\64_A_TR_TicketOrder.sql" >> %LogFile% 2>&1

set /p delExit=Press the ENTER key to exit...:
