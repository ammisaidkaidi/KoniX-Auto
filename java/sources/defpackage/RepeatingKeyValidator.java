package defpackage;

import java.util.Iterator;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RepeatingKeyValidator {
    private static final SingleKeyValueHandler a = new ArrayKeyValueHandler();
    private static final RepeatedKeyValueHandler b = new IterableKeyValueHandler();

    public static KeyValueHandlerBase a(Set set) {
        MetadataKeyRegistry cujVar = new MetadataKeyRegistry(SingleStringProtoMessage);
        cujVar.f = b;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            MetadataKey cttVar = (MetadataKey) it.next();
            ViewParentCompatStatics.u(cttVar, "key");
            if (cttVar.b) {
                RepeatedKeyValueHandler culVar = cuj.b;
                ViewParentCompatStatics.u(cttVar, "key");
                ViewParentCompatStatics.v(cttVar.b, "key must be repeating");
                cujVar.c.remove(cttVar);
                cujVar.d.put(cttVar, culVar);
            } else {
                SingleKeyValueHandler cumVar = cuj.a;
                ViewParentCompatStatics.u(cttVar, "key");
                cujVar.d.remove(cttVar);
                cujVar.c.put(cttVar, cumVar);
            }
        }
        return new DefaultKeyValueHandler(cujVar);
    }
}
