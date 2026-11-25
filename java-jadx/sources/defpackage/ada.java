package defpackage;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ada extends br implements adk, adi, adj, acd {
    public adl a;
    RecyclerView b;
    public boolean c;
    public boolean d;
    private final acw eu = new acw(this);
    private int ev = R.layout.preference_list_fragment;
    public final Handler e = new acu(this);
    private final Runnable ae = new acv(this);

    @Override // defpackage.acd
    public final Preference aO(CharSequence charSequence) {
        adl adlVar = this.a;
        if (adlVar == null) {
            return null;
        }
        return adlVar.e(charSequence);
    }

    @Override // defpackage.br
    public final View ag(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        TypedArray obtainStyledAttributes = r().obtainStyledAttributes(null, adp.h, R.attr.preferenceFragmentCompatStyle, 0);
        this.ev = obtainStyledAttributes.getResourceId(0, this.ev);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(r());
        View inflate = cloneInContext.inflate(this.ev, viewGroup, false);
        View findViewById = inflate.findViewById(android.R.id.list_container);
        if (!(findViewById instanceof ViewGroup)) {
            throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById;
        RecyclerView am = am(cloneInContext, viewGroup2);
        if (am == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.b = am;
        am.p(this.eu);
        acw acwVar = this.eu;
        if (drawable != null) {
            acwVar.b = drawable.getIntrinsicHeight();
        } else {
            acwVar.b = 0;
        }
        acwVar.a = drawable;
        acwVar.d.b.I();
        if (dimensionPixelSize != -1) {
            acw acwVar2 = this.eu;
            acwVar2.b = dimensionPixelSize;
            acwVar2.d.b.I();
        }
        this.eu.c = z;
        if (this.b.getParent() == null) {
            viewGroup2.addView(this.b);
        }
        this.e.post(this.ae);
        return inflate;
    }

    @Override // defpackage.adi
    public void aj(Preference preference) {
        throw null;
    }

    @Override // defpackage.adk
    public final boolean ak(Preference preference) {
        if (preference.getFragment() == null) {
            return false;
        }
        r();
        if ((x() instanceof acy) && ((acy) x()).a()) {
            return true;
        }
        Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
        cr A = A();
        Bundle extras = preference.getExtras();
        cb e = A.e();
        y().getClassLoader();
        br b = e.b(preference.getFragment());
        b.Q(extras);
        b.af(this);
        da h = A.h();
        h.n(((View) this.P.getParent()).getId(), b);
        h.k();
        h.g();
        return true;
    }

    public abstract void al(String str);

    public RecyclerView am(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        throw null;
    }

    @Override // defpackage.adj
    public final void an() {
        r();
        if (x() instanceof acz) {
            ((acz) x()).a();
        }
    }

    public final PreferenceScreen b() {
        return this.a.b;
    }

    @Override // defpackage.br
    public final void d(Bundle bundle) {
        super.d(bundle);
        TypedValue typedValue = new TypedValue();
        r().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        r().getTheme().applyStyle(i, false);
        adl adlVar = new adl(r());
        this.a = adlVar;
        adlVar.e = this;
        Bundle bundle2 = this.n;
        al(bundle2 != null ? bundle2.getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    @Override // defpackage.br
    public final void e() {
        this.e.removeCallbacks(this.ae);
        this.e.removeMessages(1);
        if (this.c) {
            this.b.Y(null);
            PreferenceScreen b = b();
            if (b != null) {
                b.onDetached();
            }
        }
        this.b = null;
        super.e();
    }

    @Override // defpackage.br
    public final void g(Bundle bundle) {
        PreferenceScreen b = b();
        if (b != null) {
            Bundle bundle2 = new Bundle();
            b.saveHierarchyState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // defpackage.br
    public void h() {
        super.h();
        adl adlVar = this.a;
        adlVar.c = this;
        adlVar.d = this;
    }

    @Override // defpackage.br
    public final void i() {
        super.i();
        adl adlVar = this.a;
        adlVar.c = null;
        adlVar.d = null;
    }

    public final void l() {
        PreferenceScreen b = b();
        if (b != null) {
            this.b.Y(new adg(b));
            b.onAttached();
        }
    }
}
