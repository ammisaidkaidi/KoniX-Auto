package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AccessPointListenerAdapterB implements AccessPointStateListener {
    final /* synthetic */ AccessPointStateListener a;
    final /* synthetic */ AccessPoint b;

    public AccessPointListenerAdapterB(AccessPoint bdqVar, AccessPointStateListener bdrVar) {
        this.b = bdqVar;
        this.a = bdrVar;
    }

    @Override // defpackage.AccessPointStateListener
    public final void a(int i) {
        this.a.a(NavInstructionTypeEnum);
        this.b.l(this);
    }

    @Override // defpackage.AccessPointStateListener
    public final void b(ApConfiguration bdtVar) {
        this.a.b(bdtVar);
        this.b.l(this);
    }

    @Override // defpackage.AccessPointStateListener
    public final void c() {
        this.a.c();
        this.b.l(this);
    }
}
