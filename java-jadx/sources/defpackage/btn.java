package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class btn implements dny {
    private final /* synthetic */ int m;
    public static final /* synthetic */ btn l = new btn(11);
    public static final /* synthetic */ btn k = new btn(10);
    public static final /* synthetic */ btn j = new btn(9);
    public static final /* synthetic */ btn i = new btn(8);
    public static final /* synthetic */ btn h = new btn(7);
    public static final /* synthetic */ btn g = new btn(6);
    public static final /* synthetic */ btn f = new btn(5);
    public static final /* synthetic */ btn e = new btn(4);
    public static final /* synthetic */ btn d = new btn(3);
    public static final /* synthetic */ btn c = new btn(2);
    public static final /* synthetic */ btn b = new btn(1);
    public static final /* synthetic */ btn a = new btn(0);

    private /* synthetic */ btn(int i2) {
        this.m = i2;
    }

    @Override // defpackage.dny
    public final Object a() {
        switch (this.m) {
            case 0:
                cbd c2 = cbe.c();
                c2.b(false);
                return c2.a();
            case 1:
                cao c3 = cap.c();
                c3.b(false);
                return c3.a();
            case 2:
                return new bxn(null);
            case 3:
                bvq bvqVar = new bvq();
                bvqVar.b = bvp.a;
                bvqVar.a = 2;
                bvp bvpVar = bvqVar.b;
                if (bvpVar != null) {
                    return new bvr(bvpVar);
                }
                StringBuilder sb = new StringBuilder();
                if (bvqVar.a == 0) {
                    sb.append(" enablement");
                }
                if (bvqVar.b == null) {
                    sb.append(" metricExtensionProvider");
                }
                throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
            case 4:
                bww bwwVar = new bww();
                bwwVar.a = 2097152;
                bwwVar.b = 30000;
                bwwVar.c = 5000;
                bwwVar.d = 1000;
                bwwVar.e = Double.valueOf(5.0d);
                bwwVar.f = 1;
                Integer num = bwwVar.a;
                if (num != null && bwwVar.b != null && bwwVar.c != null && bwwVar.d != null && bwwVar.e != null) {
                    return new bwx(num.intValue(), bwwVar.b.intValue(), bwwVar.c.intValue(), bwwVar.d.intValue(), bwwVar.e.doubleValue());
                }
                StringBuilder sb2 = new StringBuilder();
                if (bwwVar.f == 0) {
                    sb2.append(" enablement");
                }
                if (bwwVar.a == null) {
                    sb2.append(" maxBufferSizeBytes");
                }
                if (bwwVar.b == null) {
                    sb2.append(" sampleDurationMs");
                }
                if (bwwVar.c == null) {
                    sb2.append(" sampleDurationSkewMs");
                }
                if (bwwVar.d == null) {
                    sb2.append(" sampleFrequencyMicro");
                }
                if (bwwVar.e == null) {
                    sb2.append(" samplesPerEpoch");
                }
                throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
            case 5:
                cbd c4 = bxf.c();
                c4.d(false);
                return c4.c();
            case 6:
                byj c5 = byk.c();
                c5.b(false);
                return c5.a();
            case 7:
                bzg c6 = bzh.c();
                c6.b(false);
                return c6.a();
            case 8:
                caj c7 = cak.c();
                c7.b(false);
                return c7.a();
            case 9:
                cba cbaVar = new cba();
                cbaVar.a = 10;
                cbaVar.b = true;
                cbaVar.d = new act();
                cbaVar.c = 2;
                Integer num2 = cbaVar.a;
                if (num2 != null && cbaVar.d != null && cbaVar.b != null) {
                    return new cbb(num2.intValue(), cbaVar.d, cbaVar.b.booleanValue(), null, null);
                }
                StringBuilder sb3 = new StringBuilder();
                if (cbaVar.c == 0) {
                    sb3.append(" enablement");
                }
                if (cbaVar.a == null) {
                    sb3.append(" rateLimitPerSecond");
                }
                if (cbaVar.d == null) {
                    sb3.append(" dynamicSampler");
                }
                if (cbaVar.b == null) {
                    sb3.append(" recordTimerDuration");
                }
                throw new IllegalStateException("Missing required properties:".concat(sb3.toString()));
            case 10:
                byp c8 = byq.c();
                c8.c(false);
                return c8.a();
            default:
                return null;
        }
    }
}
