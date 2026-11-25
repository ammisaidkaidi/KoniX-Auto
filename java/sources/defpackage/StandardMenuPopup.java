package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class StandardMenuPopup extends MenuPopupBase implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, View.OnKeyListener, mc {
    final MenuListPopupWindow a;
    View c;
    ViewTreeObserver d;
    private final Context e;
    private final MenuBuilderImpl f;
    private final MenuAdapterWithHeaders h;
    private final boolean i;
    private final int j;
    private final int k;
    private PopupWindow.OnDismissListener m;
    private View n;
    private MenuPopupCallbackInterface o;
    private boolean p;
    private boolean q;
    private int r;
    private boolean t;
    final ViewTreeObserver.OnGlobalLayoutListener b = new PopupGlobalLayoutListenerMh(this);
    private final View.OnAttachStateChangeListener l = new PopupAttachListenerMi(this);
    private int s = 0;

    public StandardMenuPopup(Context context, MenuBuilderImpl loVar, View view, int i, boolean z) {
        this.e = context;
        this.f = loVar;
        this.i = z;
        this.h = new MenuAdapterWithHeaders(loVar, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.k = i;
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.n = view;
        this.a = new MenuListPopupWindow(context, i);
        loVar.h(this, context);
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final ListView aJ() {
        return this.a.e;
    }

    @Override // defpackage.MenuPresenterInterface
    public final void c(MenuBuilderImpl loVar, boolean z) {
        if (loVar != this.f) {
            return;
        }
        k();
        MenuPopupCallbackInterface mbVar = this.o;
        if (mbVar != null) {
            mbVar.a(loVar, z);
        }
    }

    @Override // defpackage.MenuPresenterInterface
    public final void d(MenuPopupCallbackInterface mbVar) {
        this.o = mbVar;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean e() {
        return false;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean f(SubMenuBuilder mkVar) {
        if (mkVar.hasVisibleItems()) {
            MenuPopupHelper_ma maVar = new MenuPopupHelper_ma(this.e, mkVar, this.c, this.i, this.k);
            maVar.e(this.o);
            maVar.d(MenuPopupBase.w(mkVar));
            maVar.c = this.m;
            this.m = null;
            this.f.i(false);
            MenuListPopupWindow qiVar = this.a;
            int i = qiVar.g;
            int b = qiVar.b();
            if ((Gravity.getAbsoluteGravity(this.s, ViewCompatAccessibilityStatics.c(this.n)) & 7) == 5) {
                i += this.n.getWidth();
            }
            if (!maVar.g()) {
                if (maVar.a != null) {
                    maVar.f(i, b, true, true);
                }
            }
            MenuPopupCallbackInterface mbVar = this.o;
            if (mbVar != null) {
                mbVar.b(mkVar);
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.MenuPresenterInterface
    public final void i() {
        this.q = false;
        MenuAdapterWithHeaders llVar = this.h;
        if (llVar != null) {
            llVar.notifyDataSetChanged();
        }
    }

    @Override // defpackage.MenuPopupBase
    public final void j(MenuBuilderImpl loVar) {
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final void k() {
        if (u()) {
            this.a.k();
        }
    }

    @Override // defpackage.MenuPopupBase
    public final void l(View view) {
        this.n = view;
    }

    @Override // defpackage.MenuPopupBase
    public final void m(boolean z) {
        this.h.b = z;
    }

    @Override // defpackage.MenuPopupBase
    public final void n(int i) {
        this.s = i;
    }

    @Override // defpackage.MenuPopupBase
    public final void o(int i) {
        this.a.g = i;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.p = true;
        this.f.close();
        ViewTreeObserver viewTreeObserver = this.d;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.d = this.c.getViewTreeObserver();
            }
            this.d.removeGlobalOnLayoutListener(this.b);
            this.d = null;
        }
        this.c.removeOnAttachStateChangeListener(this.l);
        PopupWindow.OnDismissListener onDismissListener = this.m;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        k();
        return true;
    }

    @Override // defpackage.MenuPopupBase
    public final void p(PopupWindow.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
    }

    @Override // defpackage.MenuPopupBase
    public final void q(boolean z) {
        this.t = z;
    }

    @Override // defpackage.MenuPopupBase
    public final void r(int i) {
        this.a.j(NavInstructionTypeEnum);
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final void s() {
        View view;
        if (u()) {
            return;
        }
        if (this.p || (view = this.n) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.c = view;
        this.a.t(this);
        MenuListPopupWindow qiVar = this.a;
        qiVar.l = this;
        qiVar.x();
        View view2 = this.c;
        ViewTreeObserver viewTreeObserver = this.d;
        ViewTreeObserver viewTreeObserver2 = view2.getViewTreeObserver();
        this.d = viewTreeObserver2;
        if (viewTreeObserver == null) {
            viewTreeObserver2.addOnGlobalLayoutListener(this.b);
        }
        view2.addOnAttachStateChangeListener(this.l);
        MenuListPopupWindow qiVar2 = this.a;
        qiVar2.k = view2;
        qiVar2.j = this.s;
        if (!this.q) {
            this.r = x(this.h, this.e, this.j);
            this.q = true;
        }
        this.a.q(this.r);
        this.a.w();
        this.a.r(this.g);
        this.a.s();
        DropDownListView pfVar = this.a.e;
        pfVar.setOnKeyListener(this);
        if (this.t && this.f.e != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.e).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) pfVar, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            if (textView != null) {
                textView.setText(this.f.e);
            }
            frameLayout.setEnabled(false);
            pfVar.addHeaderView(frameLayout, null, false);
        }
        this.a.e(this.h);
        this.a.s();
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final boolean u() {
        return !this.p && this.a.u();
    }
}
