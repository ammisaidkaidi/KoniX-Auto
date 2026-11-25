package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class bcc extends any implements dht {
    private volatile dhm ad;
    private final Object ae = new Object();
    private boolean af = false;
    private ContextWrapper f;

    private final void ar() {
        if (this.f == null) {
            this.f = new dhp(super.r(), this);
        }
    }

    @Override // defpackage.br
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
        dpx.o(z, "onAttach called multiple times with different Context! Sting Fragments should not be retained.", new Object[0]);
        ar();
        at();
    }

    @Override // defpackage.br
    public final void aR(Context context) {
        super.aR(context);
        ar();
        at();
    }

    @Override // defpackage.dht
    public final Object aT() {
        if (this.ad == null) {
            synchronized (this.ae) {
                if (this.ad == null) {
                    this.ad = new dhm(this);
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

    @Override // defpackage.br
    public final LayoutInflater m() {
        return LayoutInflater.from(new dhp(ab(), this));
    }

    @Override // defpackage.br
    public final Context r() {
        if (super.r() == null && this.f == null) {
            return null;
        }
        ar();
        return this.f;
    }
}
