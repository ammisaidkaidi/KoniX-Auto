package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ak implements Serializable {
    private static final long serialVersionUID = 1;
    public boolean a = false;
    public final List b = new ArrayList();

    public final void a(aj ajVar) {
        String str = ajVar.a;
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            if (str.equals(((aj) it.next()).a)) {
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate keyword: ".concat(valueOf) : new String("Duplicate keyword: "));
            }
        }
        this.b.add(ajVar);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (aj ajVar : this.b) {
            if (sb.length() != 0) {
                sb.append(";  ");
            }
            sb.append(ajVar);
        }
        return sb.toString();
    }
}
