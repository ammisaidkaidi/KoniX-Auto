package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.LruCache;
import com.google.android.embedded.projection.R;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bsc {
    private static final int c = r.g("DEFAULT");
    public final LruCache a;
    public dqj b;
    private final LruCache d;
    private final Context e;
    private final Integer f = Integer.valueOf(R.raw.logs_proto_wireless_performance_mobile_system_health_metric_collection_basis_library);

    public bsc(Context context, LruCache lruCache, LruCache lruCache2) {
        this.e = context;
        this.d = lruCache;
        this.a = lruCache2;
    }

    private static Map e(List list, cqh cqhVar) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() >= cqhVar.size()) {
                throw new bsb(String.format("CollectionBasisHolder index(%d) exceeds list size(%d)", num, Integer.valueOf(cqhVar.size())));
            }
            dqd dqdVar = (dqd) cqhVar.get(num.intValue());
            Integer valueOf = Integer.valueOf((dqdVar.a & 2) != 0 ? dqdVar.c : c);
            ddf ddfVar = (ddf) dqdVar.E(5);
            ddfVar.n(dqdVar);
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dqd dqdVar2 = (dqd) ddfVar.b;
            dqdVar2.a &= -3;
            dqdVar2.c = 0;
            hashMap.put(valueOf, (dqd) ddfVar.h());
        }
        return hashMap;
    }

    public final dqg a(int i) {
        LruCache lruCache = this.d;
        Integer valueOf = Integer.valueOf(i);
        dqg dqgVar = (dqg) lruCache.get(valueOf);
        if (dqgVar == null) {
            if (this.b == null) {
                this.b = c();
            }
            dqgVar = (dqg) Collections.unmodifiableMap(this.b.a).get(valueOf);
            if (dqgVar != null) {
                this.d.put(valueOf, dqgVar);
                return dqgVar;
            }
        }
        return dqgVar;
    }

    public final dqg b(int i) {
        dqg a = a(i);
        if (a != null) {
            return a;
        }
        throw new IllegalArgumentException();
    }

    public final dqj c() {
        dqc dqcVar;
        Context context = this.e;
        if (context == null) {
            throw new IOException("No context to load resource from");
        }
        try {
            InputStream openRawResource = context.getResources().openRawResource(this.f.intValue());
            try {
                dcp H = dcp.H(openRawResource);
                ddf n = dqj.f.n();
                n.m(H, dcz.a());
                dqj dqjVar = (dqj) n.h();
                ddr ddrVar = dqjVar.c;
                ddp ddpVar = dqjVar.d;
                if (ddrVar.size() != ddpVar.size()) {
                    throw new bsb(String.format("ProtoHashNamesList[%d] and MessagesList[%d] must have same size", Integer.valueOf(ddpVar.size()), Integer.valueOf(ddrVar.size())));
                }
                HashMap hashMap = new HashMap();
                cqh n2 = cqh.n(dqjVar.e);
                Iterator it = ddpVar.iterator();
                Iterator it2 = ddrVar.iterator();
                while (it.hasNext() && it2.hasNext()) {
                    Integer num = (Integer) it.next();
                    dqg dqgVar = (dqg) it2.next();
                    Map e = e(dqgVar.e, n2);
                    ddp ddpVar2 = dqgVar.f;
                    ddq ddqVar = dqgVar.g;
                    if (ddpVar2.size() != ddqVar.size()) {
                        throw new bsb(String.format("TagNumbersList[%d] and CollectionBasisFieldList[%d] must have same size", Integer.valueOf(ddqVar.size()), Integer.valueOf(ddpVar2.size())));
                    }
                    HashMap hashMap2 = new HashMap();
                    Iterator it3 = ddpVar2.iterator();
                    Iterator it4 = ddqVar.iterator();
                    while (it4.hasNext() && it3.hasNext()) {
                        Long l = (Long) it4.next();
                        Map e2 = e(cqh.q((Integer) it3.next()), n2);
                        ddf n3 = dqc.e.n();
                        n3.ah(e2);
                        hashMap2.put(l, (dqc) n3.h());
                    }
                    ddr ddrVar2 = dqgVar.c;
                    ddq ddqVar2 = dqgVar.d;
                    if (ddrVar2.size() != ddqVar2.size()) {
                        throw new bsb(String.format("TagNumbersList[%d] and CollectionBasisFieldList[%d] must have same size", Integer.valueOf(ddqVar2.size()), Integer.valueOf(ddrVar2.size())));
                    }
                    Iterator it5 = ddqVar2.iterator();
                    Iterator it6 = ddrVar2.iterator();
                    while (it5.hasNext() && it6.hasNext()) {
                        Long l2 = (Long) it5.next();
                        dqc dqcVar2 = (dqc) it6.next();
                        Map e3 = e(dqcVar2.d, n2);
                        if (hashMap2.containsKey(l2)) {
                            ddf ddfVar = (ddf) dqcVar2.E(5);
                            ddfVar.n(dqcVar2);
                            ddfVar.n((dqc) hashMap2.get(l2));
                            dqcVar = (dqc) ddfVar.h();
                        } else {
                            ddf ddfVar2 = (ddf) dqcVar2.E(5);
                            ddfVar2.n(dqcVar2);
                            ddfVar2.ah(e3);
                            if (ddfVar2.c) {
                                ddfVar2.k();
                                ddfVar2.c = false;
                            }
                            ((dqc) ddfVar2.b).d = dqc.u();
                            dqcVar = (dqc) ddfVar2.h();
                        }
                        hashMap2.put(l2, dqcVar);
                    }
                    ddf ddfVar3 = (ddf) dqgVar.E(5);
                    ddfVar3.n(dqgVar);
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    dqg dqgVar2 = (dqg) ddfVar3.b;
                    dem demVar = dqgVar2.a;
                    if (!demVar.b) {
                        dqgVar2.a = demVar.a();
                    }
                    dqgVar2.a.putAll(e);
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((dqg) ddfVar3.b).e = dqg.u();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    dqg dqgVar3 = (dqg) ddfVar3.b;
                    dem demVar2 = dqgVar3.b;
                    if (!demVar2.b) {
                        dqgVar3.b = demVar2.a();
                    }
                    dqgVar3.b.putAll(hashMap2);
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((dqg) ddfVar3.b).d = dqg.w();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((dqg) ddfVar3.b).c = dqg.y();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((dqg) ddfVar3.b).f = dqg.u();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((dqg) ddfVar3.b).g = dqg.w();
                    hashMap.put(num, (dqg) ddfVar3.h());
                }
                ddf n4 = dqj.f.n();
                if (n4.c) {
                    n4.k();
                    n4.c = false;
                }
                dqj dqjVar2 = (dqj) n4.b;
                dem demVar3 = dqjVar2.a;
                if (!demVar3.b) {
                    dqjVar2.a = demVar3.a();
                }
                dqjVar2.a.putAll(hashMap);
                Map unmodifiableMap = Collections.unmodifiableMap(dqjVar.b);
                if (n4.c) {
                    n4.k();
                    n4.c = false;
                }
                dqj dqjVar3 = (dqj) n4.b;
                dem demVar4 = dqjVar3.b;
                if (!demVar4.b) {
                    dqjVar3.b = demVar4.a();
                }
                dqjVar3.b.putAll(unmodifiableMap);
                dqj dqjVar4 = (dqj) n4.h();
                if (openRawResource != null) {
                    openRawResource.close();
                }
                return dqjVar4;
            } finally {
            }
        } catch (Resources.NotFoundException e4) {
            throw new IOException(e4);
        }
    }

    public final boolean d(int i) {
        return a(i) != null;
    }
}
