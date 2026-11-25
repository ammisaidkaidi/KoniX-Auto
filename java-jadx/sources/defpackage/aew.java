package defpackage;

import android.os.Bundle;
import androidx.savedstate.Recreator;
import defpackage.zl;
import defpackage.zq;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aew {
    public final aev a = new aev();
    private final aex b;

    private aew(aex aexVar) {
        this.b = aexVar;
    }

    public static aew a(aex aexVar) {
        return new aew(aexVar);
    }

    public final void b(Bundle bundle) {
        zn C = this.b.C();
        if (C.a != zm.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        C.b(new Recreator(this.b));
        aev aevVar = this.a;
        if (aevVar.c) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            aevVar.b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        C.b(new zo() { // from class: androidx.savedstate.SavedStateRegistry$1
            @Override // defpackage.zo
            public final void a(zq zqVar, zl zlVar) {
            }
        });
        aevVar.c = true;
    }

    public final void c(Bundle bundle) {
        aev aevVar = this.a;
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = aevVar.b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        um e = aevVar.a.e();
        while (e.hasNext()) {
            ul ulVar = (ul) e.next();
            bundle2.putBundle((String) ulVar.a, ((aeu) ulVar.b).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
