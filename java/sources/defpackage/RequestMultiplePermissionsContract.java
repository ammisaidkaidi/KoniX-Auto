package defpackage;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RequestMultiplePermissionsContract extends ActivityResultContract {
    public static final Map b(int i, Intent intent) {
        if (NavInstructionTypeEnum == -1 && intent != null) {
            String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
            if (intArrayExtra == null || stringArrayExtra == null) {
                return doc.a;
            }
            ArrayList arrayList = new ArrayList(intArrayExtra.length);
            for (int i2 : intArrayExtra) {
                arrayList.add(Boolean.valueOf(i2 == 0));
            }
            ArrayList arrayList2 = new ArrayList();
            for (String str : stringArrayExtra) {
                if (str != null) {
                    arrayList2.add(str);
                }
            }
            Iterator it = arrayList2.iterator();
            Iterator it2 = arrayList.iterator();
            ArrayList<SerializableObjectPair> arrayList3 = new ArrayList(Math.min(CommonObjectsAndPreconditionsUtil.g(arrayList2), CommonObjectsAndPreconditionsUtil.g(arrayList)));
            while (it.hasNext() && it2.hasNext()) {
                arrayList3.add(CommonObjectsAndPreconditionsUtil.h(it.next(), it2.next()));
            }
            switch (arrayList3.size()) {
                case 0:
                    break;
                case 1:
                    SerializableObjectPair dnzVar = (SerializableObjectPair) arrayList3.get(0);
                    dnzVar.getClass();
                    Map singletonMap = Collections.singletonMap(dnzVar.a, dnzVar.b);
                    singletonMap.getClass();
                    break;
                default:
                    LinkedHashMap linkedHashMap = new LinkedHashMap(CommonObjectsAndPreconditionsUtil.f(arrayList3.size()));
                    for (SerializableObjectPair dnzVar2 : arrayList3) {
                        linkedHashMap.put(dnzVar2.a, dnzVar2.b);
                    }
                    break;
            }
            return doc.a;
        }
        return doc.a;
    }

    @Override // defpackage.ActivityResultContract
    public final /* bridge */ /* synthetic */ Object a(int i, Intent intent) {
        return b(i, intent);
    }
}
