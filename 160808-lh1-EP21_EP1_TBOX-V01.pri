/* ************************************************************************** */
/*                                                                            */
/*                    Mentor Graphics Corporation                             */
/*                        All rights reserved                                 */
/*                                                                            */
/* ************************************************************************** */
/*                                                                            */
/*  Description:   Network file for Volcano 6.2                               */
/*  Project:       name                                                       */
/*  Release:       project version                                            */
/*  Configuration: project version                                            */
/*  Node:          Telematics_BOX                                             */
/*                                                                            */
/* ************************************************************************** */




private_file;
volcano version "6.2";



/*receive signal*/

/*DIAG_DTCInfo_GW, 0x7B0*/
flag "DIAG_DTCInfo_GW_flag" {
	latches frame containing "DTCInfomationGW";
}

/*GW_DIAG_DTCInfo_AC, 0x708*/
flag "GW_DIAG_DTCInfo_AC_flag" {
	latches frame containing "DTCInfomationAC";
}

/*GW_DIAG_DTCInfo_AFS, 0x7B4*/
flag "GW_DIAG_DTCInfo_AFS_flag" {
	latches frame containing "DTCInfomationAFS";
}

/*GW_DIAG_DTCInfo_APA, 0x799*/
flag "GW_DIAG_DTCInfo_APA_flag" {
	latches frame containing "DTCInfomationAPA";
}

/*GW_DIAG_DTCInfo_BCM, 0x7B1*/
flag "GW_DIAG_DTCInfo_BCM_flag" {
	latches frame containing "DTCInfomationBCM";
}

/*GW_DIAG_DTCInfo_BMS, 0x70B*/
flag "GW_DIAG_DTCInfo_BMS_flag" {
	latches frame containing "DTCInfomationBMS";
}

/*GW_DIAG_DTCInfo_EHBS, 0x796*/
flag "GW_DIAG_DTCInfo_EHBS_flag" {
	latches frame containing "DTCInfomationEHBS";
}

/*GW_DIAG_DTCInfo_EPB, 0x793*/
flag "GW_DIAG_DTCInfo_EPB_flag" {
	latches frame containing "DTCInfomationEPB";
}

/*GW_DIAG_DTCInfo_EPS, 0x791*/
flag "GW_DIAG_DTCInfo_EPS_flag" {
	latches frame containing "DTCInfomationEPS";
}

/*GW_DIAG_DTCInfo_FICM, 0x7B9*/
flag "GW_DIAG_DTCInfo_FICM_flag" {
	latches frame containing "DTCInfomationFICM";
}

/*GW_DIAG_DTCInfo_FVCM, 0x79B*/
flag "GW_DIAG_DTCInfo_FVCM_flag" {
	latches frame containing "DTCInfomationFVCM";
}

/*GW_DIAG_DTCInfo_HCU, 0x70A*/
flag "GW_DIAG_DTCInfo_HCU_flag" {
	latches frame containing "DTCInfomationHCU";
}

/*GW_DIAG_DTCInfo_HVDCDC, 0x70F*/
flag "GW_DIAG_DTCInfo_HVDCDC_flag" {
	latches frame containing "DTCInfomationHVDCDC";
}

/*GW_DIAG_DTCInfo_IPK, 0x7B8*/
flag "GW_DIAG_DTCInfo_IPK_flag" {
	latches frame containing "DTCInfomationIPK";
}

/*GW_DIAG_DTCInfo_ISC, 0x70D*/
flag "GW_DIAG_DTCInfo_ISC_flag" {
	latches frame containing "DTCInfomationISC";
}

/*GW_DIAG_DTCInfo_MSM, 0x7B6*/
flag "GW_DIAG_DTCInfo_MSM_flag" {
	latches frame containing "DTCInfomationMSM";
}

/*GW_DIAG_DTCInfo_PACM, 0x7BA*/
flag "GW_DIAG_DTCInfo_PACM_flag" {
	latches frame containing "DTCInfomationPACM";
}

