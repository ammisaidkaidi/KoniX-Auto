package defpackage;

import java.util.Random;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesStartupNetworkServicesFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final /* synthetic */ int b;

    public PrimesStartupNetworkServicesFactory(DaggerProviderInterface dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.b) {
            case 0:
                GuavaOptional cocVar = (GuavaOptional) ((SingleCheckProvider) this.a).a;
                StartupConfigurationsBuilder bzpVar = new StartupConfigurationsBuilder(null);
                return (StartupConfigurations) cocVar.b(new StartupConfigurations(bzpVar.a, bzpVar.b));
            case 1:
                return new NetworkMetricCollector(this.a);
            case 2:
                return new SamplingRandomTable((Random) this.a.a());
            default:
                Object o = ClearcutSnapshotTransmitterImpl.c((GuavaOptional) ((SingleCheckProvider) this.a).a) ? ImmutableSet.o(ClearcutProviders.b()) : csf.a;
                CommonObjectsAndPreconditionsUtil.m(IcuConfigApostropheModeAction);
                return o;
        }
    }
}
