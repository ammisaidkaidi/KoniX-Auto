package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AccessPointListenerAdapterA implements AccessPointStateListener {
    final /* synthetic */ AccessPoint a;
    private final AtomicBoolean b = new AtomicBoolean(true);

    public AccessPointListenerAdapterA(AccessPoint bdqVar) {
        this.a = bdqVar;
    }

    @Override // defpackage.AccessPointStateListener
    public final void a(int i) {
        this.b.set(true);
    }

    @Override // defpackage.AccessPointStateListener
    public final void b(ApConfiguration bdtVar) {
        if (this.b.getAndSet(false)) {
            this.a.h.c();
        }
    }

    @Override // defpackage.AccessPointStateListener
    public final void c() {
        this.b.set(true);
    }
}
