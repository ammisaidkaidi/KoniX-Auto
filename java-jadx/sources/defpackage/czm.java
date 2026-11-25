package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class czm implements czb {
    final /* synthetic */ czo a;
    final /* synthetic */ czb b;

    public czm(czo czoVar, czb czbVar) {
        this.a = czoVar;
        this.b = czbVar;
    }

    @Override // defpackage.czb
    public final dag a() {
        return !this.a.compareAndSet(czn.NOT_RUN, czn.STARTED) ? hh.h() : this.b.a();
    }

    public final String toString() {
        return this.b.toString();
    }
}
