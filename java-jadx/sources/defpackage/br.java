package defpackage;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public class br implements ComponentCallbacks, View.OnCreateContextMenuListener, zq, aak, aex {
    static final Object g = new Object();
    public cr A;
    cc B;
    public br D;
    int E;
    int F;
    String G;
    boolean H;
    boolean I;
    boolean J;
    boolean K;
    boolean L;
    public boolean N;
    public ViewGroup O;
    public View P;
    boolean Q;
    public bo S;
    boolean T;
    LayoutInflater U;
    boolean V;
    public String W;
    dd Y;
    aew aa;
    public final ArrayList ab;
    public zn ac;
    Bundle i;
    SparseArray j;
    Bundle k;
    Boolean l;
    public Bundle n;
    br o;
    int q;
    boolean s;
    boolean t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    int z;
    int h = -1;
    String m = UUID.randomUUID().toString();
    String p = null;
    public Boolean r = null;
    cr C = new cr();
    final boolean M = true;
    boolean R = true;
    zm X = zm.RESUMED;
    final zz Z = new zz();

    public br() {
        new AtomicInteger();
        this.ab = new ArrayList();
        l();
    }

    @Deprecated
    public static br ad(Context context, String str) {
        try {
            try {
                return (br) cb.a(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassCastException e) {
                throw new bp("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
            } catch (ClassNotFoundException e2) {
                throw new bp("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
            }
        } catch (IllegalAccessException e3) {
            throw new bp("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        } catch (InstantiationException e4) {
            throw new bp("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e4);
        } catch (NoSuchMethodException e5) {
            throw new bp("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e5);
        } catch (InvocationTargetException e6) {
            throw new bp("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e6);
        }
    }

    private final int b() {
        return (this.X == zm.INITIALIZED || this.D == null) ? this.X.ordinal() : Math.min(this.X.ordinal(), this.D.b());
    }

    private final void l() {
        this.ac = new zn(this);
        this.aa = aew.a(this);
    }

    public final cr A() {
        cr crVar = this.A;
        if (crVar != null) {
            return crVar;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final View B() {
        View view = this.P;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    @Override // defpackage.zq
    public final zn C() {
        return this.ac;
    }

    @Override // defpackage.aex
    public final aev D() {
        return this.aa.a;
    }

    public final Object E() {
        cc ccVar = this.B;
        if (ccVar == null) {
            return null;
        }
        return ((bu) ccVar).a;
    }

    public final String F(int i) {
        return t().getString(i);
    }

    final void G() {
        l();
        this.W = this.m;
        this.m = UUID.randomUUID().toString();
        this.s = false;
        this.t = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.z = 0;
        this.A = null;
        this.C = new cr();
        this.B = null;
        this.E = 0;
        this.F = 0;
        this.G = null;
        this.H = false;
        this.I = false;
    }

    @Deprecated
    public final void H(int i, int i2, Intent intent) {
        if (cr.R(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Fragment ");
            sb.append(this);
            sb.append(" received the following in onActivityResult(): requestCode: ");
            sb.append(i);
            sb.append(" resultCode: ");
            sb.append(i2);
            sb.append(" data: ");
            sb.append(intent);
        }
    }

    @Deprecated
    public void I(Activity activity) {
        this.N = true;
    }

    public void J() {
        this.N = true;
    }

    public void K() {
        this.N = true;
    }

    public void L() {
        this.N = true;
    }

    public void M(View view, Bundle bundle) {
    }

    final void N() {
        M(this.P, this.i);
        this.C.z(2);
    }

    final void O(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.C.I(parcelable);
        this.C.p();
    }

    public final void P(int i, int i2, int i3, int i4) {
        if (this.S == null && i == 0) {
            if (i2 != 0) {
                i = 0;
            } else if (i3 != 0) {
                i = 0;
                i2 = 0;
            } else {
                if (i4 == 0) {
                    return;
                }
                i = 0;
                i2 = 0;
                i3 = 0;
            }
        }
        u().b = i;
        u().c = i2;
        u().d = i3;
        u().e = i4;
    }

    public final void Q(Bundle bundle) {
        cr crVar = this.A;
        if (crVar != null && crVar.T()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.n = bundle;
    }

    final void R(View view) {
        u().m = view;
    }

    final void S(int i) {
        if (this.S == null && i == 0) {
            return;
        }
        u();
        this.S.f = i;
    }

    final void T(boolean z) {
        if (this.S == null) {
            return;
        }
        u().a = z;
    }

    final void U(ArrayList arrayList, ArrayList arrayList2) {
        u();
        bo boVar = this.S;
        boVar.g = arrayList;
        boVar.h = arrayList2;
    }

    public final void V(Intent intent) {
        cc ccVar = this.B;
        if (ccVar != null) {
            xq.b(ccVar.c, intent, null);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    final boolean W() {
        bo boVar = this.S;
        if (boVar == null) {
            return false;
        }
        return boVar.a;
    }

    public final boolean X() {
        return this.B != null && this.s;
    }

    final boolean Y() {
        return this.z > 0;
    }

    public final void Z() {
    }

    public by aL() {
        return new bn(this);
    }

    public void aR(Context context) {
        this.N = true;
        cc ccVar = this.B;
        Activity activity = ccVar == null ? null : ccVar.b;
        if (activity != null) {
            this.N = false;
            I(activity);
        }
    }

    public final void aa() {
    }

    @Deprecated
    public final LayoutInflater ab() {
        cc ccVar = this.B;
        if (ccVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        bu buVar = (bu) ccVar;
        LayoutInflater cloneInContext = buVar.a.getLayoutInflater().cloneInContext(buVar.a);
        cloneInContext.setFactory2(this.C.c);
        return cloneInContext;
    }

    public final void ac() {
    }

    public final void ae() {
        this.N = true;
        cc ccVar = this.B;
        if ((ccVar == null ? null : ccVar.b) != null) {
            this.N = true;
        }
    }

    @Deprecated
    public final void af(br brVar) {
        za.e(this, brVar);
        cr crVar = this.A;
        cr crVar2 = brVar.A;
        if (crVar != null && crVar2 != null && crVar != crVar2) {
            throw new IllegalArgumentException("Fragment " + brVar + " must share the same FragmentManager to be set as a target fragment");
        }
        for (br brVar2 = brVar; brVar2 != null; brVar2 = brVar2.w(false)) {
            if (brVar2.equals(this)) {
                throw new IllegalArgumentException("Setting " + brVar + " as the target of " + this + " would create a target cycle");
            }
        }
        if (this.A == null || brVar.A == null) {
            this.p = null;
            this.o = brVar;
        } else {
            this.p = brVar.m;
            this.o = null;
        }
        this.q = 0;
    }

    public View ag(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return null;
    }

    final LayoutInflater ah() {
        LayoutInflater m = m();
        this.U = m;
        return m;
    }

    @Override // defpackage.aak
    public final aed ai() {
        if (this.A == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (b() == zm.INITIALIZED.ordinal()) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        ct ctVar = this.A.s;
        aed aedVar = (aed) ctVar.d.get(this.m);
        if (aedVar != null) {
            return aedVar;
        }
        aed aedVar2 = new aed(null);
        ctVar.d.put(this.m, aedVar2);
        return aedVar2;
    }

    public void d(Bundle bundle) {
        this.N = true;
        O(bundle);
        cr crVar = this.C;
        if (crVar.i > 0) {
            return;
        }
        crVar.p();
    }

    public void e() {
        this.N = true;
    }

    public void f() {
        this.N = true;
    }

    public void g(Bundle bundle) {
    }

    public void h() {
        this.N = true;
    }

    public void i() {
        this.N = true;
    }

    public void j(Bundle bundle) {
        this.N = true;
    }

    public void k(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.C.G();
        this.y = true;
        this.Y = new dd(ai(), null);
        View ag = ag(layoutInflater, viewGroup);
        this.P = ag;
        if (ag == null) {
            if (this.Y.b != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.Y = null;
        } else {
            this.Y.b();
            xr.b(this.P, this.Y);
            xs.b(this.P, this.Y);
            ew.r(this.P, this.Y);
            this.Z.g(this.Y);
        }
    }

    public LayoutInflater m() {
        return ab();
    }

    public final int n() {
        bo boVar = this.S;
        if (boVar == null) {
            return 0;
        }
        return boVar.b;
    }

    public final int o() {
        bo boVar = this.S;
        if (boVar == null) {
            return 0;
        }
        return boVar.c;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.N = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        y().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.N = true;
    }

    public final int p() {
        bo boVar = this.S;
        if (boVar == null) {
            return 0;
        }
        return boVar.d;
    }

    public final int q() {
        bo boVar = this.S;
        if (boVar == null) {
            return 0;
        }
        return boVar.e;
    }

    public Context r() {
        cc ccVar = this.B;
        if (ccVar == null) {
            return null;
        }
        return ccVar.c;
    }

    public final Context s() {
        Context r = r();
        if (r != null) {
            return r;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final Resources t() {
        return s().getResources();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.m);
        if (this.E != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.E));
        }
        if (this.G != null) {
            sb.append(" tag=");
            sb.append(this.G);
        }
        sb.append(")");
        return sb.toString();
    }

    public final bo u() {
        if (this.S == null) {
            this.S = new bo();
        }
        return this.S;
    }

    @Deprecated
    public final br v() {
        return w(true);
    }

    public final br w(boolean z) {
        String str;
        if (z) {
            za.c(this);
        }
        br brVar = this.o;
        if (brVar != null) {
            return brVar;
        }
        cr crVar = this.A;
        if (crVar == null || (str = this.p) == null) {
            return null;
        }
        return crVar.b(str);
    }

    public final bv x() {
        cc ccVar = this.B;
        if (ccVar == null) {
            return null;
        }
        return (bv) ccVar.b;
    }

    public final bv y() {
        bv x = x();
        if (x != null) {
            return x;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final cr z() {
        if (this.B != null) {
            return this.C;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }
}
