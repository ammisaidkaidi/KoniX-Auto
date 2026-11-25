package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class nn {
    public static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
    private static nn b;
    private rv c;

    public static synchronized PorterDuffColorFilter b(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter b2;
        synchronized (nn.class) {
            b2 = rv.b(i, mode);
        }
        return b2;
    }

    public static synchronized nn d() {
        nn nnVar;
        synchronized (nn.class) {
            if (b == null) {
                f();
            }
            nnVar = b;
        }
        return nnVar;
    }

    public static synchronized void f() {
        synchronized (nn.class) {
            if (b == null) {
                nn nnVar = new nn();
                b = nnVar;
                nnVar.c = rv.e();
                b.c.g(new nm());
            }
        }
    }

    final synchronized ColorStateList a(Context context, int i) {
        return this.c.a(context, i);
    }

    public final synchronized Drawable c(Context context, int i) {
        return this.c.c(context, i);
    }

    public final synchronized void e(Context context) {
        this.c.f(context);
    }

    final synchronized Drawable g(Context context, int i) {
        return this.c.d(context, i, true);
    }
}
