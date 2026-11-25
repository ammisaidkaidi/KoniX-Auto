package defpackage;

import java.util.HashMap;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ct extends aaf {
    public static final aag a = new aap(1);
    public final boolean e;
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public boolean f = false;
    public boolean g = false;

    public ct(boolean z) {
        this.e = z;
    }

    final void a(br brVar) {
        if (cr.R(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Clearing non-config state for ");
            sb.append(brVar);
        }
        b(brVar.m);
    }

    public final void b(String str) {
        ct ctVar = (ct) this.c.get(str);
        if (ctVar != null) {
            ctVar.c();
            this.c.remove(str);
        }
        aed aedVar = (aed) this.d.get(str);
        if (aedVar != null) {
            aedVar.b();
            this.d.remove(str);
        }
    }

    @Override // defpackage.aaf
    public final void c() {
        if (cr.R(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("onCleared called for ");
            sb.append(this);
        }
        this.f = true;
    }

    final void d(br brVar) {
        if (this.g || this.b.remove(brVar.m) == null || !cr.R(2)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Updating retained Fragments: Removed ");
        sb.append(brVar);
    }

    final boolean e(br brVar) {
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
        ct ctVar = (ct) obj;
        return this.b.equals(ctVar.b) && this.c.equals(ctVar.c) && this.d.equals(ctVar.d);
    }

    public final int hashCode() {
        return (((this.b.hashCode() * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.b.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