/*GW_DIAG_DTCInfo_PEPS, 0x7B5*/
flag "GW_DIAG_DTCInfo_PEPS_flag" {
	latches frame containing "DTCInfomationPEPS";
}

/*GW_DIAG_DTCInfo_PLCM, 0x7BF*/
flag "GW_DIAG_DTCInfo_PLCM_flag" {
	latches frame containing "DTCInfomationPLCM";
}

/*GW_DIAG_DTCInfo_RDA, 0x79A*/
flag "GW_DIAG_DTCInfo_RDA_flag" {
	latches frame containing "DTCInfomationRDA";
}

/*GW_DIAG_DTCInfo_SAS, 0x792*/
flag "GW_DIAG_DTCInfo_SAS_flag" {
	latches frame containing "DTCInfomationSAS";
}

/*GW_DIAG_DTCInfo_SCS, 0x790*/
flag "GW_DIAG_DTCInfo_SCS_flag" {
	latches frame containing "DTCInfomationSCS";
}

/*GW_DIAG_DTCInfo_SCU, 0x702*/
flag "GW_DIAG_DTCInfo_SCU_flag" {
	latches frame containing "DTCInfomationSCU";
}

/*GW_DIAG_DTCInfo_SDM, 0x798*/
flag "GW_DIAG_DTCInfo_SDM_flag" {
	latches frame containing "DTCInfomationSDM";
}

/*GW_DIAG_DTCInfo_TC, 0x70C*/
flag "GW_DIAG_DTCInfo_TC_flag" {
	latches frame containing "DTCInfomationTC";
}

/*GW_DIAG_DTCInfo_TPMS, 0x794*/
flag "GW_DIAG_DTCInfo_TPMS_flag" {
	latches frame containing "DTCInfomationTPMS";
}

/*GW_HSC5_AC_FrP01, 0x361*/
flag "GW_HSC5_AC_FrP01_flag" {
	latches frame containing "ACInCarTem";
}

/*GW_HSC5_AC_FrP08, 0x2FB*/
flag "GW_HSC5_AC_FrP08_flag" {
	latches frame containing "AirClnrFltrLife";
}

/*GW_HSC5_BCM_FrP02, 0x473*/
flag "GW_HSC5_BCM_FrP02_flag" {
	latches frame containing "VINBCM";
}

/*GW_HSC5_BCM_FrP04, 0x46A*/
flag "GW_HSC5_BCM_FrP04_flag" {
	latches frame containing "AutoLghtOnReq";
}

/*GW_HSC5_BCM_FrP09, 0x21D*/
flag "GW_HSC5_BCM_FrP09_flag" {
	latches frame containing "RVSSts";
}

/*GW_HSC5_BCM_FrP10, 0x518*/
flag "GW_HSC5_BCM_FrP10_flag" {
	latches frame containing "KeyRefc";
}

/*GW_HSC5_BCM_FrS09, 0x03C*/
flag "GW_HSC5_BCM_FrS09_flag" {
	latches frame containing "BCMImmoData4";
}

/*GW_HSC5_BCM_FrS10, 0x03D*/
flag "GW_HSC5_BCM_FrS10_flag" {
	latches frame containing "BCMImmoData5";
}

/*GW_HSC5_BCM_FrS13, 0x021*/
flag "GW_HSC5_BCM_FrS13_flag" {
	latches frame containing "BCMRmtCtrlPotcl";
}

/*GW_HSC5_ECM_FrP00, 0x0C9*/
flag "GW_HSC5_ECM_FrP00_flag" {
	latches frame containing "ClstrDspdVehSpd";
}

/*GW_HSC5_ECM_FrP04, 0x194*/
flag "GW_HSC5_ECM_FrP04_flag" {
	latches frame containing "EPTRdy";
}

/*GW_HSC5_FICM_FrP12, 0x367*/
flag "GW_HSC5_FICM_FrP12_flag" {
	latches frame containing "BMSAvlblEnrg";
}

