package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.LiveData$LifecycleBoundObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AndroidxDialogFragment extends AndroidxFragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    private Handler ad;
    private boolean ak;
    private boolean am;
    public Dialog c;
    public boolean d;
    public boolean e;
    private final Runnable ae = new DialogFragmentStateRunnable(this);
    private final DialogInterface.OnCancelListener af = new DialogCancelListenerStub();
    public final DialogInterface.OnDismissListener a = new DialogFragmentDismissListener(this);
    private int ag = 0;
    private int ah = 0;
    private boolean ai = true;
    public boolean b = true;
    private int aj = -1;
    private final LoadCompleteListener al = new DialogFragmentContainerChecker(this);
    public boolean f = false;

    @Override // defpackage.AndroidxFragment
    public final AbstractFragmentContainer aL() {
        return new DialogFragmentLifecycleHelper(this, super.aL());
    }

    @Override // defpackage.AndroidxFragment
    public final void aR(Context context) {
        super.aR(context);
        MutableLiveData zzVar = this.Z;
        LoadCompleteListener aaaVar = this.al;
        LiveData.a("observeForever");
        LiveDataLifecycleBoundObserver zwVar = new LiveDataLifecycleBoundObserver(zzVar, aaaVar);
        LiveDataObserverWrapper zxVar = (LiveDataObserverWrapper) zzVar.c.f(aaaVar, zwVar);
        if (zxVar instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (zxVar == null) {
            zwVar.d(true);
        }
        if (this.e) {
            return;
        }
        this.d = false;
    }

    public final void b(boolean z, boolean z2) {
        if (this.d) {
            return;
        }
        this.d = true;
        this.e = false;
        Dialog dialog = this.c;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.c.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.ad.getLooper()) {
                    onDismiss(this.c);
                } else {
                    this.ad.post(this.ae);
                }
            }
        }
        this.am = true;
        if (this.aj >= 0) {
            FragmentManagerImpl A = A();
            int i = this.aj;
            if (NavInstructionTypeEnum >= 0) {
                A.C(new FragmentManagerLaidOutCallback(A, i), z);
                this.aj = -1;
                return;
            } else {
                throw new IllegalArgumentException("Bad id: " + i);
            }
        }
        FragmentTransaction h = A().h();
        h.m();
        FragmentManagerImpl crVar = this.A;
        if (crVar != null && crVar != ((FragmentBackStackRecord) h).a) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + toString() + " is already attached to a FragmentManager.");
        }
        h.i(new FragmentTransactionExecutor(3, this));
        if (IcuMessageFormat) {
            ((FragmentBackStackRecord) h).h(true);
        } else {
            h.g();
        }
    }

    @Override // defpackage.AndroidxFragment
    public void d(Bundle bundle) {
        super.d(bundle);
        this.ad = new Handler();
        this.b = this.F == 0;
        if (bundle != null) {
            this.ag = bundle.getInt("android:style", 0);
            this.ah = bundle.getInt("android:theme", 0);
            this.ai = bundle.getBoolean("android:cancelable", true);
            this.b = bundle.getBoolean("android:showsDialog", this.b);
            this.aj = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // defpackage.AndroidxFragment
    public final void e() {
        super.e();
        Dialog dialog = this.c;
        if (dialog != null) {
            this.am = true;
            dialog.setOnDismissListener(null);
            this.c.dismiss();
            if (!this.d) {
                onDismiss(this.c);
            }
            this.c = null;
            this.f = false;
        }
    }

    @Override // defpackage.AndroidxFragment
    public final void f() {
        super.f();
        if (!this.e && !this.d) {
            this.d = true;
        }
        this.Z.f(this.al);
    }

    @Override // defpackage.AndroidxFragment
    public void g(Bundle bundle) {
        Dialog dialog = this.c;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.ag;
        if (NavInstructionTypeEnum != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.ah;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        if (!this.ai) {
            bundle.putBoolean("android:cancelable", false);
        }
        if (!this.b) {
            bundle.putBoolean("android:showsDialog", false);
        }
        int i3 = this.aj;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // defpackage.AndroidxFragment
    public final void h() {
        super.h();
        Dialog dialog = this.c;
        if (dialog != null) {
            this.am = false;
            dialog.show();
            View decorView = this.c.getWindow().getDecorView();
            PrimesDebugEventsHelper.b(decorView, this);
            PrimesMetricTransmitter.b(decorView, this);
            ew.r(decorView, this);
        }
    }

    @Override // defpackage.AndroidxFragment
    public final void i() {
        super.i();
        Dialog dialog = this.c;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // defpackage.AndroidxFragment
    public final void j(Bundle bundle) {
        Bundle bundle2;
        super.j(bundle);
        if (this.c == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.c.onRestoreInstanceState(bundle2);
    }

    @Override // defpackage.AndroidxFragment
    public final void k(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.k(layoutInflater, viewGroup, bundle);
        if (this.P != null || this.c == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.c.onRestoreInstanceState(bundle2);
    }

    public Dialog l() {
        if (FragmentManagerImpl.R(3)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("onCreateDialog called for DialogFragment ");
            StaggeredGridLayoutParams.append(this);
        }
        return new Dialog(s(), this.ah);
    }

    @Override // defpackage.AndroidxFragment
    public final LayoutInflater m() {
        LayoutInflater ab = ab();
        if (!this.b || this.ak) {
            if (FragmentManagerImpl.R(2)) {
                StringBuilder sb = new StringBuilder();
                StaggeredGridLayoutParams.append("getting layout inflater for DialogFragment ");
                StaggeredGridLayoutParams.append(this);
            }
            return ab;
        }
        if (!this.f) {
            try {
                this.ak = true;
                Dialog l = l();
                this.c = l;
                if (this.b) {
                    switch (this.ag) {
                        case 3:
                            Window window = l.getWindow();
                            if (window != null) {
                                window.addFlags(24);
                            }
                        case 1:
                        case 2:
                            l.requestWindowFeature(1);
                            break;
                    }
                    Context r = r();
                    if (IcuMessagePattern instanceof Activity) {
                        this.c.setOwnerActivity((Activity) r);
                    }
                    this.c.setCancelable(this.ai);
                    this.c.setOnCancelListener(this.af);
                    this.c.setOnDismissListener(this.a);
                    this.f = true;
                } else {
                    this.c = null;
                }
            } finally {
                this.ak = false;
            }
        }
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("get layout inflater for DialogFragment ");
            sb2.append(this);
            sb2.append(" from dialog context");
        }
        Dialog dialog = this.c;
        return dialog != null ? AndDecimalPredicate.cloneInContext(dialog.getContext()) : ab;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (this.am) {
            return;
        }
        if (FragmentManagerImpl.R(3)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("onDismiss called for DialogFragment ");
            StaggeredGridLayoutParams.append(this);
        }
        b(true, true);
    }
}
