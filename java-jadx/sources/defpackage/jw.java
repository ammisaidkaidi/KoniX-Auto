package defpackage;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatViewInflater;
import android.support.v7.view.menu.ExpandedMenuView;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ContentFrameLayout;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Calendar;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class jw extends jg implements LayoutInflater.Factory2, lm {
    private static final vi H = new vi();
    private static final int[] I = {R.attr.windowBackground};
    public static final boolean c = !"robolectric".equals(Build.FINGERPRINT);
    public static final boolean d = true;
    boolean A;
    public int B;
    boolean C;
    int D;
    public Rect E;
    public Rect F;
    private jo J;
    private CharSequence K;
    private jv L;
    private TextView M;
    private boolean N;
    private boolean O;
    private boolean P;
    private ju[] Q;
    private boolean R;
    private boolean S;
    private int T;
    private boolean U;
    private boolean V;
    private jr W;
    private jr X;
    private boolean Z;
    private AppCompatViewInflater aa;
    private jv ab;
    final Object e;
    final Context f;
    public Window g;
    iv h;
    MenuInflater i;
    public os j;
    ko k;
    ActionBarContextView l;
    public PopupWindow m;
    public Runnable n;
    public boolean p;
    ViewGroup q;
    public View r;
    boolean s;
    boolean t;
    boolean u;
    boolean v;
    boolean w;
    public ju x;
    public boolean y;
    public boolean z;
    bew G = null;
    public boolean o = true;
    private final Runnable Y = new jk(this, 1);

    public jw(Context context, Window window, Object obj) {
        jf jfVar = null;
        this.T = -100;
        this.f = context;
        this.e = obj;
        if (this.T == -100 && (obj instanceof Dialog)) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof jf)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        } else {
                            context = ((ContextWrapper) context).getBaseContext();
                        }
                    } else {
                        jfVar = (jf) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (jfVar != null) {
                this.T = ((jw) jfVar.g()).T;
            }
        }
        if (this.T == -100) {
            vi viVar = H;
            Integer num = (Integer) viVar.get(this.e.getClass().getName());
            if (num != null) {
                this.T = num.intValue();
                viVar.remove(this.e.getClass().getName());
            }
        }
        if (window != null) {
            N(window);
        }
        nn.f();
    }

    private final jr L(Context context) {
        if (this.X == null) {
            this.X = new jp(this, context);
        }
        return this.X;
    }

    private final jr M(Context context) {
        if (this.W == null) {
            if (kc.a == null) {
                Context applicationContext = context.getApplicationContext();
                kc.a = new kc(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.W = new js(this, kc.a);
        }
        return this.W;
    }

    private final void N(Window window) {
        if (this.g != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof jo) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        jo joVar = new jo(this, callback);
        this.J = joVar;
        window.setCallback(joVar);
        sm k = sm.k(this.f, null, I);
        Drawable i = k.i(0);
        if (i != null) {
            window.setBackgroundDrawable(i);
        }
        k.n();
        this.g = window;
    }

    private final void O() {
        if (this.g == null) {
            Object obj = this.e;
            if (obj instanceof Activity) {
                N(((Activity) obj).getWindow());
            }
        }
        if (this.g == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private final void P(int i) {
        this.D = (1 << i) | this.D;
        if (this.C) {
            return;
        }
        hs.r(this.g.getDecorView(), this.Y);
        this.C = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0158, code lost:
    
        if (r14.f != null) goto L79;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void Q(ju juVar, KeyEvent keyEvent) {
        ExpandedMenuView expandedMenuView;
        int i;
        ViewGroup.LayoutParams layoutParams;
        if (juVar.m || this.A) {
            return;
        }
        if (juVar.a == 0 && (this.f.getResources().getConfiguration().screenLayout & 15) == 4) {
            return;
        }
        Window.Callback u = u();
        if (u != null && !u.onMenuOpened(juVar.a, juVar.h)) {
            x(juVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f.getSystemService("window");
        if (windowManager != null && E(juVar, keyEvent)) {
            ViewGroup viewGroup = juVar.e;
            if (viewGroup == null || juVar.n) {
                if (viewGroup == null) {
                    Context q = q();
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme newTheme = q.getResources().newTheme();
                    newTheme.setTo(q.getTheme());
                    newTheme.resolveAttribute(com.google.android.embedded.projection.R.attr.actionBarPopupTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        newTheme.applyStyle(typedValue.resourceId, true);
                    }
                    newTheme.resolveAttribute(com.google.android.embedded.projection.R.attr.panelMenuListTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        newTheme.applyStyle(typedValue.resourceId, true);
                    } else {
                        newTheme.applyStyle(com.google.android.embedded.projection.R.style.Theme_AppCompat_CompactMenu, true);
                    }
                    ue ueVar = new ue(q, 0);
                    ueVar.getTheme().setTo(newTheme);
                    juVar.j = ueVar;
                    TypedArray obtainStyledAttributes = ueVar.obtainStyledAttributes(ki.j);
                    juVar.b = obtainStyledAttributes.getResourceId(86, 0);
                    juVar.d = obtainStyledAttributes.getResourceId(1, 0);
                    obtainStyledAttributes.recycle();
                    juVar.e = new jt(this, juVar.j);
                    juVar.c = 81;
                    if (juVar.e == null) {
                        return;
                    }
                } else if (juVar.n && viewGroup.getChildCount() > 0) {
                    juVar.e.removeAllViews();
                }
                View view = juVar.g;
                if (view == null) {
                    if (juVar.h != null) {
                        if (this.L == null) {
                            this.L = new jv(this, 0);
                        }
                        jv jvVar = this.L;
                        if (juVar.h == null) {
                            expandedMenuView = null;
                        } else {
                            if (juVar.i == null) {
                                juVar.i = new lk(juVar.j);
                                lk lkVar = juVar.i;
                                lkVar.e = jvVar;
                                juVar.h.g(lkVar);
                            }
                            lk lkVar2 = juVar.i;
                            ViewGroup viewGroup2 = juVar.e;
                            if (lkVar2.d == null) {
                                lkVar2.d = (ExpandedMenuView) lkVar2.b.inflate(com.google.android.embedded.projection.R.layout.abc_expanded_menu_layout, viewGroup2, false);
                                if (lkVar2.f == null) {
                                    lkVar2.f = new lj(lkVar2);
                                }
                                lkVar2.d.setAdapter((ListAdapter) lkVar2.f);
                                lkVar2.d.setOnItemClickListener(lkVar2);
                            }
                            expandedMenuView = lkVar2.d;
                        }
                        juVar.f = expandedMenuView;
                    }
                    juVar.n = true;
                    return;
                }
                juVar.f = view;
                if (juVar.f != null && (juVar.g != null || juVar.i.a().getCount() > 0)) {
                    ViewGroup.LayoutParams layoutParams2 = juVar.f.getLayoutParams();
                    if (layoutParams2 == null) {
                        layoutParams2 = new ViewGroup.LayoutParams(-2, -2);
                    }
                    juVar.e.setBackgroundResource(juVar.b);
                    ViewParent parent = juVar.f.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(juVar.f);
                    }
                    juVar.e.addView(juVar.f, layoutParams2);
                    if (juVar.f.hasFocus()) {
                        i = -2;
                    } else {
                        juVar.f.requestFocus();
                        i = -2;
                    }
                }
                juVar.n = true;
                return;
            }
            View view2 = juVar.g;
            i = (view2 == null || (layoutParams = view2.getLayoutParams()) == null || layoutParams.width != -1) ? -2 : -1;
            juVar.l = false;
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(i, -2, 0, 0, 1002, 8519680, -3);
            layoutParams3.gravity = juVar.c;
            layoutParams3.windowAnimations = juVar.d;
            windowManager.addView(juVar.e, layoutParams3);
            juVar.m = true;
        }
    }

    private final void R() {
        if (this.p) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void A() {
        ViewGroup viewGroup;
        if (this.p) {
            return;
        }
        TypedArray obtainStyledAttributes = this.f.obtainStyledAttributes(ki.j);
        if (!obtainStyledAttributes.hasValue(117)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(126, false)) {
            n(1);
        } else if (obtainStyledAttributes.getBoolean(117, false)) {
            n(108);
        }
        if (obtainStyledAttributes.getBoolean(118, false)) {
            n(109);
        }
        if (obtainStyledAttributes.getBoolean(119, false)) {
            n(10);
        }
        this.v = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        O();
        this.g.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f);
        if (this.w) {
            viewGroup = this.u ? (ViewGroup) from.inflate(com.google.android.embedded.projection.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(com.google.android.embedded.projection.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.v) {
            viewGroup = (ViewGroup) from.inflate(com.google.android.embedded.projection.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.t = false;
            this.s = false;
        } else if (this.s) {
            TypedValue typedValue = new TypedValue();
            this.f.getTheme().resolveAttribute(com.google.android.embedded.projection.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new ue(this.f, typedValue.resourceId) : this.f).inflate(com.google.android.embedded.projection.R.layout.abc_screen_toolbar, (ViewGroup) null);
            os osVar = (os) viewGroup.findViewById(com.google.android.embedded.projection.R.id.decor_content_parent);
            this.j = osVar;
            osVar.o(u());
            if (this.t) {
                this.j.i(109);
            }
            if (this.N) {
                this.j.i(2);
            }
            if (this.O) {
                this.j.i(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.s + ", windowActionBarOverlay: " + this.t + ", android:windowIsFloating: " + this.v + ", windowActionModeOverlay: " + this.u + ", windowNoTitle: " + this.w + " }");
        }
        hs.A(viewGroup, new jh(this));
        if (this.j == null) {
            this.M = (TextView) viewGroup.findViewById(com.google.android.embedded.projection.R.id.title);
        }
        tb.a(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.google.android.embedded.projection.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.g.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.g.setContentView(viewGroup);
        contentFrameLayout.i = new ji(this);
        this.q = viewGroup;
        Object obj = this.e;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.K;
        if (!TextUtils.isEmpty(title)) {
            os osVar2 = this.j;
            if (osVar2 != null) {
                osVar2.p(title);
            } else {
                iv ivVar = this.h;
                if (ivVar != null) {
                    ivVar.f(title);
                } else {
                    TextView textView = this.M;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.q.findViewById(R.id.content);
        View decorView = this.g.getDecorView();
        contentFrameLayout2.h.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (hs.G(contentFrameLayout2)) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray obtainStyledAttributes2 = this.f.obtainStyledAttributes(ki.j);
        if (contentFrameLayout2.b == null) {
            contentFrameLayout2.b = new TypedValue();
        }
        obtainStyledAttributes2.getValue(124, contentFrameLayout2.b);
        if (contentFrameLayout2.c == null) {
            contentFrameLayout2.c = new TypedValue();
        }
        obtainStyledAttributes2.getValue(125, contentFrameLayout2.c);
        if (obtainStyledAttributes2.hasValue(122)) {
            if (contentFrameLayout2.d == null) {
                contentFrameLayout2.d = new TypedValue();
            }
            obtainStyledAttributes2.getValue(122, contentFrameLayout2.d);
        }
        if (obtainStyledAttributes2.hasValue(123)) {
            if (contentFrameLayout2.e == null) {
                contentFrameLayout2.e = new TypedValue();
            }
            obtainStyledAttributes2.getValue(123, contentFrameLayout2.e);
        }
        if (obtainStyledAttributes2.hasValue(120)) {
            if (contentFrameLayout2.f == null) {
                contentFrameLayout2.f = new TypedValue();
            }
            obtainStyledAttributes2.getValue(120, contentFrameLayout2.f);
        }
        if (obtainStyledAttributes2.hasValue(121)) {
            if (contentFrameLayout2.g == null) {
                contentFrameLayout2.g = new TypedValue();
            }
            obtainStyledAttributes2.getValue(121, contentFrameLayout2.g);
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.p = true;
        ju H2 = H(0);
        if (this.A || H2.h != null) {
            return;
        }
        P(108);
    }

    public final void B() {
        A();
        if (this.s && this.h == null) {
            Object obj = this.e;
            if (obj instanceof Activity) {
                this.h = new kh((Activity) obj, this.t);
            } else if (obj instanceof Dialog) {
                this.h = new kh((Dialog) obj);
            }
            iv ivVar = this.h;
            if (ivVar != null) {
                ivVar.c(this.Z);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final boolean C(KeyEvent keyEvent) {
        kh khVar;
        ot otVar;
        boolean z;
        AudioManager audioManager;
        Object obj = this.e;
        if (((obj instanceof gr) || (obj instanceof jy)) && this.g.getDecorView() != null) {
            int i = hs.a;
        }
        if (keyEvent.getKeyCode() == 82 && this.J.b.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() == 0) {
            switch (keyCode) {
                case 4:
                    this.R = (keyEvent.getFlags() & 128) != 0;
                    break;
                case 82:
                    if (keyEvent.getRepeatCount() == 0) {
                        ju H2 = H(0);
                        if (!H2.m) {
                            E(H2, keyEvent);
                            break;
                        }
                    }
                    break;
            }
            return true;
        }
        switch (keyCode) {
            case 4:
                boolean z2 = this.R;
                this.R = false;
                ju H3 = H(0);
                if (!H3.m) {
                    ko koVar = this.k;
                    if (koVar == null) {
                        iv a = a();
                        if (a != null && (otVar = (khVar = (kh) a).d) != null && otVar.q()) {
                            khVar.d.d();
                            break;
                        }
                    } else {
                        koVar.f();
                        break;
                    }
                } else if (!z2) {
                    x(H3, true);
                    break;
                }
                break;
            case 82:
                if (this.k == null) {
                    ju H4 = H(0);
                    os osVar = this.j;
                    if (osVar == null || !osVar.q() || ViewConfiguration.get(this.f).hasPermanentMenuKey()) {
                        boolean z3 = H4.m;
                        if (!z3 && !H4.l) {
                            if (H4.k) {
                                if (H4.o) {
                                    H4.k = false;
                                    if (!E(H4, keyEvent)) {
                                    }
                                }
                                Q(H4, keyEvent);
                                audioManager = (AudioManager) this.f.getApplicationContext().getSystemService("audio");
                                if (audioManager != null) {
                                    Log.w("AppCompatDelegate", "Couldn't get audio manager");
                                    break;
                                } else {
                                    audioManager.playSoundEffect(0);
                                    break;
                                }
                            }
                        } else {
                            x(H4, true);
                            z = z3;
                        }
                    } else if (this.j.t()) {
                        z = this.j.r();
                    } else if (!this.A && E(H4, keyEvent)) {
                        z = this.j.u();
                    }
                    if (!z) {
                    }
                    audioManager = (AudioManager) this.f.getApplicationContext().getSystemService("audio");
                    if (audioManager != null) {
                    }
                }
                break;
        }
        return true;
    }

    @Override // defpackage.lm
    public final boolean D(lo loVar, MenuItem menuItem) {
        ju s;
        Window.Callback u = u();
        if (u == null || this.A || (s = s(loVar.a())) == null) {
            return false;
        }
        return u.onMenuItemSelected(s.a, menuItem);
    }

    public final boolean E(ju juVar, KeyEvent keyEvent) {
        os osVar;
        Resources.Theme theme;
        os osVar2;
        os osVar3;
        if (this.A) {
            return false;
        }
        if (juVar.k) {
            return true;
        }
        ju juVar2 = this.x;
        if (juVar2 != null && juVar2 != juVar) {
            x(juVar2, false);
        }
        Window.Callback u = u();
        if (u != null) {
            juVar.g = u.onCreatePanelView(juVar.a);
        }
        int i = juVar.a;
        boolean z = i != 0 ? i == 108 : true;
        if (z && (osVar3 = this.j) != null) {
            osVar3.n();
        }
        if (juVar.g == null) {
            lo loVar = juVar.h;
            if (loVar == null || juVar.o) {
                if (loVar == null) {
                    Context context = this.f;
                    int i2 = juVar.a;
                    if ((i2 == 0 || i2 == 108) && this.j != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(com.google.android.embedded.projection.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(com.google.android.embedded.projection.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme2.resolveAttribute(com.google.android.embedded.projection.R.attr.actionBarWidgetTheme, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            ue ueVar = new ue(context, 0);
                            ueVar.getTheme().setTo(theme);
                            context = ueVar;
                        }
                    }
                    lo loVar2 = new lo(context);
                    loVar2.b = this;
                    juVar.a(loVar2);
                    if (juVar.h == null) {
                        return false;
                    }
                }
                if (z && this.j != null) {
                    if (this.ab == null) {
                        this.ab = new jv(this, 1);
                    }
                    this.j.m(juVar.h, this.ab);
                }
                juVar.h.s();
                if (!u.onCreatePanelMenu(juVar.a, juVar.h)) {
                    juVar.a(null);
                    if (z && (osVar = this.j) != null) {
                        osVar.m(null, this.ab);
                    }
                    return false;
                }
                juVar.o = false;
            }
            juVar.h.s();
            Bundle bundle = juVar.p;
            if (bundle != null) {
                juVar.h.n(bundle);
                juVar.p = null;
            }
            if (!u.onPreparePanel(0, juVar.g, juVar.h)) {
                if (z && (osVar2 = this.j) != null) {
                    osVar2.m(null, this.ab);
                }
                juVar.h.r();
                return false;
            }
            juVar.h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            juVar.h.r();
        }
        juVar.k = true;
        juVar.l = false;
        this.x = juVar;
        return true;
    }

    final boolean F() {
        ViewGroup viewGroup;
        return this.p && (viewGroup = this.q) != null && hs.G(viewGroup);
    }

    public final void G() {
        K(true);
    }

    public final ju H(int i) {
        ju[] juVarArr = this.Q;
        if (juVarArr == null || juVarArr.length <= i) {
            ju[] juVarArr2 = new ju[i + 1];
            if (juVarArr != null) {
                System.arraycopy(juVarArr, 0, juVarArr2, 0, juVarArr.length);
            }
            this.Q = juVarArr2;
            juVarArr = juVarArr2;
        }
        ju juVar = juVarArr[i];
        if (juVar != null) {
            return juVar;
        }
        ju juVar2 = new ju(i);
        juVarArr[i] = juVar2;
        return juVar2;
    }

    @Override // defpackage.lm
    public final void I() {
        os osVar = this.j;
        if (osVar == null || !osVar.q() || (ViewConfiguration.get(this.f).hasPermanentMenuKey() && !this.j.s())) {
            ju H2 = H(0);
            H2.n = true;
            x(H2, false);
            Q(H2, null);
            return;
        }
        Window.Callback u = u();
        if (this.j.t()) {
            this.j.r();
            if (this.A) {
                return;
            }
            u.onPanelClosed(108, H(0).h);
            return;
        }
        if (u == null || this.A) {
            return;
        }
        if (this.C && (1 & this.D) != 0) {
            this.g.getDecorView().removeCallbacks(this.Y);
            this.Y.run();
        }
        ju H3 = H(0);
        lo loVar = H3.h;
        if (loVar == null || H3.o || !u.onPreparePanel(0, H3.g, loVar)) {
            return;
        }
        u.onMenuOpened(108, H3.h);
        this.j.u();
    }

    public final boolean J(ju juVar, int i, KeyEvent keyEvent) {
        lo loVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((juVar.k || E(juVar, keyEvent)) && (loVar = juVar.h) != null) {
            return loVar.performShortcut(i, keyEvent, 1);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void K(boolean z) {
        int i;
        int i2;
        jr jrVar;
        Object obj;
        Object obj2;
        if (this.A) {
            return;
        }
        int o = o();
        Configuration r = r(this.f, p(this.f, o), null);
        boolean z2 = false;
        if (!this.V && (this.e instanceof Activity)) {
            PackageManager packageManager = this.f.getPackageManager();
            if (packageManager != null) {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f, this.e.getClass()), Build.VERSION.SDK_INT >= 29 ? 269221888 : 786432);
                    this.U = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
                } catch (PackageManager.NameNotFoundException e) {
                    this.U = false;
                }
            }
            i = this.f.getResources().getConfiguration().uiMode & 48;
            i2 = r.uiMode & 48;
            if (i != i2 && z && !z2 && this.y && (c || this.S)) {
                obj2 = this.e;
                if ((obj2 instanceof Activity) && !((Activity) obj2).isChild()) {
                    ((Activity) this.e).recreate();
                    obj = this.e;
                    if (obj instanceof jf) {
                    }
                    if (o != 0) {
                        M(this.f).d();
                    } else {
                        jr jrVar2 = this.W;
                        if (jrVar2 != null) {
                            jrVar2.c();
                        }
                        if (o == 3) {
                            L(this.f).d();
                            return;
                        }
                    }
                    jrVar = this.X;
                    if (jrVar == null) {
                        jrVar.c();
                        return;
                    }
                    return;
                }
            }
            if (i != i2) {
                Resources resources = this.f.getResources();
                Configuration configuration = new Configuration(resources.getConfiguration());
                configuration.uiMode = i2 | (resources.getConfiguration().uiMode & (-49));
                resources.updateConfiguration(configuration, null);
                int i3 = this.B;
                if (i3 != 0) {
                    this.f.setTheme(i3);
                    this.f.getTheme().applyStyle(this.B, true);
                }
                if (z2) {
                    Object obj3 = this.e;
                    if (obj3 instanceof Activity) {
                        Activity activity = (Activity) obj3;
                        if (activity instanceof zq) {
                            if (((zq) activity).C().a.a(zm.STARTED)) {
                                activity.onConfigurationChanged(configuration);
                            }
                        } else if (this.z) {
                            activity.onConfigurationChanged(configuration);
                        }
                    }
                }
                obj = this.e;
                if (obj instanceof jf) {
                }
            }
            if (o != 0) {
            }
            jrVar = this.X;
            if (jrVar == null) {
            }
        }
        this.V = true;
        z2 = this.U;
        i = this.f.getResources().getConfiguration().uiMode & 48;
        i2 = r.uiMode & 48;
        if (i != i2) {
            obj2 = this.e;
            if (obj2 instanceof Activity) {
                ((Activity) this.e).recreate();
                obj = this.e;
                if (obj instanceof jf) {
                }
                if (o != 0) {
                }
                jrVar = this.X;
                if (jrVar == null) {
                }
            }
        }
        if (i != i2) {
        }
        if (o != 0) {
        }
        jrVar = this.X;
        if (jrVar == null) {
        }
    }

    @Override // defpackage.jg
    public final iv a() {
        B();
        return this.h;
    }

    @Override // defpackage.jg
    public final View b(int i) {
        A();
        return this.g.findViewById(i);
    }

    @Override // defpackage.jg
    public final void c(View view, ViewGroup.LayoutParams layoutParams) {
        A();
        ((ViewGroup) this.q.findViewById(R.id.content)).addView(view, layoutParams);
        this.J.b.onContentChanged();
    }

    @Override // defpackage.jg
    public final void d() {
        LayoutInflater from = LayoutInflater.from(this.f);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else {
            from.getFactory2();
        }
    }

    @Override // defpackage.jg
    public final void e() {
        a();
        P(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.jg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f() {
        jr jrVar;
        jr jrVar2;
        if (this.e instanceof Activity) {
            synchronized (jg.b) {
                jg.h(this);
            }
        }
        if (this.C) {
            this.g.getDecorView().removeCallbacks(this.Y);
        }
        this.z = false;
        this.A = true;
        if (this.T != -100) {
            Object obj = this.e;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                H.put(this.e.getClass().getName(), Integer.valueOf(this.T));
                jrVar = this.W;
                if (jrVar != null) {
                    jrVar.c();
                }
                jrVar2 = this.X;
                if (jrVar2 == null) {
                    jrVar2.c();
                    return;
                }
                return;
            }
        }
        H.remove(this.e.getClass().getName());
        jrVar = this.W;
        if (jrVar != null) {
        }
        jrVar2 = this.X;
        if (jrVar2 == null) {
        }
    }

    @Override // defpackage.jg
    public final void g() {
        this.z = false;
        iv a = a();
        if (a != null) {
            a.e(false);
        }
    }

    @Override // defpackage.jg
    public final void i(int i) {
        A();
        ViewGroup viewGroup = (ViewGroup) this.q.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f).inflate(i, viewGroup);
        this.J.b.onContentChanged();
    }

    @Override // defpackage.jg
    public final void j(View view) {
        A();
        ViewGroup viewGroup = (ViewGroup) this.q.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.J.b.onContentChanged();
    }

    @Override // defpackage.jg
    public final void k(View view, ViewGroup.LayoutParams layoutParams) {
        A();
        ViewGroup viewGroup = (ViewGroup) this.q.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.J.b.onContentChanged();
    }

    @Override // defpackage.jg
    public final void l(CharSequence charSequence) {
        this.K = charSequence;
        os osVar = this.j;
        if (osVar != null) {
            osVar.p(charSequence);
            return;
        }
        iv ivVar = this.h;
        if (ivVar != null) {
            ivVar.f(charSequence);
            return;
        }
        TextView textView = this.M;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // defpackage.jg
    public final void m() {
        String str;
        this.y = true;
        K(false);
        O();
        Object obj = this.e;
        if (obj instanceof Activity) {
            try {
                str = r.s((Activity) obj);
            } catch (IllegalArgumentException e) {
                str = null;
            }
            if (str != null) {
                iv ivVar = this.h;
                if (ivVar == null) {
                    this.Z = true;
                } else {
                    ivVar.c(true);
                }
            }
            synchronized (jg.b) {
                jg.h(this);
                jg.a.add(new WeakReference(this));
            }
        }
        this.S = true;
    }

    public final int o() {
        int i = this.T;
        if (i != -100) {
            return i;
        }
        return -100;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return t(view, str, context, attributeSet);
    }

    final int p(Context context, int i) {
        long j;
        boolean z;
        switch (i) {
            case -100:
                return -1;
            case -1:
            case 1:
            case 2:
                return i;
            case 0:
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                kc kcVar = ((js) M(context)).a;
                kb kbVar = kcVar.c;
                if (kbVar.b > System.currentTimeMillis()) {
                    z = kbVar.a;
                } else {
                    Location a = r.k(kcVar.b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? kcVar.a("network") : null;
                    Location a2 = r.k(kcVar.b, "android.permission.ACCESS_FINE_LOCATION") == 0 ? kcVar.a("gps") : null;
                    if (a2 == null || a == null ? a2 != null : a2.getTime() > a.getTime()) {
                        a = a2;
                    }
                    if (a == null) {
                        int i2 = Calendar.getInstance().get(11);
                        return (i2 < 6 || i2 >= 22) ? 2 : 1;
                    }
                    kb kbVar2 = kcVar.c;
                    long currentTimeMillis = System.currentTimeMillis();
                    if (ka.a == null) {
                        ka.a = new ka();
                    }
                    ka kaVar = ka.a;
                    kaVar.a(currentTimeMillis - 86400000, a.getLatitude(), a.getLongitude());
                    long j2 = kaVar.b;
                    kaVar.a(currentTimeMillis, a.getLatitude(), a.getLongitude());
                    int i3 = kaVar.d;
                    long j3 = kaVar.c;
                    long j4 = kaVar.b;
                    kaVar.a(currentTimeMillis + 86400000, a.getLatitude(), a.getLongitude());
                    long j5 = kaVar.c;
                    if (j3 == -1 || j4 == -1) {
                        j = 43200000 + currentTimeMillis;
                    } else {
                        if (currentTimeMillis > j4) {
                            j3 = j5;
                        } else if (currentTimeMillis > j3) {
                            j3 = j4;
                        }
                        j = j3 + 60000;
                    }
                    kbVar2.a = 1 == i3;
                    kbVar2.b = j;
                    z = kbVar.a;
                }
                return !z ? 1 : 2;
            case 3:
                return ((jp) L(context)).a.isPowerSaveMode() ? 2 : 1;
            default:
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
        }
    }

    final Context q() {
        iv a = a();
        Context a2 = a != null ? a.a() : null;
        return a2 == null ? this.f : a2;
    }

    public final Configuration r(Context context, int i, Configuration configuration) {
        int i2;
        switch (i) {
            case 1:
                i2 = 16;
                break;
            case 2:
                i2 = 32;
                break;
            default:
                i2 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
                break;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    final ju s(Menu menu) {
        ju[] juVarArr = this.Q;
        int length = juVarArr != null ? juVarArr.length : 0;
        for (int i = 0; i < length; i++) {
            ju juVar = juVarArr[i];
            if (juVar != null && juVar.h == menu) {
                return juVar;
            }
        }
        return null;
    }

    public final View t(View view, String str, Context context, AttributeSet attributeSet) {
        if (this.aa == null) {
            String string = this.f.obtainStyledAttributes(ki.j).getString(116);
            if (string == null) {
                this.aa = new AppCompatViewInflater();
            } else {
                try {
                    this.aa = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    this.aa = new AppCompatViewInflater();
                }
            }
        }
        return this.aa.createView(view, str, context, attributeSet, false, false, true, false);
    }

    final Window.Callback u() {
        return this.g.getCallback();
    }

    final void v(int i, ju juVar, Menu menu) {
        if (menu == null) {
            menu = juVar.h;
        }
        if (!juVar.m || this.A) {
            return;
        }
        this.J.b.onPanelClosed(i, menu);
    }

    final void w(lo loVar) {
        if (this.P) {
            return;
        }
        this.P = true;
        this.j.g();
        Window.Callback u = u();
        if (u != null && !this.A) {
            u.onPanelClosed(108, loVar);
        }
        this.P = false;
    }

    final void x(ju juVar, boolean z) {
        ViewGroup viewGroup;
        os osVar;
        if (z && juVar.a == 0 && (osVar = this.j) != null && osVar.t()) {
            w(juVar.h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f.getSystemService("window");
        if (windowManager != null && juVar.m && (viewGroup = juVar.e) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                v(juVar.a, juVar, null);
            }
        }
        juVar.k = false;
        juVar.l = false;
        juVar.m = false;
        juVar.f = null;
        juVar.n = true;
        if (this.x == juVar) {
            this.x = null;
        }
    }

    final void y(int i) {
        ju H2 = H(i);
        if (H2.h != null) {
            Bundle bundle = new Bundle();
            H2.h.o(bundle);
            if (bundle.size() > 0) {
                H2.p = bundle;
            }
            H2.h.s();
            H2.h.clear();
        }
        H2.o = true;
        H2.n = true;
        if ((i == 108 || i == 0) && this.j != null) {
            ju H3 = H(0);
            H3.k = false;
            E(H3, null);
        }
    }

    public final void z() {
        bew bewVar = this.G;
        if (bewVar != null) {
            bewVar.a();
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return t(null, str, context, attributeSet);
    }

    @Override // defpackage.jg
    public final void n(int i) {
        if (i == 8) {
            i = 108;
        } else if (i == 9) {
            i = 109;
        }
        if (this.w && i == 108) {
        }
        if (this.s && i == 1) {
            this.s = false;
        }
        switch (i) {
            case 1:
                R();
                this.w = true;
                break;
            case 2:
                R();
                this.N = true;
                break;
            case 5:
                R();
                this.O = true;
                break;
            case 10:
                R();
                this.u = true;
                break;
            case 108:
                R();
                this.s = true;
                break;
            case 109:
                R();
                this.t = true;
                break;
            default:
                this.g.requestFeature(i);
                break;
        }
    }
}
