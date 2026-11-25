package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class AbstractMetricExtensionConverter {
    public abstract MessageLite a(String str, Object obj);

    public abstract MessageLite b(MessageLite derVar, MessageLite derVar2);

    public abstract String c(MessageLite derVar);

    public final List d(Map map) {
        MessageLite a;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue() != null && (SingleStringProtoMessage = a((String) entry.getKey(), entry.getValue())) != null) {
                arrayList.add(SingleStringProtoMessage);
            }
        }
        return arrayList;
    }

    final List e(List list, List list2) {
        MessageLite derVar;
        if (list.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MessageLite derVar2 = (MessageLite) it.next();
            String c = c(derVar2);
            Iterator it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    derVar = null;
                    break;
                }
                derVar = (MessageLite) it2.next();
                if (c.equals(c(derVar))) {
                    break;
                }
            }
            MessageLite b = b(derVar2, derVar);
            if (ProtoLiteMessageBase != null) {
                arrayList.add(ProtoLiteMessageBase);
            }
        }
        return arrayList;
    }
}
