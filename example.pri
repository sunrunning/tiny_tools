/* ************************************************************************** */
/*                                                                            */
/*                    Mentor Graphics Corporation                             */
/*                        All rights reserved                                 */
/*                                                                            */
/* ************************************************************************** */
/*                                                                            */
/*  Description:   Network file for Volcano 6.2                               */
/*  Project:       IP3X                                                       */
/*  Release:       IP34_EP2_V04                                               */
/*  Configuration: IP34_EP2_V04                                               */
/*  Node:          Telematics_BOX                                             */
/*                                                                            */
/* ************************************************************************** */



private_file;
volcano version "6.2";

/*receive signal*/

/*GW_HSC5_BCM_FrS13, 0x21*/

flag "rx_flag_hscan_msg_0x21" {
    latches frame containing "BCMRmtCtrlPotcl";
}

flag "DiagnosticReq_h6TBOX_flag" {
    latches frame containing "DiagnosticReq_h6TBOX";
}

/*GW_HSC5_AC_FrP01, 0x361*/
flag "GW_HSC5_AC_FrP01_flag" {
    latches frame containing "ACInCarTem";
}

/*GW_HSC5_AC_FrP01, 0x2FB*/
flag "GW_HSC5_AC_FrP08_flag" {
    latches frame containing "AirClnrFltrLife";
}

/*GW_HSC5_BCM_FrP02, 0x473 */
flag "GW_HSC5_BCM_FrP02_flag" {
    latches frame containing "VINBCM";
}

/*GW_HSC5_BCM_FrP04, 0x46A */
flag "GW_HSC5_BCM_FrP04_flag" {
    latches frame containing "AutoLghtOnReq";
}

/*GW_HSC5_BCM_FrP09, 0x21D */
flag "GW_HSC5_BCM_FrP09_flag" {
    latches frame containing "RVSSts";
}

/*GW_HSC5_BCM_FrP10, 0x518 */
flag "GW_HSC5_BCM_FrP10_flag" {
    latches frame containing "KeyRefc";
}

/*GW_HSC5_BCM_FrS09, 0x3c */
flag "GW_HSC5_BCM_FrS09_flag" {
    latches frame containing "BCMImmoData4";
}

/*GW_HSC5_BCM_FrS10, 0x3d */
flag "GW_HSC5_BCM_FrS10_flag" {
    latches frame containing "BCMImmoData5";
}

/*GW_HSC5_ECM_FrP00, 0xc9 */
flag "GW_HSC5_ECM_FrP00_flag" {
    latches frame containing "ClstrDspdVehSpd";
}

/*GW_HSC5_ECM_FrP04,0x194*/
flag "GW_HSC5_ECM_FrP04_flag" {
    latches frame containing "EPTRdy";
}

/*GW_HSC5_ECM_FrP12,0x3d1*/
//flag "GW_HSC5_ECM_FrP12_flag" {
//    latches frame containing "ABSIO";
//}

/*GW_HSC5_ECM_FrP14,0x4c1*/
//flag "GW_HSC5_ECM_FrP14_flag" {
//    latches frame containing "BarPrsAbsV";
//}

/*GW_HSC5_FICM_FrP12,0x367*/
flag "GW_HSC5_FICM_FrP12_flag" {
    latches frame containing "RmnDrvngDist";
}

/*GW_HSC5_FrP01,0x1f1*/
flag "GW_HSC5_FrP01_flag" {
    latches frame containing "SysPwrMd";
}

/*GW_HSC5_FrP02,0xf1*/
flag "GW_HSC5_FrP02_flag" {
    latches frame containing "BrkPdlPos";
}

/*GW_HSC5_FrP05,0x1f2*/
flag "GW_HSC5_FrP05_flag" {
    latches frame containing "SysBPM";
}

/*GW_HSC5_FrP08, 0x540*/
//flag "GW_HSC5_FrP08_flag" {
//    latches frame containing "VehOdo";
//}

/*GW_HSC5_FrP10, 0x3f1*/
flag "GW_HSC5_FrP10_flag" {
    latches frame containing "OtsdAirTemCrVal";
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

/*GW_HSC5_SCS_FrP015, 0x353*/
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

/*BMS_Charger_HSC6_FrP01: 0x3b8*/
flag "BMS_Charger_HSC6_FrP01_flag" {
    latches frame containing "ChargerStatus";
}

/*BMS_HSC6_FrP01: 0x295*/
flag "BMS_HSC6_FrP01_flag" {
    latches frame containing "BMSPackCrnt";
}

/*BMS_HSC6_FrP02: 0x297*/
flag "BMS_HSC6_FrP02_flag" {
    latches frame containing "BMSBscSta";
}

/*BMS_HSC6_FrP04: 0x29c*/
flag "BMS_HSC6_FrP04_flag" {
    latches frame containing "BMSChrgRmnHour";
}

/*BMS_HSC6_FrP08: 0x44c*/
flag "keep_network_BMS_flag" {
    latches signal "keep_network_BMS";
}

/*BMS_HSC6_FrP10: 0x173*/
flag "BMS_HSC6_FrP10_flag" {
    latches frame containing "BMSCellMaxVol";
}

/*BMS_HSC6_FrP11: 0x2a2*/
flag "BMS_HSC6_FrP11_flag" {
    latches frame containing "BMSCellMaxTem";
}

/*BMS_HSC6_FrP13: 0x3ac*/
flag "BMS_HSC6_FrP13_flag" {
    latches frame containing "BMSPackSOCDsp";
}

/*BMS_HSC6_FrP14: 0x391*/
flag "BMS_HSC6_FrP14_flag" {
    latches frame containing "BMSChrgSts";
}

/*BMS_HSC6_FrP15: 0x393*/
flag "BMS_HSC6_FrP15_flag" {
    latches frame containing "BMSReserChrgCtrlDspCmd";
}

/*BMS_HSC6_FrS00: 0x443*/
flag "wake_network_BMS_flag" {
    latches signal "wake_network_BMS";
}

/*HCU_HSC6_FrP05: 0x8a*/
flag "HCU_HSC6_FrP05_flag" {
    latches frame containing "ElecMotEmgcShutDwn";
}

/*ISC_HSC6_FrP03: 0x93*/
flag "ISC_HSC6_FrP03_flag" {
    latches frame containing "ISGSpd";
}

/*ISC_HSC6_FrP05: 0x397*/
flag "ISC_HSC6_FrP05_flag" {
    latches frame containing "ISGFltIO";
}

/*ISC_HSC6_FrP06: 0x398*/
flag "ISC_HSC6_FrP06_flag" {
    latches frame containing "ISGFlr1";
}

/*ISC_HSC6_FrP07: 0x395*/
flag "ISC_HSC6_FrP07_flag" {
    latches frame containing "ISGHVRdy";
}

/*TC_HSC6_FrP01: 0x94*/
flag "TC_HSC6_FrP01_flag" {
    latches frame containing "TMSpd";
}

/*TC_HSC6_FrP03: 0x39b*/
flag "TC_HSC6_FrP03_flag" {
    latches frame containing "TMFltIO";
}
/*TC_HSC6_FrP04: 0x3a6*/
flag "TC_HSC6_FrP04_flag" {
    latches frame containing "TMFlr1";
}

/*TC_HSC6_FrP07: 0x396*/
flag "TC_HSC6_FrP07_flag" {
    latches frame containing "TMHVRdy";
}






