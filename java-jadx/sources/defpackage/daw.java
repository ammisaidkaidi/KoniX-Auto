package defpackage;

import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class daw extends daf {
    final /* synthetic */ dax a;
    private final Callable b;

    public daw(dax daxVar, Callable callable) {
        this.a = daxVar;
        callable.getClass();
        this.b = callable;
    }

    @Override // defpackage.daf
    public final Object a() {
        return this.b.call();
    }

    @Override // defpackage.daf
    public final String b() {
        return this.b.toString();
    }

    @Override // defpackage.daf
    public final void d(Throwable th) {
        this.a.l(th);
    }

    @Override // defpackage.daf
    public final void e(Object obj) {
        this.a.k(obj);
    }

    @Override // defpackage.daf
    public final boolean g() {
        return this.a.isDone();
    }
}
