package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentStore {
    public final ArrayList a = new ArrayList();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public FragmentManagerViewModel d;

    final AndroidxFragment a(String str) {
        FragmentStateManager cxVar = (FragmentStateManager) this.b.get(str);
        if (cxVar != null) {
            return cxVar.c;
        }
        return null;
    }

    final AndroidxFragment b(String str) {
        for (FragmentStateManager cxVar : this.b.values()) {
            if (cxVar != null) {
                AndroidxFragment brVar = cxVar.c;
                if (!str.equals(brVar.m)) {
                    brVar = brVar.C.a.b(str);
                }
                if (brVar != null) {
                    return brVar;
                }
            }
        }
        return null;
    }

    final BackStackStateParcelable c(String str, BackStackStateParcelable cvVar) {
        return cvVar != null ? (BackStackStateParcelable) this.c.put(str, cvVar) : (BackStackStateParcelable) this.c.remove(str);
    }

    final FragmentStateManager d(String str) {
        return (FragmentStateManager) this.b.get(str);
    }

    final List e() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager cxVar : this.b.values()) {
            if (cxVar != null) {
                arrayList.add(cxVar);
            }
        }
        return arrayList;
    }

    final List f() {
        ArrayList arrayList;
        if (this.a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.a) {
            arrayList = new ArrayList(this.a);
        }
        return arrayList;
    }

    final void g(AndroidxFragment brVar) {
        if (this.a.contains(brVar)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Fragment already added: ");
            StaggeredGridLayoutParams.append(brVar);
            throw new IllegalStateException("Fragment already added: ".concat(String.valueOf(brVar)));
        }
        synchronized (this.a) {
            this.a.add(brVar);
        }
        brVar.s = true;
    }

    final void h() {
        this.b.values().removeAll(Collections.singleton(null));
    }

    final void i(FragmentStateManager cxVar) {
        AndroidxFragment brVar = cxVar.c;
        if (l(brVar.m)) {
            return;
        }
        this.b.put(brVar.m, cxVar);
        boolean z = brVar.K;
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Added fragment to active set ");
            StaggeredGridLayoutParams.append(brVar);
        }
    }

    final void j(FragmentStateManager cxVar) {
        AndroidxFragment brVar = cxVar.c;
        if (brVar.J) {
            this.d.d(brVar);
        }
        if (((FragmentStateManager) this.b.put(brVar.m, null)) != null && FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Removed fragment from active set ");
            StaggeredGridLayoutParams.append(brVar);
        }
    }

    final void k(AndroidxFragment brVar) {
        synchronized (this.a) {
            this.a.remove(brVar);
        }
        brVar.s = false;
    }

    final boolean l(String str) {
        return this.b.get(str) != null;
    }
}
