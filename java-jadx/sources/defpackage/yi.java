package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class yi implements gc {
    final /* synthetic */ String a;

    public yi(String str) {
        this.a = str;
    }

    @Override // defpackage.gc
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        synchronized (yk.c) {
            ArrayList arrayList = (ArrayList) yk.d.get(this.a);
            if (arrayList == null) {
                return;
            }
            yk.d.remove(this.a);
            for (int i = 0; i < arrayList.size(); i++) {
                ((gc) arrayList.get(i)).a(obj);
            }
        }
    }
}
