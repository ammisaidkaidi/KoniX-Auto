package defpackage;

import android.graphics.Typeface;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ea implements Runnable {
    final /* synthetic */ Typeface a;
    final /* synthetic */ eb b;

    public ea(eb ebVar, Typeface typeface) {
        this.b = ebVar;
        this.a = typeface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a(this.a);
    }
}
