package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class PrimesDaggerProvider implements DaggerProviderInterface {
    private final /* synthetic */ int m;
    public static final /* synthetic */ PrimesDaggerProvider l = new PrimesDaggerProvider(11);
    public static final /* synthetic */ PrimesDaggerProvider k = new PrimesDaggerProvider(10);
    public static final /* synthetic */ PrimesDaggerProvider j = new PrimesDaggerProvider(9);
    public static final /* synthetic */ PrimesDaggerProvider i = new PrimesDaggerProvider(8);
    public static final /* synthetic */ PrimesDaggerProvider h = new PrimesDaggerProvider(7);
    public static final /* synthetic */ PrimesDaggerProvider g = new PrimesDaggerProvider(6);
    public static final /* synthetic */ PrimesDaggerProvider f = new PrimesDaggerProvider(5);
    public static final /* synthetic */ PrimesDaggerProvider e = new PrimesDaggerProvider(4);
    public static final /* synthetic */ PrimesDaggerProvider d = new PrimesDaggerProvider(3);
    public static final /* synthetic */ PrimesDaggerProvider c = new PrimesDaggerProvider(2);
    public static final /* synthetic */ PrimesDaggerProvider b = new PrimesDaggerProvider(1);
    public static final /* synthetic */ PrimesDaggerProvider a = new PrimesDaggerProvider(0);

    private /* synthetic */ btn(int i2) {
        this.m = i2;
    }

    @Override // defpackage.DaggerProviderInterface
    public final Object a() {
        switch (this.m) {
            case 0:
                TraceConfigurationsBuilder c2 = TraceConfigurations.c();
                c2.b(false);
                return c2.a();
            case 1:
                TimerConfigurationsBuilder c3 = TimerConfigurations.c();
                c3.b(false);
                return c3.a();
            case 2:
                return new ApplicationExitConfigurations(null);
            case 3:
                BatteryMetricConfigEntry bvqVar = new BatteryMetricConfigEntry();
                bvqVar.b = bvp.a;
                bvqVar.a = 2;
                EmptyEnumSingleton bvpVar = bvqVar.b;
                if (bvpVar != null) {
                    return new BatteryConfigurations(bvpVar);
                }
                StringBuilder sb = new StringBuilder();
                if (bvqVar.a == 0) {
                    StaggeredGridLayoutParams.append(" enablement");
                }
                if (bvqVar.b == null) {
                    StaggeredGridLayoutParams.append(" metricExtensionProvider");
                }
                throw new IllegalStateException("Missing required properties:".concat(StaggeredGridLayoutParams.toString()));
            case 4:
                CpuProfilingConfigurationsBuilder bwwVar = new CpuProfilingConfigurationsBuilder();
                bwwVar.a = 2097152;
                bwwVar.b = 30000;
                bwwVar.c = 5000;
                bwwVar.d = 1000;
                bwwVar.e = Double.valueOf(5.0d);
                bwwVar.f = 1;
                Integer num = bwwVar.a;
                if (num != null && bwwVar.b != null && bwwVar.c != null && bwwVar.d != null && bwwVar.e != null) {
                    return new CpuProfilingConfigurations(num.intValue(), bwwVar.b.intValue(), bwwVar.c.intValue(), bwwVar.d.intValue(), bwwVar.e.doubleValue());
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
                TraceConfigurationsBuilder c4 = CrashConfigurations.c();
                c4.d(false);
                return c4.c();
            case 6:
                JankConfigurationsBuilder c5 = JankConfigurations.c();
                c5.b(false);
                return c5.a();
            case 7:
                NetworkConfigurationsBuilder c6 = NetworkConfigurations.c();
                c6.b(false);
                return c6.a();
            case 8:
                StorageConfigurationsBuilder c7 = StorageConfigurations.c();
                c7.b(false);
                return c7.a();
            case 9:
                TraceConfigFlags cbaVar = new TraceConfigFlags();
                cbaVar.a = 10;
                cbaVar.b = true;
                cbaVar.d = new BinderIdentityScopeHelper();
                cbaVar.c = 2;
                Integer num2 = cbaVar.a;
                if (num2 != null && cbaVar.d != null && cbaVar.b != null) {
                    return new TikTokTraceConfigurations(num2.intValue(), cbaVar.d, cbaVar.b.booleanValue(), null, null);
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
                MemoryConfigurationsBuilder c8 = MemoryConfigurations.c();
                c8.c(false);
                return c8.a();
            default:
                return null;
        }
    }
}
