package defpackage;

import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class sp implements mc {
    lo a;
    public lr b;
    final /* synthetic */ Toolbar c;

    public sp(Toolbar toolbar) {
        this.c = toolbar;
    }

    @Override // defpackage.mc
    public final void b(Context context, lo loVar) {
        lr lrVar;
        lo loVar2 = this.a;
        if (loVar2 != null && (lrVar = this.b) != null) {
            loVar2.t(lrVar);
        }
        this.a = loVar;
    }

    @Override // defpackage.mc
    public final void c(lo loVar, boolean z) {
    }

    @Override // defpackage.mc
    public final void d(mb mbVar) {
        throw null;
    }

    @Override // defpackage.mc
    public final boolean e() {
        return false;
    }

    @Override // defpackage.mc
    public final boolean f(mk mkVar) {
        return false;
    }

    @Override // defpackage.mc
    public final boolean g(lr lrVar) {
        View view = this.c.h;
        if (view instanceof lu) {
            ((lu) view).a.onActionViewCollapsed();
        }
        Toolbar toolbar = this.c;
        toolbar.removeView(toolbar.h);
        Toolbar toolbar2 = this.c;
        toolbar2.removeView(toolbar2.g);
        Toolbar toolbar3 = this.c;
        toolbar3.h = null;
        for (int size = toolbar3.q.size() - 1; size >= 0; size--) {
            toolbar3.addView((View) toolbar3.q.get(size));
        }
        toolbar3.q.clear();
        this.b = null;
        this.c.requestLayout();
        lrVar.h(false);
        return true;
    }

    @Override // defpackage.mc
    public final boolean h(lr lrVar) {
        Toolbar toolbar = this.c;
        if (toolbar.g == null) {
            toolbar.g = new np(toolbar.getContext(), null, R.attr.toolbarNavigationButtonStyle);
            toolbar.g.setImageDrawable(toolbar.e);
            toolbar.g.setContentDescription(toolbar.f);
            sq t = Toolbar.t();
            t.a = (toolbar.m & 112) | 8388611;
            t.b = 2;
            toolbar.g.setLayoutParams(t);
            toolbar.g.setOnClickListener(new so(toolbar));
        }
        ViewParent parent = this.c.g.getParent();
        Toolbar toolbar2 = this.c;
        if (parent != toolbar2) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar2.g);
            }
            Toolbar toolbar3 = this.c;
            toolbar3.addView(toolbar3.g);
        }
        this.c.h = lrVar.getActionView();
        this.b = lrVar;
        ViewParent parent2 = this.c.h.getParent();
        Toolbar toolbar4 = this.c;
        if (parent2 != toolbar4) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar4.h);
            }
            sq t2 = Toolbar.t();
            Toolbar toolbar5 = this.c;
            t2.a = 8388611 | (toolbar5.m & 112);
            t2.b = 2;
            toolbar5.h.setLayoutParams(t2);
            Toolbar toolbar6 = this.c;
            toolbar6.addView(toolbar6.h);
        }
        Toolbar toolbar7 = this.c;
        for (int childCount = toolbar7.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar7.getChildAt(childCount);
            if (((sq) childAt.getLayoutParams()).b != 2 && childAt != toolbar7.a) {
                toolbar7.removeViewAt(childCount);
                toolbar7.q.add(childAt);
            }
        }
        this.c.requestLayout();
        lrVar.h(true);
        View view = this.c.h;
        if (view instanceof lu) {
            ((lu) view).a.onActionViewExpanded();
        }
        return true;
    }

    @Override // defpackage.mc
    public final void i() {
        if (this.b != null) {
            lo loVar = this.a;
            if (loVar != null) {
                int size = loVar.size();
                for (int i = 0; i < size; i++) {
                    if (this.a.getItem(i) == this.b) {
                        return;
                    }
                }
            }
            g(this.b);
        }
    }
}