/*GW_HSC5_FrP01, 0x1F1*/
flag "GW_HSC5_FrP01_flag" {
	latches frame containing "PwrMdMstrAccryA";
}

/*GW_HSC5_FrP02, 0x0F1*/
flag "GW_HSC5_FrP02_flag" {
	latches frame containing "BrkPdlPos";
}

/*GW_HSC5_FrP05, 0x1F2*/
flag "GW_HSC5_FrP05_flag" {
	latches frame containing "SysBPM";
}

/*GW_HSC5_FrP10, 0x3F1*/
flag "GW_HSC5_FrP10_flag" {
	latches frame containing "OtsdAirTemCrValV";
}

/*GW_HSC5_IPK_FrP03, 0x416*/
flag "GW_HSC5_IPK_FrP03_flag" {
	latches frame containing "ClstrElecRngToEPT";
}

/*GW_HSC5_IPK_FrP06, 0x541*/
flag "GW_HSC5_IPK_FrP06_flag" {
	latches frame containing "CalendarDay";
}

/*GW_HSC5_IPK_FrP09, 0x417*/
flag "GW_HSC5_IPK_FrP09_flag" {
	latches frame containing "ClstrDspdABSWrnng";
}

/*GW_HSC5_IPK_FrP10, 0x343*/
flag "GW_HSC5_IPK_FrP10_flag" {
	latches frame containing "ClstrDspdBMSWrnng";
}

/*GW_HSC5_PMDC_FrP01, 0x319*/
flag "GW_HSC5_PMDC_FrP01_flag" {
	latches frame containing "BatVol";
}

/*GW_HSC5_PMDC_FrP03, 0x517*/
flag "GW_HSC5_PMDC_FrP03_flag" {
	latches frame containing "VehLdShedLvl";
}

/*GW_HSC5_SCS_FrP02, 0x185*/
flag "GW_HSC5_SCS_FrP02_flag" {
	latches frame containing "AirbagDpl";
}

/*GW_HSC5_SCS_FrP15, 0x353*/
flag "GW_HSC5_SCS_FrP15_flag" {
	latches frame containing "AdvFrtLghtngSysIndReq";
}

/*GW_HSC5_TPMS_FrP01, 0x47D*/
flag "GW_HSC5_TPMS_FrP01_flag" {
	latches frame containing "FLTirePrs";
}

/*GW_HSC5_TPMS_FrP02, 0x47E*/
flag "GW_HSC5_TPMS_FrP02_flag" {
	latches frame containing "FLTireSts";
}

/*GW_HSC5_TPMS_FrP02, 0x47E*/
flag "GW_HSC5_TPMS_FrP02_flag" {
	latches frame containing "FLTireSts";
}

/*GW_HSC5_TPMS_FrP02, 0x47E*/
flag "GW_HSC5_TPMS_FrP02_flag" {
	latches frame containing "FLTireSts";
}

/*GW_HSC5_TPMS_FrP02, 0x47E*/
flag "GW_HSC5_TPMS_FrP02_flag" {
	latches frame containing "FLTireSts";
}

/*GW_HSC5_TPMS_FrP02, 0x47E*/
flag "GW_HSC5_TPMS_FrP02_flag" {
	latches frame containing "FLTireSts";
}

/*GW_HSC5_TPMS_FrP02, 0x47E*/
flag "GW_HSC5_TPMS_FrP02_flag" {
	latches frame containing "FLTireSts";
}

/*GW_HSC5_TPMS_FrP02, 0x47E*/
flag "GW_HSC5_TPMS_FrP02_flag" {
	latches frame containing "FLTireSts";
}

/*GW_HSC5_TPMS_FrP02, 0x47E*/
flag "GW_HSC5_TPMS_FrP02_flag" {
	latches frame containing "FLTireSts";
}

