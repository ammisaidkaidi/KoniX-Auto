package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class or {
    public final oq a = new oq();
    public final List b = new ArrayList();
    public final qw c;

    public or(qw qwVar, byte[] bArr) {
        this.c = qwVar;
    }

    public final int a() {
        return this.c.g() - this.b.size();
    }

    public final int b(int i) {
        if (i < 0) {
            return -1;
        }
        int g = this.c.g();
        int i2 = i;
        while (i2 < g) {
            int a = i - (i2 - this.a.a(i2));
            if (a == 0) {
                while (this.a.f(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += a;
        }
        return -1;
    }

    public final int c() {
        return this.c.g();
    }

    final int d(View view) {
        int h = this.c.h(view);
        if (h == -1 || this.a.f(h)) {
            return -1;
        }
        return h - this.a.a(h);
    }

    public final View e(int i) {
        return this.c.i(b(i));
    }

    public final View f(int i) {
        return this.c.i(i);
    }

    public final void g(View view, int i, boolean z) {
        int g = i < 0 ? this.c.g() : b(0);
        this.a.c(g, z);
        if (z) {
            j(view);
        }
        qw qwVar = this.c;
        qwVar.a.addView(view, g);
        RecyclerView recyclerView = qwVar.a;
        rr h = RecyclerView.h(view);
        qq qqVar = recyclerView.k;
        if (qqVar == null || h == null) {
            return;
        }
        qqVar.onViewAttachedToWindow(h);
    }

    public final void h(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int g = i < 0 ? this.c.g() : b(i);
        this.a.c(g, z);
        if (z) {
            j(view);
        }
        qw qwVar = this.c;
        rr h = RecyclerView.h(view);
        if (h != null) {
            if (!h.isTmpDetached() && !h.shouldIgnore()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + h + qwVar.a.k());
            }
            h.clearTmpDetachFlag();
        }
        qwVar.a.attachViewToParent(view, g, layoutParams);
    }

    final void i(int i) {
        rr h;
        int b = b(i);
        this.a.g(b);
        qw qwVar = this.c;
        View i2 = qwVar.i(b);
        if (i2 != null && (h = RecyclerView.h(i2)) != null) {
            if (h.isTmpDetached() && !h.shouldIgnore()) {
                throw new IllegalArgumentException("called detach on an already detached child " + h + qwVar.a.k());
            }
            h.addFlags(256);
        }
        qwVar.a.detachViewFromParent(b);
    }

    public final void j(View view) {
        this.b.add(view);
        qw qwVar = this.c;
        rr h = RecyclerView.h(view);
        if (h != null) {
            h.onEnteredHiddenState(qwVar.a);
        }
    }

    public final boolean k(View view) {
        return this.b.contains(view);
    }

    public final void l(View view) {
        if (this.b.remove(view)) {
            this.c.j(view);
        }
    }

    public final String toString() {
        return this.a.toString() + ", hidden list:" + this.b.size();
    }
}
