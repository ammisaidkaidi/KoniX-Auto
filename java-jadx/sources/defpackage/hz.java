package defpackage;

import android.view.WindowInsets;

/* compiled from: PG */
/* loaded from: classes.dex */
final class hz extends ia {
    final WindowInsets.Builder a;

    public hz() {
        this.a = new WindowInsets.Builder();
    }

    @Override // defpackage.ia
    public final ih a() {
        ih k = ih.k(this.a.build());
        k.o(null);
        return k;
    }

    @Override // defpackage.ia
    public final void b(eh ehVar) {
        this.a.setStableInsets(ehVar.a());
    }

    @Override // defpackage.ia
    public final void c(eh ehVar) {
        this.a.setSystemWindowInsets(ehVar.a());
    }

    public hz(ih ihVar) {
        super(ihVar);
        WindowInsets.Builder builder;
        WindowInsets m = ihVar.m();
        if (m != null) {
            builder = new WindowInsets.Builder(m);
        } else {
            builder = new WindowInsets.Builder();
        }
        this.a = builder;
    }
}
