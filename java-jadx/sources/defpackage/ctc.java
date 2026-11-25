package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ctc extends ctt {
    public ctc(Class cls) {
        super("tags", cls, false);
    }

    @Override // defpackage.ctt
    public final /* bridge */ /* synthetic */ void b(Object obj, cts ctsVar) {
        for (Map.Entry entry : ((cwa) obj).c.d) {
            if (((Set) entry.getValue()).isEmpty()) {
                ctsVar.a((String) entry.getKey(), null);
            } else {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    ctsVar.a((String) entry.getKey(), it.next());
                }
            }
        }
    }
}
