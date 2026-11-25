package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
final class be extends bf {
    private final boolean c;
    private boolean d;
    private bw e;

    public be(dl dlVar, xv xvVar, boolean z) {
        super(dlVar, xvVar);
        this.d = false;
        this.c = z;
    }

    final bw a(Context context) {
        if (this.d) {
            return this.e;
        }
        dl dlVar = this.a;
        bw e = r.e(context, dlVar.a, dlVar.e == 2, this.c);
        this.e = e;
        this.d = true;
        return e;
    }
}
