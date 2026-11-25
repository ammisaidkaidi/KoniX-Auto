package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class EmbeddedSettingsFragment extends CarUiPreferenceFragment implements StingComponentHolder {
    private volatile StingFragmentComponentManager ad;
    private final Object ae = new Object();
    private boolean af = false;
    private ContextWrapper f;

    private final void ar() {
        if (this.f == null) {
            this.f = new LayoutInflaterContextWrapper(super.r(), this);
        }
    }

    @Override // defpackage.AndroidxFragment
    public final void I(Activity activity) {
        super.I(activity);
        Context context = this.f;
        boolean z = true;
        if (context != null) {
            while ((context instanceof ContextWrapper) && !(context instanceof Activity)) {
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (context != activity) {
                z = false;
            }
        }
        CommonObjectsAndPreconditionsUtil.o(z, "onAttach called multiple times with different Context! Sting Fragments should not be retained.", new Object[0]);
        ar();
        at();
    }

    @Override // defpackage.AndroidxFragment
    public final void aR(Context context) {
        super.aR(context);
        ar();
        at();
    }

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.ad == null) {
            synchronized (this.ae) {
                if (this.ad == null) {
                    this.ad = new StingFragmentComponentManager(this);
                }
            }
        }
        return this.ad.aT();
    }

    protected final void at() {
        if (this.af) {
            return;
        }
        this.af = true;
        aT();
    }

    @Override // defpackage.AndroidxFragment
    public final LayoutInflater m() {
        return LayoutInflater.from(new LayoutInflaterContextWrapper(ab(), this));
    }

    @Override // defpackage.AndroidxFragment
    public final Context r() {
        if (super.r() == null && this.f == null) {
            return null;
        }
        ar();
        return this.f;
    }
}
