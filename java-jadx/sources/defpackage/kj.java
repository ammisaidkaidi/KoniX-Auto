package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class kj {
    static {
        new ThreadLocal();
        new WeakHashMap(0);
    }

    public static ColorStateList a(Context context, int i) {
        return context.getColorStateList(i);
    }

    public static Drawable b(Context context, int i) {
        return rv.e().c(context, i);
    }
}
