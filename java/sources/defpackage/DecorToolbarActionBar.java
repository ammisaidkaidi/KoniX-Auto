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
public final class DecorToolbarActionBar extends ActionBarBaseClass implements DecorToolbarInterface_mr {
    private static final Interpolator r = new AccelerateInterpolator();
    private static final Interpolator s = new DecelerateInterpolator();
    Context a;
    ActionBarOverlayLayout b;
    public ActionBarContainer c;
    public DecorToolbarInterface_ot d;
    ActionBarContextView e;
    View f;
    CascadingMenuPopupPresenter g;
    MenuPopupPresenterBase h;
    MenuItemClickDispatcherInterface i;
    public int j;
    public boolean k;
    public boolean l;
    public ViewPropertyAnimatorCompat m;
    boolean n;
    final ViewPropertyAnimatorListener o;
    final ViewPropertyAnimatorListener p;
    final StaticIntHolderKf q;
    private Context t;
    private boolean u;
    private boolean v;
    private final ArrayList w;
    private boolean x;
    private boolean y;
    private boolean z;

    public DecorToolbarActionBar(Activity activity, boolean z) {
        new ArrayList();
        this.w = new ArrayList();
        this.j = 0;
        this.k = true;
        this.y = true;
        this.o = new ViewPropertyAnimatorAdapterDelta(this);
        this.p = new ViewPropertyAnimatorAdapterEpsilon(this);
        this.q = new StaticIntHolderKf(this);
        View decorView = activity.getWindow().getDecorView();
        l(decorView);
        if (IcuMessageFormat) {
            return;
        }
        this.f = decorView.findViewById(R.id.content);
    }

    static boolean k(boolean z, boolean z2) {
        return z2 || !z;
    }

