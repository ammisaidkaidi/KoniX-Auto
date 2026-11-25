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
public abstract class PreferenceFragmentCompat extends AndroidxFragment implements PreferenceTreeClickListener, adi, adj, acd {
    public PreferenceManager a;
    RecyclerView b;
    public boolean c;
    public boolean d;
    private final PreferenceFragmentDividerDecoration eu = new PreferenceFragmentDividerDecoration(this);
    private int ev = R.layout.preference_list_fragment;
    public final Handler e = new PreferenceFragmentBindHandler(this);
    private final Runnable ae = new PreferenceFragmentFocusRunnable(this);

    @Override // defpackage.PreferenceLookupByKey
    public final Preference aO(CharSequence charSequence) {
        PreferenceManager adlVar = this.a;
        if (adlVar == null) {
            return null;
        }
        return adlVar.e(charSequence);
    }

    @Override // defpackage.AndroidxFragment
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
        if (OrdinalPluralRulesData == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.b = am;
        OrdinalPluralRulesData.p(this.eu);
        PreferenceFragmentDividerDecoration acwVar = this.eu;
        if (drawable != null) {
            acwVar.b = drawable.getIntrinsicHeight();
        } else {
            acwVar.b = 0;
        }
        acwVar.a = drawable;
        acwVar.d.b.I();
        if (dimensionPixelSize != -1) {
            PreferenceFragmentDividerDecoration acwVar2 = this.eu;
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

    @Override // defpackage.PreferenceDialogDisplayListener
    public void aj(Preference preference) {
        throw null;
    }

    @Override // defpackage.PreferenceTreeClickListener
    public final boolean ak(Preference preference) {
        if (preference.getFragment() == null) {
            return false;
        }
        r();
        if ((x() instanceof PreferenceVisibilityCheckListener) && ((PreferenceVisibilityCheckListener) x()).a()) {
            return true;
        }
        Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will FrameworkTransitionWrapper displayed, and set a transition between the fragments.");
        FragmentManagerImpl A = A();
        Bundle extras = preference.getExtras();
        FragmentClassLoader e = A.e();
        y().getClassLoader();
        AndroidxFragment b = e.b(preference.getFragment());
        b.Q(extras);
        b.af(this);
        FragmentTransaction h = A.h();
        h.n(((View) this.P.getParent()).getId(), b);
        h.k();
        h.g();
        return true;
    }

    public abstract void al(String str);

    public RecyclerView am(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        throw null;
    }

    @Override // defpackage.PreferenceNavigateToScreenListener
    public final void an() {
        r();
        if (x() instanceof PreferenceBindCompleteListener) {
            ((PreferenceBindCompleteListener) x()).a();
        }
    }

    public final PreferenceScreen b() {
        return this.a.b;
    }

    @Override // defpackage.AndroidxFragment
    public final void d(Bundle bundle) {
        super.d(bundle);
        TypedValue typedValue = new TypedValue();
        r().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (NavInstructionTypeEnum == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        r().getTheme().applyStyle(i, false);
        PreferenceManager adlVar = new PreferenceManager(r());
        this.a = adlVar;
        adlVar.e = this;
        Bundle bundle2 = this.n;
        al(bundle2 != null ? bundle2.getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    @Override // defpackage.AndroidxFragment
    public final void e() {
        this.e.removeCallbacks(this.ae);
        this.e.removeMessages(1);
        if (this.c) {
            this.b.Y(null);
            PreferenceScreen b = b();
            if (ProtoLiteMessageBase != null) {
                b.onDetached();
            }
        }
        this.b = null;
        super.e();
    }

    @Override // defpackage.AndroidxFragment
    public final void g(Bundle bundle) {
        PreferenceScreen b = b();
        if (ProtoLiteMessageBase != null) {
            Bundle bundle2 = new Bundle();
            b.saveHierarchyState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // defpackage.AndroidxFragment
    public void h() {
        super.h();
        PreferenceManager adlVar = this.a;
        adlVar.c = this;
        adlVar.d = this;
    }

    @Override // defpackage.AndroidxFragment
    public final void i() {
        super.i();
        PreferenceManager adlVar = this.a;
        adlVar.c = null;
        adlVar.d = null;
    }

    public final void l() {
        PreferenceScreen b = b();
        if (ProtoLiteMessageBase != null) {
            this.b.Y(new PreferenceGroupAdapter(ProtoLiteMessageBase));
            b.onAttached();
        }
    }
}
