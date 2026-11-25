package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AccessPointStartCallback implements AccessPointStateListener {
    final /* synthetic */ ProjectionDevice a;
    final /* synthetic */ WirelessDiscoveryController b;

    public AccessPointStartCallback(WirelessDiscoveryController awhVar, ProjectionDevice awoVar) {
        this.b = awhVar;
        this.a = awoVar;
    }

    @Override // defpackage.AccessPointStateListener
    public final /* synthetic */ void a(int i) {
    }

    @Override // defpackage.AccessPointStateListener
    public final void b(ApConfiguration bdtVar) {
        WirelessDiscoveryController awhVar = this.b;
        awhVar.e.d(awhVar.c, ProjectionTransportType.WIRELESS, this.a, this.b.j.b(), this.b.j.a(), true);
    }

    @Override // defpackage.AccessPointStateListener
    public final /* synthetic */ void c() {
    }
}
