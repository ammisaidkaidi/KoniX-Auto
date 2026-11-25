package defpackage;

import android.graphics.Typeface;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TypefaceCallbackDeliveryRunnable implements Runnable {
    final /* synthetic */ Typeface a;
    final /* synthetic */ ResourcesCompatFontCallback b;

    public TypefaceCallbackDeliveryRunnable(ResourcesCompatFontCallback ebVar, Typeface typeface) {
        this.b = ebVar;
        this.a = typeface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a(this.a);
    }
}
