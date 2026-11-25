package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GroupByMetadataKey extends MetadataKey {
    public GroupByMetadataKey(Class cls) {
        super("group_by", cls, true);
    }

    @Override // defpackage.MetadataKey
    public final void a(Iterator it, ContextAppender ctsVar) {
        if (it.hasNext()) {
            Object next = it.next();
            if (!it.hasNext()) {
                ctsVar.a(this.a, next);
                return;
            }
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append('[');
            StaggeredGridLayoutParams.append(next);
            do {
                StaggeredGridLayoutParams.append(',');
                StaggeredGridLayoutParams.append(it.next());
            } while (it.hasNext());
            String str = this.a;
            StaggeredGridLayoutParams.append(']');
            ctsVar.a(str, StaggeredGridLayoutParams.toString());
        }
    }
}
