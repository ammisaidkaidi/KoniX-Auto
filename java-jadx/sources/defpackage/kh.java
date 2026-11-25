package defpackage;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class kh extends iv implements mr {
    private static final Interpolator r = new AccelerateInterpolator();
    private static final Interpolator s = new DecelerateInterpolator();
    Context a;
    ActionBarOverlayLayout b;
    public ActionBarContainer c;
    public ot d;
    ActionBarContextView e;
    View f;
    kg g;
    ko h;
    kn i;
    public int j;
    public boolean k;
    public boolean l;
    public kw m;
    boolean n;
    final hv o;
    final hv p;
    final kf q;
    private Context t;
    private boolean u;
    private boolean v;
    private final ArrayList w;
    private boolean x;
    private boolean y;
    private boolean z;

    public kh(Activity activity, boolean z) {
        new ArrayList();
        this.w = new ArrayList();
        this.j = 0;
        this.k = true;
        this.y = true;
        this.o = new kd(this);
        this.p = new ke(this);
        this.q = new kf(this);
        View decorView = activity.getWindow().getDecorView();
        l(decorView);
        if (z) {
            return;
        }
        this.f = decorView.findViewById(R.id.content);
    }

    static boolean k(boolean z, boolean z2) {
        return z2 || !z;
    }

    private final void l(View view) {
        ot f;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.google.android.embedded.projection.R.id.decor_content_parent);
        this.b = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.h = this;
            if (actionBarOverlayLayout.getWindowToken() != null) {
                ((kh) actionBarOverlayLayout.h).j = actionBarOverlayLayout.b;
                int i = actionBarOverlayLayout.g;
                if (i != 0) {
                    actionBarOverlayLayout.onWindowSystemUiVisibilityChanged(i);
                    hs.t(actionBarOverlayLayout);
                }
            }
        }
        KeyEvent.Callback findViewById = view.findViewById(com.google.android.embedded.projection.R.id.action_bar);
        if (findViewById instanceof ot) {
            f = (ot) findViewById;
        } else {
            if (!(findViewById instanceof Toolbar)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't make a decor toolbar out of ");
                sb.append(findViewById != null ? findViewById.getClass().getSimpleName() : "null");
                throw new IllegalStateException(sb.toString());
            }
            f = ((Toolbar) findViewById).f();
        }
        this.d = f;
        this.e = (ActionBarContextView) view.findViewById(com.google.android.embedded.projection.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.google.android.embedded.projection.R.id.action_bar_container);
        this.c = actionBarContainer;
        ot otVar = this.d;
        if (otVar == null || this.e == null || actionBarContainer == null) {
            throw new IllegalStateException(String.valueOf(getClass().getSimpleName()).concat(" can only be used with a compatible window decor layout"));
        }
        this.a = otVar.b();
        if ((this.d.a() & 4) != 0) {
            this.u = true;
        }
        Context context = this.a;
        int i2 = context.getApplicationInfo().targetSdkVersion;
        this.d.x();
        i(hl.k(context));
        TypedArray obtainStyledAttributes = this.a.obtainStyledAttributes(null, ki.a, com.google.android.embedded.projection.R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.b;
            if (!actionBarOverlayLayout2.d) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.n = true;
            actionBarOverlayLayout2.l(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            hs.y(this.c, dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // defpackage.iv
    public final Context a() {
        if (this.t == null) {
            TypedValue typedValue = new TypedValue();
            this.a.getTheme().resolveAttribute(com.google.android.embedded.projection.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.t = new ContextThemeWrapper(this.a, i);
            } else {
                this.t = this.a;
            }
        }
        return this.t;
    }

    @Override // defpackage.iv
    public final void b(boolean z) {
        if (z == this.v) {
            return;
        }
        this.v = z;
        int size = this.w.size();
        for (int i = 0; i < size; i++) {
            ((iu) this.w.get(i)).a();
        }
    }

    @Override // defpackage.iv
    public final void c(boolean z) {
        if (this.u) {
            return;
        }
        d(z);
    }

    @Override // defpackage.iv
    public final void d(boolean z) {
        h(true != z ? 0 : 4, 4);
    }

    @Override // defpackage.iv
    public final void e(boolean z) {
        kw kwVar;
        this.z = z;
        if (z || (kwVar = this.m) == null) {
            return;
        }
        kwVar.a();
    }

    @Override // defpackage.iv
    public final void f(CharSequence charSequence) {
        this.d.o(charSequence);
    }

    public final void g(boolean z) {
        bew z2;
        bew g;
        if (z) {
            if (!this.x) {
                this.x = true;
                j(false);
            }
        } else if (this.x) {
            this.x = false;
            j(false);
        }
        if (!hs.G(this.c)) {
            if (z) {
                this.d.m(4);
                this.e.setVisibility(0);
                return;
            } else {
                this.d.m(0);
                this.e.setVisibility(8);
                return;
            }
        }
        if (z) {
            g = this.d.z(4, 100L);
            z2 = this.e.g(0, 200L);
        } else {
            z2 = this.d.z(0, 200L);
            g = this.e.g(8, 100L);
        }
        kw kwVar = new kw();
        kwVar.a.add(g);
        View view = (View) g.a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) z2.a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        kwVar.a.add(z2);
        kwVar.b();
    }

    public final void h(int i, int i2) {
        int a = this.d.a();
        if ((i2 & 4) != 0) {
            this.u = true;
        }
        this.d.h((i & i2) | ((i2 ^ (-1)) & a));
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(boolean z) {
        View view;
        View view2;
        ActionBarOverlayLayout actionBarOverlayLayout;
        View view3;
        if (!k(this.l, this.x)) {
            if (this.y) {
                this.y = false;
                kw kwVar = this.m;
                if (kwVar != null) {
                    kwVar.a();
                }
                if (this.j == 0) {
                    if (!this.z) {
                        if (z) {
                            z = true;
                        }
                    }
                    this.c.setAlpha(1.0f);
                    this.c.a(true);
                    kw kwVar2 = new kw();
                    float f = -this.c.getHeight();
                    if (z) {
                        this.c.getLocationInWindow(new int[]{0, 0});
                        f -= r6[1];
                    }
                    bew O = hs.O(this.c);
                    O.f(f);
                    O.e(this.q);
                    kwVar2.f(O);
                    if (this.k && (view = this.f) != null) {
                        bew O2 = hs.O(view);
                        O2.f(f);
                        kwVar2.f(O2);
                    }
                    kwVar2.d(r);
                    kwVar2.c();
                    kwVar2.e(this.o);
                    this.m = kwVar2;
                    kwVar2.b();
                    return;
                }
                this.o.b();
                return;
            }
            return;
        }
        if (this.y) {
            return;
        }
        this.y = true;
        kw kwVar3 = this.m;
        if (kwVar3 != null) {
            kwVar3.a();
        }
        this.c.setVisibility(0);
        if (this.j == 0) {
            if (!this.z) {
                if (z) {
                    z = true;
                }
            }
            this.c.setTranslationY(0.0f);
            float f2 = -this.c.getHeight();
            if (z) {
                this.c.getLocationInWindow(new int[]{0, 0});
                f2 -= r6[1];
            }
            this.c.setTranslationY(f2);
            kw kwVar4 = new kw();
            bew O3 = hs.O(this.c);
            O3.f(0.0f);
            O3.e(this.q);
            kwVar4.f(O3);
            if (this.k && (view3 = this.f) != null) {
                view3.setTranslationY(f2);
                bew O4 = hs.O(this.f);
                O4.f(0.0f);
                kwVar4.f(O4);
            }
            kwVar4.d(s);
            kwVar4.c();
            kwVar4.e(this.p);
            this.m = kwVar4;
            kwVar4.b();
            actionBarOverlayLayout = this.b;
            if (actionBarOverlayLayout == null) {
                hs.t(actionBarOverlayLayout);
                return;
            }
            return;
        }
        this.c.setAlpha(1.0f);
        this.c.setTranslationY(0.0f);
        if (this.k && (view2 = this.f) != null) {
            view2.setTranslationY(0.0f);
        }
        this.p.b();
        actionBarOverlayLayout = this.b;
        if (actionBarOverlayLayout == null) {
        }
    }

    public final void i(boolean z) {
        if (z) {
            this.d.w();
        } else {
            this.d.w();
        }
        this.d.v();
        this.d.y();
        this.b.e = false;
    }

    public kh(Dialog dialog) {
        new ArrayList();
        this.w = new ArrayList();
        this.j = 0;
        this.k = true;
        this.y = true;
        this.o = new kd(this);
        this.p = new ke(this);
        this.q = new kf(this);
        l(dialog.getWindow().getDecorView());
    }
}
