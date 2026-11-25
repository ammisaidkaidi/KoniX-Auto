package defpackage;

import android.location.LocationManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CarInfoModuleFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;
    private final DaggerProviderInterface g;
    private final DaggerProviderInterface h;
    private final DaggerProviderInterface i;
    private final DaggerProviderInterface j;
    private final DaggerProviderInterface k;
    private final DaggerProviderInterface l;
    private final DaggerProviderInterface m;

    public CarInfoModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, DaggerProviderInterface dnyVar9, DaggerProviderInterface dnyVar10, DaggerProviderInterface dnyVar11, DaggerProviderInterface dnyVar12, DaggerProviderInterface dnyVar13) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.h = dnyVar8;
        this.i = dnyVar9;
        this.j = dnyVar10;
        this.k = dnyVar11;
        this.l = dnyVar12;
        this.m = dnyVar13;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* bridge */ /* synthetic */ Object a() {
        return new WirelessDiscoveryController(((AppContextProviderFactory) this.a).a(), (DeviceTracker) this.b.a(), (AndroidAutoHeadunitProjectionHandler) this.c.a(), (AccessPoint) this.d.a(), (FlagSourceDependencies) this.e.a(), (LocationManager) this.f.a(), (WirelessSocketProvider) this.g.a(), (OemSettings) this.h.a(), (CarInfoProvider) this.i.a(), ((DisplayDimensionsFactory) this.j).a(), (WifiUtils) this.k.a(), (TelemetryTracker) this.l.a(), ((ContextProviderFactory_axu) this.m).a(), null, null, null);
    }
}
