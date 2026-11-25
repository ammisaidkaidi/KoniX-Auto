package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TagsMetadataKey extends MetadataKey {
    public TagsMetadataKey(Class cls) {
        super("tags", cls, false);
    }

    @Override // defpackage.MetadataKey
    public final /* bridge */ /* synthetic */ void b(Object obj, ContextAppender ctsVar) {
        for (Map.Entry entry : ((SortedMetadataSnapshot) obj).c.d) {
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
