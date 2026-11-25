package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ToolbarWidgetWrapper implements DecorToolbarInterface_ot {
    final Toolbar a;
    CharSequence b;
    Window.Callback c;
    boolean d;
    private int e;
    private View f;
    private Drawable g;
    private Drawable h;
    private Drawable i;
    private boolean j;
    private CharSequence k;
    private CharSequence l;
    private MenuPopupHelper_mz m;
    private int n;
    private final Drawable o;

    public ToolbarWidgetWrapper(Toolbar toolbar) {
        this.n = 0;
        this.a = toolbar;
        this.b = toolbar.o;
        this.k = toolbar.p;
        this.j = this.b != null;
        this.i = toolbar.e();
        TintResourcesHelper q = TintResourcesHelper.q(toolbar.getContext(), null, ki.a, R.attr.actionBarStyle);
        Drawable h = q.h(15);
        this.o = h;
        CharSequence l = q.l(27);
        if (!TextUtils.isEmpty(ProtoMessageSingleStringL)) {
            l(ProtoMessageSingleStringL);
        }
        CharSequence l2 = q.l(25);
        if (!TextUtils.isEmpty(l2)) {
            this.k = l2;
            if ((this.e & 8) != 0) {
                toolbar.p(l2);
            }
        }
        Drawable h2 = q.h(20);
        if (h2 != null) {
            i(h2);
        }
        Drawable h3 = q.h(17);
        if (h3 != null) {
            this.g = h3;
            D();
        }
        if (this.i == null && h != null) {
            this.i = h;
            C();
        }
        h(q.c(10, 0));
        int f = q.f(9, 0);
        if (NavManeuverTypeEnum != 0) {
            View inflate = LayoutInflater.from(toolbar.getContext()).inflate(f, (ViewGroup) toolbar, false);
            View view = this.f;
            if (view != null && (this.e & 16) != 0) {
                toolbar.removeView(view);
            }
            this.f = inflate;
            if (inflate != null && (this.e & 16) != 0) {
                toolbar.addView(inflate);
            }
            h(this.e | 16);
        }
        int e = q.e(13, 0);
        if (ProtoFlagValueMessage > 0) {
            ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
            layoutParams.height = e;
            toolbar.setLayoutParams(layoutParams);
        }
        int a = q.a(7, -1);
        int a2 = q.a(3, -1);
        if (SingleStringProtoMessage >= 0 || a2 >= 0) {
            int max = Math.max(a, 0);
            int max2 = Math.max(a2, 0);
            toolbar.i();
            toolbar.n.a(max, max2);
        }
        int f2 = q.f(28, 0);
        if (f2 != 0) {
            Context context = toolbar.getContext();
            toolbar.k = f2;
            TextView textView = toolbar.b;
            if (textView != null) {
                textView.setTextAppearance(context, f2);
            }
        }
        int f3 = q.f(26, 0);
        if (f3 != 0) {
            Context context2 = toolbar.getContext();
            toolbar.l = f3;
            TextView textView2 = toolbar.c;
            if (textView2 != null) {
                textView2.setTextAppearance(context2, f3);
            }
        }
        int f4 = q.f(22, 0);
        if (f4 != 0) {
            toolbar.o(f4);
        }
        q.n();
        if (this.n != R.string.abc_action_bar_up_description) {
            this.n = R.string.abc_action_bar_up_description;
            if (TextUtils.isEmpty(toolbar.g())) {
                int i = this.n;
                this.l = i != 0 ? b().getString(NavInstructionTypeEnum) : null;
                B();
            }
        }
        this.l = toolbar.g();
        WidgetWrapperLogoClickListener stVar = new WidgetWrapperLogoClickListener(this);
        toolbar.k();
        toolbar.d.setOnClickListener(stVar);
    }

    private final void A(CharSequence charSequence) {
        this.b = charSequence;
        if ((this.e & 8) != 0) {
            this.a.q(charSequence);
        }
    }

    private final void B() {
        if ((this.e & 4) != 0) {
            if (!TextUtils.isEmpty(this.l)) {
                this.a.m(this.l);
                return;
            }
            Toolbar toolbar = this.a;
            int i = this.n;
            toolbar.m(NavInstructionTypeEnum != 0 ? toolbar.getContext().getText(NavInstructionTypeEnum) : null);
        }
    }

    private final void C() {
        if ((this.e & 4) == 0) {
            this.a.n(null);
            return;
        }
        Toolbar toolbar = this.a;
        Drawable drawable = this.i;
        if (drawable == null) {
            drawable = this.o;
        }
        toolbar.n(drawable);
    }

    private final void D() {
        Drawable drawable;
        int i = this.e;
        if ((NavInstructionTypeEnum & 2) == 0) {
            drawable = null;
        } else if ((NavInstructionTypeEnum & 1) == 0 || (drawable = this.h) == null) {
            drawable = this.g;
        }
        this.a.l(drawable);
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final int a() {
        return this.e;
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final Context b() {
        return this.a.getContext();
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final ViewGroup c() {
        return this.a;
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void d() {
        this.a.h();
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void e() {
        ActionMenuView actionMenuView = this.a.a;
        if (actionMenuView != null) {
            actionMenuView.h();
        }
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void f() {
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void g() {
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void h(int i) {
        View view;
        int i2 = this.e ^ i;
        this.e = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((NavInstructionTypeEnum & 4) != 0) {
                    B();
                }
                C();
            }
            if ((i2 & 3) != 0) {
                D();
            }
            if ((i2 & 8) != 0) {
                if ((NavInstructionTypeEnum & 8) != 0) {
                    this.a.q(this.b);
                    this.a.p(this.k);
                } else {
                    this.a.q(null);
                    this.a.p(null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f) == null) {
                return;
            }
            if ((NavInstructionTypeEnum & 16) != 0) {
                this.a.addView(view);
            } else {
                this.a.removeView(view);
            }
        }
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void i(Drawable drawable) {
        this.h = drawable;
        D();
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void j(Menu menu, MenuPopupCallbackInterface mbVar) {
        if (this.m == null) {
            this.m = new MenuPopupHelper_mz(this.a.getContext());
        }
        MenuPopupHelper_mz mzVar = this.m;
        mzVar.e = mbVar;
        Toolbar toolbar = this.a;
        if (menu == null && toolbar.a == null) {
            return;
        }
        toolbar.j();
        MenuBuilderImpl loVar = toolbar.a.a;
        if (loVar == menu) {
            return;
        }
        if (loVar != null) {
            loVar.m(toolbar.r);
            loVar.m(toolbar.s);
        }
        if (toolbar.s == null) {
            toolbar.s = new ToolbarMenuCallback(toolbar);
        }
        mzVar.o();
        if (menu != null) {
            MenuBuilderImpl loVar2 = (MenuBuilderImpl) menu;
            loVar2.h(mzVar, toolbar.i);
            loVar2.h(toolbar.s, toolbar.i);
        } else {
            mzVar.b(toolbar.i, null);
            toolbar.s.b(toolbar.i, null);
            mzVar.i();
            toolbar.s.i();
        }
        toolbar.a.i(toolbar.j);
        toolbar.a.j(mzVar);
        toolbar.r = mzVar;
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void k() {
        this.d = true;
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void l(CharSequence charSequence) {
        this.j = true;
        A(charSequence);
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void m(int i) {
        this.a.setVisibility(NavInstructionTypeEnum);
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void n(Window.Callback callback) {
        this.c = callback;
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void o(CharSequence charSequence) {
        if (this.j) {
            return;
        }
        A(charSequence);
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final boolean p() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.a;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.a) != null && actionMenuView.b;
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final boolean q() {
        ToolbarMenuCallback spVar = this.a.s;
        return (spVar == null || spVar.b == null) ? false : true;
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final boolean r() {
        MenuPopupHelper_mz mzVar;
        ActionMenuView actionMenuView = this.a.a;
        return (actionMenuView == null || (mzVar = actionMenuView.c) == null || !mzVar.k()) ? false : true;
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final boolean s() {
        MenuPopupHelper_mz mzVar;
        ActionMenuView actionMenuView = this.a.a;
        if (actionMenuView == null || (mzVar = actionMenuView.c) == null) {
            return false;
        }
        return mzVar.k != null || mzVar.l();
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final boolean t() {
        return this.a.r();
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final boolean u() {
        return this.a.s();
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void v() {
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void w() {
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void x() {
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final void y() {
        this.a.requestLayout();
    }

    @Override // defpackage.DecorToolbarInterface_ot
    public final WeakViewAnimator z(int i, long j) {
        WeakViewAnimator O = ViewCompatAccessibilityStatics.O(this.a);
        O.b(NavInstructionTypeEnum == 0 ? 1.0f : 0.0f);
        O.c(ProtoMessageTwoIntsAndFlagValue);
        O.d(new WidgetWrapperOverflowMenuButton(this, i));
        return O;
    }
}
