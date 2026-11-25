package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bdm implements bdr {
    final /* synthetic */ bdq a;
    private final AtomicBoolean b = new AtomicBoolean(true);

    public bdm(bdq bdqVar) {
        this.a = bdqVar;
    }

    @Override // defpackage.bdr
    public final void a(int i) {
        this.b.set(true);
    }

    @Override // defpackage.bdr
    public final void b(bdt bdtVar) {
        if (this.b.getAndSet(false)) {
            this.a.h.c();
        }
    }

    @Override // defpackage.bdr
    public final void c() {
        this.b.set(true);
    }
}
