package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cm implements ts {
    final /* synthetic */ cr a;

    public cm(cr crVar) {
        this.a = crVar;
    }

    @Override // defpackage.ts
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Map map = (Map) obj;
        ArrayList arrayList = new ArrayList(map.values());
        int[] iArr = new int[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            iArr[i] = true != ((Boolean) arrayList.get(i)).booleanValue() ? -1 : 0;
        }
        co coVar = (co) this.a.n.pollFirst();
        if (coVar == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("No permissions were requested for ");
            sb.append(this);
            Log.w("FragmentManager", "No permissions were requested for ".concat(toString()));
            return;
        }
        String str = coVar.a;
        if (this.a.a.b(str) == null) {
            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment ".concat(String.valueOf(str)));
        }
    }
}
