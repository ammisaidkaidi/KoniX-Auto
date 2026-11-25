package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ctb extends ctt {
    public ctb(Class cls) {
        super("group_by", cls, true);
    }

    @Override // defpackage.ctt
    public final void a(Iterator it, cts ctsVar) {
        if (it.hasNext()) {
            Object next = it.next();
            if (!it.hasNext()) {
                ctsVar.a(this.a, next);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            sb.append(next);
            do {
                sb.append(',');
                sb.append(it.next());
            } while (it.hasNext());
            String str = this.a;
            sb.append(']');
            ctsVar.a(str, sb.toString());
        }
    }
}
