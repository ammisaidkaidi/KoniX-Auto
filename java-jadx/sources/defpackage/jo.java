package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ViewStubCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.Window;
import android.widget.PopupWindow;
import com.google.android.embedded.projection.R;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class jo extends kx {
    final /* synthetic */ jw a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jo(jw jwVar, Window.Callback callback) {
        super(callback);
        this.a = jwVar;
    }

    @Override // defpackage.kx, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.a.C(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
    
        if (r3.performShortcut(r2, r7, 0) != false) goto L32;
     */
    @Override // defpackage.kx, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        kg kgVar;
        if (!super.dispatchKeyShortcutEvent(keyEvent)) {
            jw jwVar = this.a;
            int keyCode = keyEvent.getKeyCode();
            iv a = jwVar.a();
            if (a != null && (kgVar = ((kh) a).g) != null) {
                lo loVar = kgVar.a;
                loVar.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            }
            ju juVar = jwVar.x;
            if (juVar == null || !jwVar.J(juVar, keyEvent.getKeyCode(), keyEvent)) {
                if (jwVar.x == null) {
                    ju H = jwVar.H(0);
                    jwVar.E(H, keyEvent);
                    boolean J = jwVar.J(H, keyEvent.getKeyCode(), keyEvent);
                    H.k = false;
                    if (!J) {
                    }
                }
                return false;
            }
            ju juVar2 = jwVar.x;
            if (juVar2 != null) {
                juVar2.l = true;
            }
        }
        return true;
    }

    @Override // defpackage.kx, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // defpackage.kx, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            if (!(menu instanceof lo)) {
                return false;
            }
            i = 0;
        }
        return super.onCreatePanelMenu(i, menu);
    }

    @Override // defpackage.kx, android.view.Window.Callback
    public final boolean onMenuOpened(int i, Menu menu) {
        iv a;
        super.onMenuOpened(i, menu);
        jw jwVar = this.a;
        if (i == 108 && (a = jwVar.a()) != null) {
            a.b(true);
        }
        return true;
    }

    @Override // defpackage.kx, android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
        jw jwVar = this.a;
        if (i == 108) {
            iv a = jwVar.a();
            if (a != null) {
                a.b(false);
                return;
            }
            return;
        }
        if (i == 0) {
            ju H = jwVar.H(0);
            if (H.m) {
                jwVar.x(H, false);
            }
        }
    }

    @Override // defpackage.kx, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        lo loVar = menu instanceof lo ? (lo) menu : null;
        if (i == 0) {
            if (loVar == null) {
                return false;
            }
            i = 0;
        }
        if (loVar != null) {
            loVar.i = true;
        }
        boolean onPreparePanel = super.onPreparePanel(i, view, menu);
        if (loVar != null) {
            loVar.i = false;
        }
        return onPreparePanel;
    }

    @Override // defpackage.kx, android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
        lo loVar = this.a.H(0).h;
        if (loVar != null) {
            super.onProvideKeyboardShortcuts(list, loVar, i);
        } else {
            super.onProvideKeyboardShortcuts(list, menu, i);
        }
    }

    @Override // defpackage.kx, android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }

    @Override // defpackage.kx, android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        Context context;
        jw jwVar = this.a;
        if (jwVar.o) {
            switch (i) {
                case 0:
                    kq kqVar = new kq(jwVar.f, callback);
                    jw jwVar2 = this.a;
                    ko koVar = jwVar2.k;
                    if (koVar != null) {
                        koVar.f();
                    }
                    jn jnVar = new jn(jwVar2, kqVar);
                    iv a = jwVar2.a();
                    if (a != null) {
                        kh khVar = (kh) a;
                        kg kgVar = khVar.g;
                        if (kgVar != null) {
                            kgVar.f();
                        }
                        khVar.b.l(false);
                        khVar.e.i();
                        kg kgVar2 = new kg(khVar, khVar.e.getContext(), jnVar);
                        kgVar2.a.s();
                        try {
                            if (kgVar2.b.c(kgVar2, kgVar2.a)) {
                                khVar.g = kgVar2;
                                kgVar2.g();
                                khVar.e.h(kgVar2);
                                khVar.g(true);
                                khVar.e.sendAccessibilityEvent(32);
                            } else {
                                kgVar2 = null;
                            }
                            jwVar2.k = kgVar2;
                        } finally {
                            kgVar2.a.r();
                        }
                    }
                    ko koVar2 = jwVar2.k;
                    if (koVar2 == null) {
                        jwVar2.z();
                        ko koVar3 = jwVar2.k;
                        if (koVar3 != null) {
                            koVar3.f();
                        }
                        if (jwVar2.l == null) {
                            if (jwVar2.v) {
                                TypedValue typedValue = new TypedValue();
                                Resources.Theme theme = jwVar2.f.getTheme();
                                theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                                if (typedValue.resourceId != 0) {
                                    Resources.Theme newTheme = jwVar2.f.getResources().newTheme();
                                    newTheme.setTo(theme);
                                    newTheme.applyStyle(typedValue.resourceId, true);
                                    context = new ue(jwVar2.f, 0);
                                    context.getTheme().setTo(newTheme);
                                } else {
                                    context = jwVar2.f;
                                }
                                jwVar2.l = new ActionBarContextView(context);
                                jwVar2.m = new PopupWindow(context, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                                is.b(jwVar2.m, 2);
                                jwVar2.m.setContentView(jwVar2.l);
                                jwVar2.m.setWidth(-1);
                                context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                                jwVar2.l.e = TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
                                jwVar2.m.setHeight(-2);
                                jwVar2.n = new jk(jwVar2, 0);
                            } else {
                                ViewStubCompat viewStubCompat = (ViewStubCompat) jwVar2.q.findViewById(R.id.action_mode_bar_stub);
                                if (viewStubCompat != null) {
                                    viewStubCompat.a = LayoutInflater.from(jwVar2.q());
                                    jwVar2.l = (ActionBarContextView) viewStubCompat.a();
                                }
                            }
                        }
                        if (jwVar2.l != null) {
                            jwVar2.z();
                            jwVar2.l.i();
                            kp kpVar = new kp(jwVar2.l.getContext(), jwVar2.l, jnVar);
                            if (jnVar.c(kpVar, kpVar.a)) {
                                kpVar.g();
                                jwVar2.l.h(kpVar);
                                jwVar2.k = kpVar;
                                if (jwVar2.F()) {
                                    jwVar2.l.setAlpha(0.0f);
                                    bew O = hs.O(jwVar2.l);
                                    O.b(1.0f);
                                    jwVar2.G = O;
                                    jwVar2.G.d(new jl(jwVar2));
                                } else {
                                    jwVar2.l.setAlpha(1.0f);
                                    jwVar2.l.setVisibility(0);
                                    jwVar2.l.sendAccessibilityEvent(32);
                                    if (jwVar2.l.getParent() instanceof View) {
                                        hs.t((View) jwVar2.l.getParent());
                                    }
                                }
                                if (jwVar2.m != null) {
                                    jwVar2.g.getDecorView().post(jwVar2.n);
                                }
                            } else {
                                jwVar2.k = null;
                            }
                        }
                        koVar2 = jwVar2.k;
                    }
                    if (koVar2 != null) {
                        return kqVar.e(koVar2);
                    }
                    return null;
            }
        }
        return super.onWindowStartingActionMode(callback, i);
    }
}
