package defpackage;

import android.graphics.Typeface;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FontTypefaceLoadRunnable implements Runnable {
    final /* synthetic */ FontRequestThreadConfig a;
    final /* synthetic */ Typeface b;

    public FontTypefaceLoadRunnable(FontRequestThreadConfig ymVar, Typeface typeface) {
        this.a = ymVar;
        this.b = typeface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FontRequestThreadConfig ymVar = this.a;
        ymVar.a.a(this.b);
    }
}
