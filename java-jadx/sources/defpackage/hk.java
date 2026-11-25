package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

/* compiled from: PG */
/* loaded from: classes.dex */
final class hk implements View.OnApplyWindowInsetsListener {
    ih a = null;
    final /* synthetic */ View b;
    final /* synthetic */ gx c;

    public hk(View view, gx gxVar) {
        this.b = view;
        this.c = gxVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        ih l = ih.l(windowInsets, view);
        if (Build.VERSION.SDK_INT < 30) {
            hl.d(windowInsets, this.b);
            if (l.equals(this.a)) {
                return this.c.a(view, l).m();
            }
        }
        this.a = l;
        ih a = this.c.a(view, l);
        if (Build.VERSION.SDK_INT >= 30) {
            return a.m();
        }
        hs.t(view);
        return a.m();
    }
}
