package defpackage;

import android.os.Build;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class hx {
    public final ia a;

    public hx() {
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new hz();
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.a = new hz();
        } else {
            this.a = new hy();
        }
    }

    public final ih a() {
        return this.a.a();
    }

    @Deprecated
    public final void b(eh ehVar) {
        this.a.c(ehVar);
    }

    public hx(ih ihVar) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new hz(ihVar);
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.a = new hz(ihVar);
        } else {
            this.a = new hy(ihVar);
        }
    }
}
