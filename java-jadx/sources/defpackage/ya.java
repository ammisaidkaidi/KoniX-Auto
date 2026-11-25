package defpackage;

import android.graphics.Typeface;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ya implements Runnable {
    final /* synthetic */ ym a;
    final /* synthetic */ Typeface b;

    public ya(ym ymVar, Typeface typeface) {
        this.a = ymVar;
        this.b = typeface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ym ymVar = this.a;
        ymVar.a.a(this.b);
    }
}