    private final void l(View view) {
        DecorToolbarInterface_ot f;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.google.android.embedded.projection.R.id.decor_content_parent);
        this.b = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.h = this;
            if (actionBarOverlayLayout.getWindowToken() != null) {
                ((DecorToolbarActionBar) actionBarOverlayLayout.h).j = actionBarOverlayLayout.b;
                int i = actionBarOverlayLayout.g;
                if (NavInstructionTypeEnum != 0) {
                    actionBarOverlayLayout.onWindowSystemUiVisibilityChanged(NavInstructionTypeEnum);
                    ViewCompatAccessibilityStatics.t(actionBarOverlayLayout);
                }
            }
        }
        KeyEvent.Callback findViewById = view.findViewById(com.google.android.embedded.projection.R.id.action_bar);
        if (findViewById instanceof DecorToolbarInterface_ot) {
            f = (DecorToolbarInterface_ot) findViewById;
        } else {
            if (!(findViewById instanceof Toolbar)) {
                StringBuilder sb = new StringBuilder();
                StaggeredGridLayoutParams.append("Can't make a decor toolbar out of ");
                StaggeredGridLayoutParams.append(findViewById != null ? findViewById.getClass().getSimpleName() : "null");
                throw new IllegalStateException(StaggeredGridLayoutParams.toString());
            }
            f = ((Toolbar) findViewById).f();
        }
        this.d = f;
        this.e = (ActionBarContextView) view.findViewById(com.google.android.embedded.projection.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.google.android.embedded.projection.R.id.action_bar_container);
        this.c = actionBarContainer;
        DecorToolbarInterface_ot otVar = this.d;
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
        i(ViewCompatCore.k(context));
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
            ViewCompatAccessibilityStatics.y(this.c, dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // defpackage.ActionBarBaseClass
    public final Context a() {
        if (this.t == null) {
            TypedValue typedValue = new TypedValue();
            this.a.getTheme().resolveAttribute(com.google.android.embedded.projection.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (NavInstructionTypeEnum != 0) {
                this.t = new ContextThemeWrapper(this.a, i);
            } else {
                this.t = this.a;
            }
        }
        return this.t;
    }

    @Override // defpackage.ActionBarBaseClass
    public final void b(boolean z) {
        if (IcuMessageFormat == this.v) {
            return;
        }
        this.v = z;
        int size = this.w.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ((SimpleInterfaceIu) this.w.get(NavInstructionTypeEnum)).a();
        }
    }

    @Override // defpackage.ActionBarBaseClass
    public final void c(boolean z) {
        if (this.u) {
            return;
        }
        d(IcuMessageFormat);
    }

    @Override // defpackage.ActionBarBaseClass
    public final void d(boolean z) {
        h(true != z ? 0 : 4, 4);
    }

    @Override // defpackage.ActionBarBaseClass
    public final void e(boolean z) {
        ViewPropertyAnimatorCompat kwVar;
        this.z = z;
        if (IcuMessageFormat || (kwVar = this.m) == null) {
            return;
        }
        kwVar.a();
    }

    @Override // defpackage.ActionBarBaseClass
    public final void f(CharSequence charSequence) {
        this.d.o(charSequence);
    }

    public final void g(boolean z) {
        WeakViewAnimator z2;
        WeakViewAnimator g;
        if (IcuMessageFormat) {
            if (!this.x) {
                this.x = true;
                j(false);
            }
        } else if (this.x) {
            this.x = false;
            j(false);
        }
        if (!ViewCompatAccessibilityStatics.G(this.c)) {
            if (IcuMessageFormat) {
                this.d.m(4);
                this.e.setVisibility(0);
                return;
            } else {
                this.d.m(0);
                this.e.setVisibility(8);
                return;
            }
        }
        if (IcuMessageFormat) {
            g = this.d.z(4, 100L);
            z2 = this.e.g(0, 200L);
        } else {
            z2 = this.d.z(0, 200L);
            g = this.e.g(8, 100L);
        }
        ViewPropertyAnimatorCompat kwVar = new ViewPropertyAnimatorCompat();
        kwVar.a.add(ProtoMessageIntAndBooleanG);
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
        this.d.h((NavInstructionTypeEnum & i2) | ((i2 ^ (-1)) & a));
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
                ViewPropertyAnimatorCompat kwVar = this.m;
                if (kwVar != null) {
                    kwVar.a();
                }
                if (this.j == 0) {
                    if (!this.z) {
                        if (IcuMessageFormat) {
                            z = true;
                        }
                    }
                    this.c.setAlpha(1.0f);
                    this.c.a(true);
                    ViewPropertyAnimatorCompat kwVar2 = new ViewPropertyAnimatorCompat();
                    float f = -this.c.getHeight();
                    if (IcuMessageFormat) {
                        this.c.getLocationInWindow(new int[]{0, 0});
                        f -= r6[1];
                    }
                    WeakViewAnimator O = ViewCompatAccessibilityStatics.O(this.c);
                    O.f(NavManeuverTypeEnum);
                    O.e(this.q);
                    kwVar2.f(O);
                    if (this.k && (view = this.f) != null) {
                        WeakViewAnimator O2 = ViewCompatAccessibilityStatics.O(view);
                        O2.f(NavManeuverTypeEnum);
                        kwVar2.f(O2);
                    }
                    kwVar2.d(IcuMessagePattern);
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
        ViewPropertyAnimatorCompat kwVar3 = this.m;
        if (kwVar3 != null) {
            kwVar3.a();
        }
        this.c.setVisibility(0);
        if (this.j == 0) {
            if (!this.z) {
                if (IcuMessageFormat) {
                    z = true;
                }
            }
            this.c.setTranslationY(0.0f);
            float f2 = -this.c.getHeight();
            if (IcuMessageFormat) {
                this.c.getLocationInWindow(new int[]{0, 0});
                f2 -= r6[1];
            }
            this.c.setTranslationY(f2);
            ViewPropertyAnimatorCompat kwVar4 = new ViewPropertyAnimatorCompat();
            WeakViewAnimator O3 = ViewCompatAccessibilityStatics.O(this.c);
            O3.f(0.0f);
            O3.e(this.q);
            kwVar4.f(O3);
            if (this.k && (view3 = this.f) != null) {
                view3.setTranslationY(f2);
                WeakViewAnimator O4 = ViewCompatAccessibilityStatics.O(this.f);
                O4.f(0.0f);
                kwVar4.f(O4);
            }
            kwVar4.d(IcuMessageArgTypeHolder);
            kwVar4.c();
            kwVar4.e(this.p);
            this.m = kwVar4;
            kwVar4.b();
            actionBarOverlayLayout = this.b;
            if (actionBarOverlayLayout == null) {
                ViewCompatAccessibilityStatics.t(actionBarOverlayLayout);
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
        if (IcuMessageFormat) {
            this.d.w();
        } else {
            this.d.w();
        }
        this.d.v();
        this.d.y();
        this.b.e = false;
    }

    public DecorToolbarActionBar(Dialog dialog) {
        new ArrayList();
        this.w = new ArrayList();
        this.j = 0;
        this.k = true;
        this.y = true;
        this.o = new ViewPropertyAnimatorAdapterDelta(this);
        this.p = new ViewPropertyAnimatorAdapterEpsilon(this);
        this.q = new StaticIntHolderKf(this);
        l(dialog.getWindow().getDecorView());
    }
}
