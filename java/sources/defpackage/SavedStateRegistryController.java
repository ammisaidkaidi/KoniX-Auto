package defpackage;

import android.os.Bundle;
import androidx.savedstate.Recreator;
import defpackage.LifecycleEvent;
import defpackage.LifecycleOwner;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SavedStateRegistryController {
    public final SavedStateRegistry a = new SavedStateRegistry();
    private final SavedStateRegistryOwner b;

    private SavedStateRegistryController(SavedStateRegistryOwner aexVar) {
        this.b = aexVar;
    }

    public static SavedStateRegistryController a(SavedStateRegistryOwner aexVar) {
        return new SavedStateRegistryController(aexVar);
    }

    public final void b(Bundle bundle) {
        LifecycleRegistry C = this.b.C();
        if (C.a != zm.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        C.b(new Recreator(this.b));
        SavedStateRegistry aevVar = this.a;
        if (aevVar.c) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            aevVar.b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        C.b(new DefaultLifecycleObserverInterface() { // from class: androidx.savedstate.SavedStateRegistry$1
            @Override // defpackage.DefaultLifecycleObserverInterface
            public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
            }
        });
        aevVar.c = true;
    }

    public final void c(Bundle bundle) {
        SavedStateRegistry aevVar = this.a;
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = aevVar.b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        SafeIterableMapListIterator e = aevVar.a.e();
        while (e.hasNext()) {
            SafeIterableMapEntry ulVar = (SafeIterableMapEntry) e.next();
            bundle2.putBundle((String) ulVar.a, ((SavedStateProviderInterface) ulVar.b).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
