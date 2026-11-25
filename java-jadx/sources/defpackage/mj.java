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
final class mj extends ly implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, View.OnKeyListener, mc {
    final qi a;
    View c;
    ViewTreeObserver d;
    private final Context e;
    private final lo f;
    private final ll h;
    private final boolean i;
    private final int j;
    private final int k;
    private PopupWindow.OnDismissListener m;
    private View n;
    private mb o;
    private boolean p;
    private boolean q;
    private int r;
    private boolean t;
    final ViewTreeObserver.OnGlobalLayoutListener b = new mh(this);
    private final View.OnAttachStateChangeListener l = new mi(this);
    private int s = 0;

    public mj(Context context, lo loVar, View view, int i, boolean z) {
        this.e = context;
        this.f = loVar;
        this.i = z;
        this.h = new ll(loVar, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.k = i;
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.n = view;
        this.a = new qi(context, i);
        loVar.h(this, context);
    }

    @Override // defpackage.mg
    public final ListView aJ() {
        return this.a.e;
    }

    @Override // defpackage.mc
    public final void c(lo loVar, boolean z) {
        if (loVar != this.f) {
            return;
        }
        k();
        mb mbVar = this.o;
        if (mbVar != null) {
            mbVar.a(loVar, z);
        }
    }

    @Override // defpackage.mc
    public final void d(mb mbVar) {
        this.o = mbVar;
    }

    @Override // defpackage.mc
    public final boolean e() {
        return false;
    }

    @Override // defpackage.mc
    public final boolean f(mk mkVar) {
        if (mkVar.hasVisibleItems()) {
            ma maVar = new ma(this.e, mkVar, this.c, this.i, this.k);
            maVar.e(this.o);
            maVar.d(ly.w(mkVar));
            maVar.c = this.m;
            this.m = null;
            this.f.i(false);
            qi qiVar = this.a;
            int i = qiVar.g;
            int b = qiVar.b();
            if ((Gravity.getAbsoluteGravity(this.s, hs.c(this.n)) & 7) == 5) {
                i += this.n.getWidth();
            }
            if (!maVar.g()) {
                if (maVar.a != null) {
                    maVar.f(i, b, true, true);
                }
            }
            mb mbVar = this.o;
            if (mbVar != null) {
                mbVar.b(mkVar);
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.mc
    public final void i() {
        this.q = false;
        ll llVar = this.h;
        if (llVar != null) {
            llVar.notifyDataSetChanged();
        }
    }

    @Override // defpackage.ly
    public final void j(lo loVar) {
    }

    @Override // defpackage.mg
    public final void k() {
        if (u()) {
            this.a.k();
        }
    }

    @Override // defpackage.ly
    public final void l(View view) {
        this.n = view;
    }

    @Override // defpackage.ly
    public final void m(boolean z) {
        this.h.b = z;
    }

    @Override // defpackage.ly
    public final void n(int i) {
        this.s = i;
    }

    @Override // defpackage.ly
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

    @Override // defpackage.ly
    public final void p(PopupWindow.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
    }

    @Override // defpackage.ly
    public final void q(boolean z) {
        this.t = z;
    }

    @Override // defpackage.ly
    public final void r(int i) {
        this.a.j(i);
    }

    @Override // defpackage.mg
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
        qi qiVar = this.a;
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
        qi qiVar2 = this.a;
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
        pf pfVar = this.a.e;
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

    @Override // defpackage.mg
    public final boolean u() {
        return !this.p && this.a.u();
    }
}
