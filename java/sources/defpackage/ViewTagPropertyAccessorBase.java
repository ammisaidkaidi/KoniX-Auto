package defpackage;

import android.os.Build;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class ViewTagPropertyAccessorBase {
    public final int a;
    public final int b;
    private final Class c;
    private final int d;

    public ViewTagPropertyAccessorBase(int i, Class cls) {
        this(i, cls, 0, 28);
    }

    public ViewTagPropertyAccessorBase(int i, Class cls, int i2, int i3) {
        this.a = i;
        this.c = cls;
        this.b = i2;
        this.d = i3;
    }

    public abstract Object a(View view);

    final Object b(View view) {
        if (c()) {
            return a(view);
        }
        Object tag = view.getTag(this.a);
        if (this.c.isInstance(tag)) {
            return tag;
        }
        return null;
    }

    public final boolean c() {
        return Build.VERSION.SDK_INT >= this.d;
    }
}
