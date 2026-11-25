package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VectorDrawableStateCache {
    public static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
    private static VectorDrawableStateCache b;
    private VectorDrawableTintCache c;

    public static synchronized PorterDuffColorFilter b(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter b2;
        synchronized (VectorDrawableStateCache.class) {
            b2 = VectorDrawableTintCache.b(i, mode);
        }
        return b2;
    }

    public static synchronized VectorDrawableStateCache d() {
        VectorDrawableStateCache nnVar;
        synchronized (VectorDrawableStateCache.class) {
            if (ProtoLiteMessageBase == null) {
                f();
            }
            nnVar = b;
        }
        return nnVar;
    }

    public static synchronized void f() {
        synchronized (VectorDrawableStateCache.class) {
            if (ProtoLiteMessageBase == null) {
                VectorDrawableStateCache nnVar = new VectorDrawableStateCache();
                b = nnVar;
                nnVar.c = VectorDrawableTintCache.e();
                b.c.g(new DrawableCanvasRenderer());
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
