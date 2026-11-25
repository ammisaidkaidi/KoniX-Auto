package defpackage;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class rs extends gh {
    final rt b;
    public final Map c = new WeakHashMap();

    public rs(rt rtVar) {
        this.b = rtVar;
    }

    @Override // defpackage.gh
    public final void b(View view, AccessibilityEvent accessibilityEvent) {
        gh ghVar = (gh) this.c.get(view);
        if (ghVar != null) {
            ghVar.b(view, accessibilityEvent);
        } else {
            super.b(view, accessibilityEvent);
        }
    }

    @Override // defpackage.gh
    public final void c(View view, ik ikVar) {
        ra raVar;
        if (this.b.l() || (raVar = this.b.b.l) == null) {
            super.c(view, ikVar);
            return;
        }
        raVar.aH(view, ikVar);
        gh ghVar = (gh) this.c.get(view);
        if (ghVar != null) {
            ghVar.c(view, ikVar);
        } else {
            super.c(view, ikVar);
        }
    }

    @Override // defpackage.gh
    public final void d(View view, AccessibilityEvent accessibilityEvent) {
        gh ghVar = (gh) this.c.get(view);
        if (ghVar != null) {
            ghVar.d(view, accessibilityEvent);
        } else {
            super.d(view, accessibilityEvent);
        }
    }

    @Override // defpackage.gh
    public final void e(View view, int i) {
        gh ghVar = (gh) this.c.get(view);
        if (ghVar != null) {
            ghVar.e(view, i);
        } else {
            super.e(view, i);
        }
    }

    @Override // defpackage.gh
    public final void f(View view, AccessibilityEvent accessibilityEvent) {
        gh ghVar = (gh) this.c.get(view);
        if (ghVar != null) {
            ghVar.f(view, accessibilityEvent);
        } else {
            super.f(view, accessibilityEvent);
        }
    }

    @Override // defpackage.gh
    public final boolean g(View view, AccessibilityEvent accessibilityEvent) {
        gh ghVar = (gh) this.c.get(view);
        return ghVar != null ? ghVar.g(view, accessibilityEvent) : super.g(view, accessibilityEvent);
    }

    @Override // defpackage.gh
    public final boolean h(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        gh ghVar = (gh) this.c.get(viewGroup);
        return ghVar != null ? ghVar.h(viewGroup, view, accessibilityEvent) : super.h(viewGroup, view, accessibilityEvent);
    }

    @Override // defpackage.gh
    public final boolean i(View view, int i, Bundle bundle) {
        if (this.b.l() || this.b.b.l == null) {
            return super.i(view, i, bundle);
        }
        gh ghVar = (gh) this.c.get(view);
        if (ghVar != null) {
            if (ghVar.i(view, i, bundle)) {
                return true;
            }
        } else if (super.i(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.b.b.l.r;
        rh rhVar = recyclerView.c;
        ro roVar = recyclerView.H;
        return false;
    }

    @Override // defpackage.gh
    public final czd j(View view) {
        gh ghVar = (gh) this.c.get(view);
        return ghVar != null ? ghVar.j(view) : super.j(view);
    }
}
