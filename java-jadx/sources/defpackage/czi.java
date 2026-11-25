package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class czi extends cyw {
    private czh c;

    public czi(cqa cqaVar, boolean z, Executor executor, czb czbVar) {
        super(cqaVar, z, false);
        this.c = new czf(this, czbVar, executor);
        r();
    }

    @Override // defpackage.cyp
    protected final void i() {
        czh czhVar = this.c;
        if (czhVar != null) {
            czhVar.h();
        }
    }

    @Override // defpackage.cyw
    public final void n(int i, Object obj) {
    }

    @Override // defpackage.cyw
    public final void q() {
        czh czhVar = this.c;
        if (czhVar != null) {
            czhVar.f();
        }
    }

    @Override // defpackage.cyw
    public final void s(int i) {
        super.s(i);
        if (i == 1) {
            this.c = null;
        }
    }

    public czi(cqa cqaVar, boolean z, Executor executor, Callable callable) {
        super(cqaVar, z, false);
        this.c = new czg(this, callable, executor);
        r();
    }
}
