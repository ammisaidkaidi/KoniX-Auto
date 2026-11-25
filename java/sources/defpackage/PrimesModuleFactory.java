package defpackage;

import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.os.UserManager;
import j$.util.Optional;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesModuleFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;
    private final DaggerProviderInterface g;
    private final DaggerProviderInterface h;
    private final /* synthetic */ int i;

    public PrimesModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, int i) {
        this.i = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.h = dnyVar8;
    }

    public PrimesModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, int i, byte[] bArr) {
        this.i = i;
        this.b = dnyVar;
        this.f = dnyVar2;
        this.e = dnyVar3;
        this.g = dnyVar4;
        this.h = dnyVar5;
        this.c = dnyVar6;
        this.d = dnyVar7;
        this.a = dnyVar8;
    }

    public PrimesModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, int i, char[] cArr) {
        this.i = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.h = dnyVar3;
        this.c = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.d = dnyVar8;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.i) {
            case 0:
                return new PhenotypeManager(((AppContextProviderFactory) this.a).a(), (PhenotypeDatabaseApi) this.b.a(), (Optional) ((SingleCheckProvider) this.c).a, (ListeningScheduledExecutorService) this.d.a(), (ConnectivityManager) this.e.a(), (PackageManager) this.f.a(), (UserManager) this.g.a(), (Optional) this.h.a());
            case 1:
                AppContextModule a = ((ContextProviderFactory_axu) this.b).a();
                DaggerProviderInterface dnyVar = this.f;
                SamplingRateProvider a2 = ((PrimesTracerFactory) this.e).a();
                OemSettings bcjVar = (OemSettings) this.g.a();
                return new AudioStreamConstants(a, dnyVar, a2, bcjVar, (AudioFocusLossHandlerBase) this.c.a(), ((AppContextProviderFactory) this.d).a(), (ReleaseChannelEnum) this.a.a(), null, null, null);
            default:
                MetricDispatcherAssistedFactory a3 = ((MetricDispatcherFactory) this.b).a();
                ((AppContextProviderFactory) this.a).a();
                return new NetworkMetricCollectorImpl(a3, (PrimesLifecycleRegistrar) this.h.a(), (ListeningScheduledExecutorService) this.c.a(), DoubleCheckProvider.b(this.e), DoubleCheckProvider.b(this.f), this.g, (Executor) this.d.a());
        }
    }
}
