package defpackage;

import java.util.HashMap;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FragmentManagerViewModel extends ViewModelBase {
    public static final ViewModelFactory a = new SwitchingViewModelFactory(1);
    public final boolean e;
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public boolean f = false;
    public boolean g = false;

    public FragmentManagerViewModel(boolean z) {
        this.e = z;
    }

    final void a(AndroidxFragment brVar) {
        if (FragmentManagerImpl.R(3)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Clearing non-config state for ");
            StaggeredGridLayoutParams.append(brVar);
        }
        b(brVar.m);
    }

    public final void b(String str) {
        FragmentManagerViewModel ctVar = (FragmentManagerViewModel) this.c.get(str);
        if (ctVar != null) {
            ctVar.c();
            this.c.remove(str);
        }
        ViewModelStoreWithMigrationMap aedVar = (ViewModelStoreWithMigrationMap) this.d.get(str);
        if (aedVar != null) {
            aedVar.b();
            this.d.remove(str);
        }
    }

    @Override // defpackage.ViewModelBase
    public final void c() {
        if (FragmentManagerImpl.R(3)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("onCleared called for ");
            StaggeredGridLayoutParams.append(this);
        }
        this.f = true;
    }

    final void d(AndroidxFragment brVar) {
        if (this.g || this.b.remove(brVar.m) == null || !FragmentManagerImpl.R(2)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append("Updating retained Fragments: Removed ");
        StaggeredGridLayoutParams.append(brVar);
    }

    final boolean e(AndroidxFragment brVar) {
        if (this.b.containsKey(brVar.m) && this.e) {
            return this.f;
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FragmentManagerViewModel ctVar = (FragmentManagerViewModel) obj;
        return this.b.equals(ctVar.b) && this.c.equals(ctVar.c) && this.d.equals(ctVar.d);
    }

    public final int hashCode() {
        return (((this.b.hashCode() * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this)));
        StaggeredGridLayoutParams.append("} Fragments (");
        Iterator it = this.b.values().iterator();
        while (it.hasNext()) {
            StaggeredGridLayoutParams.append(it.next());
            if (it.hasNext()) {
                StaggeredGridLayoutParams.append(", ");
            }
        }
        StaggeredGridLayoutParams.append(") Child Non Config (");
        Iterator it2 = this.c.keySet().iterator();
        while (it2.hasNext()) {
            StaggeredGridLayoutParams.append((String) it2.next());
            if (it2.hasNext()) {
                StaggeredGridLayoutParams.append(", ");
            }
        }
        StaggeredGridLayoutParams.append(") ViewModelStores (");
        Iterator it3 = this.d.keySet().iterator();
        while (it3.hasNext()) {
            StaggeredGridLayoutParams.append((String) it3.next());
            if (it3.hasNext()) {
                StaggeredGridLayoutParams.append(", ");
            }
        }
        StaggeredGridLayoutParams.append(')');
        return StaggeredGridLayoutParams.toString();
    }
}