/*BMS_Charger_HSC6_FrP01, 0x3B8*/
flag "BMS_Charger_HSC6_FrP01_flag" {
	latches frame containing "ChargerStatus";
}

/*BMS_HSC6_FrP01, 0x295*/
flag "BMS_HSC6_FrP01_flag" {
	latches frame containing "BMSPackCrnt";
}

/*BMS_HSC6_FrP02, 0x297*/
flag "BMS_HSC6_FrP02_flag" {
	latches frame containing "BMSBscSta";
}

/*BMS_HSC6_FrP04, 0x29C*/
flag "BMS_HSC6_FrP04_flag" {
	latches frame containing "BMSChrgRmnHour";
}

/*BMS_HSC6_FrP08, 0x44C*/
flag "BMS_HSC6_FrP08_flag" {
	latches frame containing "keep_network_BMS";
}

/*BMS_HSC6_FrP10, 0x173*/
flag "BMS_HSC6_FrP10_flag" {
	latches frame containing "BMSCellMaxVol";
}

/*BMS_HSC6_FrP11, 0x2A2*/
flag "BMS_HSC6_FrP11_flag" {
	latches frame containing "BMSCellMaxTem";
}

/*BMS_HSC6_FrP13, 0x3AC*/
flag "BMS_HSC6_FrP13_flag" {
	latches frame containing "BMSPackSOCDsp";
}

/*BMS_HSC6_FrP14, 0x391*/
flag "BMS_HSC6_FrP14_flag" {
	latches frame containing "BMSChrgSts";
}

/*BMS_HSC6_FrP15, 0x393*/
flag "BMS_HSC6_FrP15_flag" {
	latches frame containing "BMSReserChrgCtrlDspCmd";
}

/*BMS_HSC6_FrS00, 0x443*/
flag "BMS_HSC6_FrS00_flag" {
	latches frame containing "wake_network_BMS";
}

/*HCU_HSC6_FrP05, 0x08A*/
flag "HCU_HSC6_FrP05_flag" {
	latches frame containing "ElecMotEmgcShutDwn";
}

/*ISC_HSC6_FrP03, 0x093*/
flag "ISC_HSC6_FrP03_flag" {
	latches frame containing "ISGSpd";
}

/*ISC_HSC6_FrP05, 0x397*/
flag "ISC_HSC6_FrP05_flag" {
	latches frame containing "ISGFltIO";
}

/*ISC_HSC6_FrP06, 0x398*/
flag "ISC_HSC6_FrP06_flag" {
	latches frame containing "ISGFlr1";
}

/*ISC_HSC6_FrP07, 0x395*/
flag "ISC_HSC6_FrP07_flag" {
	latches frame containing "ISGHVRdy";
}

/*TC_HSC6_FrP01, 0x094*/
flag "TC_HSC6_FrP01_flag" {
	latches frame containing "TMSpd";
}

/*TC_HSC6_FrP03, 0x39B*/
flag "TC_HSC6_FrP03_flag" {
	latches frame containing "TMFltIO";
}

/*TC_HSC6_FrP04, 0x3A6*/
flag "TC_HSC6_FrP04_flag" {
	latches frame containing "TMFlr1";
}

/*TC_HSC6_FrP07, 0x396*/
flag "TC_HSC6_FrP07_flag" {
	latches frame containing "TMHVRdy";
}

/*TC_HSC6_FrP07, 0x396*/
flag "TC_HSC6_FrP07_flag" {
	latches frame containing "TMHVRdy";
}

/*TC_HSC6_FrP07, 0x396*/
flag "TC_HSC6_FrP07_flag" {
	latches frame containing "TMHVRdy";
}

/*TC_HSC6_FrP07, 0x396*/
flag "TC_HSC6_FrP07_flag" {
	latches frame containing "TMHVRdy";
}

/*TC_HSC6_FrP07, 0x396*/
flag "TC_HSC6_FrP07_flag" {
	latches frame containing "TMHVRdy";
}

