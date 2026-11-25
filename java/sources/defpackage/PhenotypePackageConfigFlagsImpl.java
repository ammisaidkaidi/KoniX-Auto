package defpackage;

import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypePackageConfigFlagsImpl implements PhenotypePackageConfigFlags {
    public static final PhenotypeFlagBase a;
    public static final PhenotypeFlagBase b;
    public static final PhenotypeFlagBase c;
    public static final PhenotypeFlagBase d;
    public static final PhenotypeFlagBase e;
    public static final PhenotypeFlagBase f;
    public static final PhenotypeFlagBase g;
    public static final PhenotypeFlagBase h;
    public static final PhenotypeFlagBase i;
    public static final PhenotypeFlagBase j;
    public static final PhenotypeFlagBase k;
    public static final PhenotypeFlagBase l;
    public static final PhenotypeFlagBase m;
    public static final PhenotypeFlagBase n;
    public static final PhenotypeFlagBase o;
    public static final PhenotypeFlagBase p;
    public static final FlagContextRegistry q;

    static {
        PhenotypeFlagsFactory c2 = new PhenotypeFlagsFactory().c("gms:phenotype:");
        try {
            PhenotypeFlagBase g2 = c2.g("ph_pkgcfg_com_d_google_d_android_d_platform_d_device_u_personalization_u_services", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 19, 8, 0, 18, 15, 65, 73, 65, 73, 95, 77, 65, 84, 67, 72, 77, 65, 75, 69, 82}), bpu.e);
            a = g2;
            try {
                PhenotypeFlagBase g3 = c2.g("ph_pkgcfg_com_d_google_d_android_d_gms_d_car", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 35, 8, 0, 18, 26, 67, 76, 73, 69, 78, 84, 95, 76, 79, 71, 71, 73, 78, 71, 95, 71, 77, 83, 67, 79, 82, 69, 95, 67, 65, 82, 18, 3, 67, 65, 82}), bpu.e);
                b = g3;
                try {
                    PhenotypeFlagBase g4 = c2.g("ph_pkgcfg_com_d_google_d_android_d_gms_d_checkin_d_binary", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 23, 8, 0, 18, 4, 84, 82, 79, 78, 18, 13, 84, 82, 79, 78, 95, 67, 79, 85, 78, 84, 69, 82, 83}), bpu.e);
                    c = g4;
                    try {
                        PhenotypeFlagBase g5 = c2.g("ph_pkgcfg_com_d_google_d_android_d_gms_d_contextmanager", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, -120, 1, 8, 0, 18, 19, 67, 76, 73, 69, 78, 84, 95, 76, 79, 71, 71, 73, 78, 71, 95, 80, 82, 79, 68, 18, 38, 67, 76, 73, 69, 78, 84, 95, 76, 79, 71, 71, 73, 78, 71, 95, 71, 77, 83, 67, 79, 82, 69, 95, 67, 79, 78, 84, 69, 88, 84, 95, 77, 65, 78, 65, 71, 69, 82, 18, 17, 87, 69, 76, 76, 66, 69, 73, 78, 71, 95, 65, 78, 68, 82, 79, 73, 68, 18, 26, 87, 69, 76, 76, 66, 69, 73, 78, 71, 95, 65, 78, 68, 82, 79, 73, 68, 95, 67, 79, 85, 78, 84, 69, 82, 83, 18, 24, 87, 69, 76, 76, 66, 69, 73, 78, 71, 95, 65, 78, 68, 82, 79, 73, 68, 95, 80, 82, 73, 77, 69, 83}), bpu.e);
                        d = g5;
                        try {
                            PhenotypeFlagBase g6 = c2.g("PackageConfig__experiment_injecting_packages", (ProtoMsgSingleRepeatedField) GeneratedMessageLite.p(dgp.b, new byte[0]), bpu.f);
                            e = g6;
                            try {
                                PhenotypeFlagBase g7 = c2.g("ph_pkgcfg_com_d_google_d_android_d_projection_d_gearhead", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 27, 8, 0, 18, 23, 71, 69, 65, 82, 72, 69, 65, 68, 95, 65, 78, 68, 82, 79, 73, 68, 95, 80, 82, 73, 77, 69, 83}), bpu.e);
                                f = g7;
                                try {
                                    PhenotypeFlagBase g8 = c2.g("ph_pkgcfg_com_d_google_d_android_d_gms_d_ipa", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 13, 8, 0, 18, 9, 73, 80, 65, 95, 71, 67, 79, 82, 69}), bpu.e);
                                    g = g8;
                                    try {
                                        PhenotypeFlagBase g9 = c2.g("ph_pkgcfg_com_d_google_d_android_d_location", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 28, 8, 0, 18, 2, 76, 69, 18, 20, 65, 67, 84, 73, 86, 73, 84, 89, 95, 82, 69, 67, 79, 71, 78, 73, 84, 73, 79, 78}), bpu.e);
                                        h = g9;
                                        try {
                                            PhenotypeFlagBase g10 = c2.g("ph_pkgcfg_com_d_google_d_android_d_gms_d_pay", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 38, 8, 0, 18, 15, 84, 65, 80, 95, 65, 78, 68, 95, 80, 65, 89, 95, 65, 80, 80, 18, 17, 84, 65, 80, 95, 65, 78, 68, 95, 80, 65, 89, 95, 71, 67, 79, 82, 69}), bpu.e);
                                            i = g10;
                                            try {
                                                PhenotypeFlagBase g11 = c2.g("ph_pkgcfg_com_d_google_d_android_d_gms_d_phenotype", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 67, 8, 0, 18, 9, 80, 72, 69, 78, 79, 84, 89, 80, 69, 18, 18, 80, 72, 69, 78, 79, 84, 89, 80, 69, 95, 67, 79, 85, 78, 84, 69, 82, 83, 18, 32, 67, 76, 73, 69, 78, 84, 95, 76, 79, 71, 71, 73, 78, 71, 95, 71, 77, 83, 67, 79, 82, 69, 95, 80, 72, 69, 78, 79, 84, 89, 80, 69}), bpu.e);
                                                j = g11;
                                                try {
                                                    PhenotypeFlagBase g12 = c2.g("ph_pkgcfg_com_d_google_d_android_d_games_d_app", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 50, 8, 0, 18, 25, 80, 76, 65, 89, 95, 71, 65, 77, 69, 83, 95, 65, 78, 68, 82, 79, 73, 68, 95, 80, 82, 73, 77, 69, 83, 18, 19, 67, 76, 73, 69, 78, 84, 95, 76, 79, 71, 71, 73, 78, 71, 95, 80, 82, 79, 68}), bpu.e);
                                                    k = g12;
                                                    try {
                                                        PhenotypeFlagBase g13 = c2.g("ph_pkgcfg_com_d_google_d_android_d_gms_d_tapandpay", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 38, 8, 0, 18, 15, 84, 65, 80, 95, 65, 78, 68, 95, 80, 65, 89, 95, 65, 80, 80, 18, 17, 84, 65, 80, 95, 65, 78, 68, 95, 80, 65, 89, 95, 71, 67, 79, 82, 69}), bpu.e);
                                                        l = g13;
                                                        try {
                                                            PhenotypeFlagBase g14 = c2.g("ph_pkgcfg_com_d_google_d_android_d_gms_d_telephonyspam", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 60, 8, 0, 18, 14, 65, 78, 68, 82, 79, 73, 68, 95, 68, 73, 65, 76, 69, 82, 18, 16, 83, 67, 79, 79, 66, 89, 95, 69, 86, 69, 78, 84, 95, 76, 79, 71, 18, 22, 83, 67, 79, 79, 66, 89, 95, 83, 80, 65, 77, 95, 82, 69, 80, 79, 82, 84, 95, 76, 79, 71}), bpu.e);
                                                            m = g14;
                                                            try {
                                                                PhenotypeFlagBase g15 = c2.g("ph_pkgcfg_com_d_google_d_android_d_apps_d_tycho", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 50, 8, 0, 18, 19, 67, 76, 73, 69, 78, 84, 95, 76, 79, 71, 71, 73, 78, 71, 95, 80, 82, 79, 68, 18, 4, 78, 79, 86, 65, 18, 19, 78, 79, 86, 65, 95, 65, 78, 68, 82, 79, 73, 68, 95, 80, 82, 73, 77, 69, 83}), bpu.e);
                                                                n = g15;
                                                                try {
                                                                    PhenotypeFlagBase g16 = c2.g("ph_pkgcfg_com_d_google_d_android_d_apps_d_wellbeing", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{18, 80, 8, 0, 18, 19, 67, 76, 73, 69, 78, 84, 95, 76, 79, 71, 71, 73, 78, 71, 95, 80, 82, 79, 68, 18, 38, 67, 76, 73, 69, 78, 84, 95, 76, 79, 71, 71, 73, 78, 71, 95, 71, 77, 83, 67, 79, 82, 69, 95, 67, 79, 78, 84, 69, 88, 84, 95, 77, 65, 78, 65, 71, 69, 82, 18, 15, 67, 79, 78, 84, 69, 88, 84, 95, 77, 65, 78, 65, 71, 69, 82}), bpu.e);
                                                                    o = g16;
                                                                    try {
                                                                        PhenotypeFlagBase g17 = c2.g("ph_pkgcfg_com_d_google_d_android_d_apps_d_internal_d_zebedee", (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, new byte[]{26, 2, 8, 0}), bpu.e);
                                                                        p = g17;
                                                                        HashMap hashMap = new HashMap(16);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_platform_d_device_u_personalization_u_services", g2);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_gms_d_car", g3);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_gms_d_checkin_d_binary", g4);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_gms_d_contextmanager", g5);
                                                                        hashMap.put("PackageConfig__experiment_injecting_packages", g6);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_projection_d_gearhead", g7);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_gms_d_ipa", g8);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_location", g9);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_gms_d_pay", g10);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_gms_d_phenotype", g11);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_games_d_app", g12);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_gms_d_tapandpay", g13);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_gms_d_telephonyspam", g14);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_apps_d_tycho", g15);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_apps_d_wellbeing", g16);
                                                                        hashMap.put("ph_pkgcfg_com_d_google_d_android_d_apps_d_internal_d_zebedee", g17);
                                                                        q = new FlagContextRegistry(c2, hashMap);
                                                                    } catch (InvalidProtocolBufferException e2) {
                                                                        throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_apps_d_internal_d_zebedee\"");
                                                                    }
                                                                } catch (InvalidProtocolBufferException e3) {
                                                                    throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_apps_d_wellbeing\"");
                                                                }
                                                            } catch (InvalidProtocolBufferException e4) {
                                                                throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_apps_d_tycho\"");
                                                            }
                                                        } catch (InvalidProtocolBufferException e5) {
                                                            throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_gms_d_telephonyspam\"");
                                                        }
                                                    } catch (InvalidProtocolBufferException e6) {
                                                        throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_gms_d_tapandpay\"");
                                                    }
                                                } catch (InvalidProtocolBufferException e7) {
                                                    throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_games_d_app\"");
                                                }
                                            } catch (InvalidProtocolBufferException e8) {
                                                throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_gms_d_phenotype\"");
                                            }
                                        } catch (InvalidProtocolBufferException e9) {
                                            throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_gms_d_pay\"");
                                        }
                                    } catch (InvalidProtocolBufferException e10) {
                                        throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_location\"");
                                    }
                                } catch (InvalidProtocolBufferException e11) {
                                    throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_gms_d_ipa\"");
                                }
                            } catch (InvalidProtocolBufferException e12) {
                                throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_projection_d_gearhead\"");
                            }
                        } catch (InvalidProtocolBufferException e13) {
                            throw new AssertionError("Could not parse proto flag \"PackageConfig__experiment_injecting_packages\"");
                        }
                    } catch (InvalidProtocolBufferException e14) {
                        throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_gms_d_contextmanager\"");
                    }
                } catch (InvalidProtocolBufferException e15) {
                    throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_gms_d_checkin_d_binary\"");
                }
            } catch (InvalidProtocolBufferException e16) {
                throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_gms_d_car\"");
            }
        } catch (InvalidProtocolBufferException e17) {
            throw new AssertionError("Could not parse proto flag \"ph_pkgcfg_com_d_google_d_android_d_platform_d_device_u_personalization_u_services\"");
        }
    }

    @Override // defpackage.PhenotypePackageConfigFlags
    public final FlagContextRegistry a() {
        return q;
    }
}
