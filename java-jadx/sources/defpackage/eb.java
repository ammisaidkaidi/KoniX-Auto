package defpackage;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class eb {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ WeakReference c;
    final /* synthetic */ om d;

    public eb() {
    }

    public eb(om omVar, int i, int i2, WeakReference weakReference) {
        this.d = omVar;
        this.a = i;
        this.b = i2;
        this.c = weakReference;
    }

    public static Handler c() {
        return new Handler(Looper.getMainLooper());
    }

    public static final void d() {
        c().post(new yb(1));
    }

    public final void a(Typeface typeface) {
        int i = this.a;
        if (i != -1) {
            typeface = Typeface.create(typeface, i, (this.b & 2) != 0);
        }
        om omVar = this.d;
        WeakReference weakReference = this.c;
        if (omVar.c) {
            omVar.b = typeface;
            TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                if (hs.F(textView)) {
                    textView.post(new ol(textView, typeface, omVar.a));
                } else {
                    textView.setTypeface(typeface, omVar.a);
                }
            }
        }
    }

    public final void b(Typeface typeface) {
        c().post(new ea(this, typeface));
    }
}
