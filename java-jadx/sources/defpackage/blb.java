package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import j$.util.DesugarCollections;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class blb {
    public final Map a;
    public final Map b;

    public blb(Map map) {
        this.b = map;
        this.a = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            zl zlVar = (zl) entry.getValue();
            List list = (List) this.a.get(zlVar);
            if (list == null) {
                list = new ArrayList();
                this.a.put(zlVar, list);
            }
            list.add((zh) entry.getKey());
        }
    }

    public static void b(List list, zq zqVar, zl zlVar, Object obj) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                zh zhVar = (zh) list.get(size);
                try {
                    switch (zhVar.a) {
                        case 0:
                            zhVar.b.invoke(obj, new Object[0]);
                        case 1:
                            zhVar.b.invoke(obj, zqVar);
                        default:
                            zhVar.b.invoke(obj, zqVar, zlVar);
                    }
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException("Failed to call observer method", e2.getCause());
                }
            }
        }
    }

    public final void a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.a) {
            hashMap = new HashMap(this.a);
        }
        synchronized (this.b) {
            hashMap2 = new HashMap(this.b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).l(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((brk) entry2.getKey()).b(new bjz(status));
            }
        }
    }

    public blb() {
        this.a = DesugarCollections.synchronizedMap(new WeakHashMap());
        this.b = DesugarCollections.synchronizedMap(new WeakHashMap());
    }
}
