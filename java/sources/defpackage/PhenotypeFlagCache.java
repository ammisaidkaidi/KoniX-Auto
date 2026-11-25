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
public final class PhenotypeFlagCache {
    private static final int c = r.g("DEFAULT");
    public final LruCache a;
    public ProtoMessageDemPairBytesAndEnums b;
    private final LruCache d;
    private final Context e;
    private final Integer f = Integer.valueOf(R.raw.logs_proto_wireless_performance_mobile_system_health_metric_collection_basis_library);

    public PhenotypeFlagCache(Context context, LruCache lruCache, LruCache lruCache2) {
        this.e = context;
        this.d = lruCache;
        this.a = lruCache2;
    }

    private static Map e(List list, ImmutableList cqhVar) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() >= cqhVar.size()) {
                throw new PrimesIoException(String.format("CollectionBasisHolder index(%d) exceeds list size(%d)", num, Integer.valueOf(cqhVar.size())));
            }
            ProtoMessageBytesAndTwoInts dqdVar = (ProtoMessageBytesAndTwoInts) cqhVar.get(num.intValue());
            Integer valueOf = Integer.valueOf((dqdVar.a & 2) != 0 ? dqdVar.c : c);
            ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dqdVar.E(5);
            ddfVar.n(dqdVar);
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoMessageBytesAndTwoInts dqdVar2 = (ProtoMessageBytesAndTwoInts) ddfVar.b;
            dqdVar2.a &= -3;
            dqdVar2.c = 0;
            hashMap.put(valueOf, (ProtoMessageBytesAndTwoInts) ddfVar.h());
        }
        return hashMap;
    }

    public final ProtoMessageDemPairAndEnums a(int i) {
        LruCache lruCache = this.d;
        Integer valueOf = Integer.valueOf(NavInstructionTypeEnum);
        ProtoMessageDemPairAndEnums dqgVar = (ProtoMessageDemPairAndEnums) lruCache.get(valueOf);
        if (dqgVar == null) {
            if (this.b == null) {
                this.b = c();
            }
            dqgVar = (ProtoMessageDemPairAndEnums) Collections.unmodifiableMap(this.b.a).get(valueOf);
            if (dqgVar != null) {
                this.d.put(valueOf, dqgVar);
                return dqgVar;
            }
        }
        return dqgVar;
    }

    public final ProtoMessageDemPairAndEnums b(int i) {
        ProtoMessageDemPairAndEnums a = a(NavInstructionTypeEnum);
        if (SingleStringProtoMessage != null) {
            return a;
        }
        throw new IllegalArgumentException();
    }

    public final ProtoMessageDemPairBytesAndEnums c() {
        ProtoMessageIntsDemAndBytes dqcVar;
        Context context = this.e;
        if (context == null) {
            throw new IOException("No context to load resource from");
        }
        try {
            InputStream openRawResource = context.getResources().openRawResource(this.f.intValue());
            try {
                CodedInputStreamReaderBase H = CodedInputStreamReaderBase.H(openRawResource);
                ProtoMsgHoldingMessageAndBool n = ProtoMessageDemPairBytesAndEnums.f.n();
                n.m(H, ExtensionRegistryLite.a());
                ProtoMessageDemPairBytesAndEnums dqjVar = (ProtoMessageDemPairBytesAndEnums) n.h();
                ProtobufList ddrVar = dqjVar.c;
                LazyStringList ddpVar = dqjVar.d;
                if (ddrVar.size() != ddpVar.size()) {
                    throw new PrimesIoException(String.format("ProtoHashNamesList[%d] CarUiInsetsUpdater MessagesList[%d] must have same size", Integer.valueOf(ddpVar.size()), Integer.valueOf(ddrVar.size())));
                }
                HashMap hashMap = new HashMap();
                ImmutableList n2 = ImmutableList.n(dqjVar.e);
                Iterator it = ddpVar.iterator();
                Iterator it2 = ddrVar.iterator();
                while (it.hasNext() && it2.hasNext()) {
                    Integer num = (Integer) it.next();
                    ProtoMessageDemPairAndEnums dqgVar = (ProtoMessageDemPairAndEnums) it2.next();
                    Map e = e(dqgVar.e, n2);
                    LazyStringList ddpVar2 = dqgVar.f;
                    ByteStringList ddqVar = dqgVar.g;
                    if (ddpVar2.size() != ddqVar.size()) {
                        throw new PrimesIoException(String.format("TagNumbersList[%d] CarUiInsetsUpdater CollectionBasisFieldList[%d] must have same size", Integer.valueOf(ddqVar.size()), Integer.valueOf(ddpVar2.size())));
                    }
                    HashMap hashMap2 = new HashMap();
                    Iterator it3 = ddpVar2.iterator();
                    Iterator it4 = ddqVar.iterator();
                    while (it4.hasNext() && it3.hasNext()) {
                        Long l = (Long) it4.next();
                        Map e2 = e(ImmutableList.q((Integer) it3.next()), n2);
                        ProtoMsgHoldingMessageAndBool n3 = ProtoMessageIntsDemAndBytes.e.n();
                        n3.ah(e2);
                        hashMap2.put(l, (ProtoMessageIntsDemAndBytes) n3.h());
                    }
                    ProtobufList ddrVar2 = dqgVar.c;
                    ByteStringList ddqVar2 = dqgVar.d;
                    if (ddrVar2.size() != ddqVar2.size()) {
                        throw new PrimesIoException(String.format("TagNumbersList[%d] CarUiInsetsUpdater CollectionBasisFieldList[%d] must have same size", Integer.valueOf(ddqVar2.size()), Integer.valueOf(ddrVar2.size())));
                    }
                    Iterator it5 = ddqVar2.iterator();
                    Iterator it6 = ddrVar2.iterator();
                    while (it5.hasNext() && it6.hasNext()) {
                        Long l2 = (Long) it5.next();
                        ProtoMessageIntsDemAndBytes dqcVar2 = (ProtoMessageIntsDemAndBytes) it6.next();
                        Map e3 = e(dqcVar2.d, n2);
                        if (hashMap2.containsKey(l2)) {
                            ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dqcVar2.E(5);
                            ddfVar.n(dqcVar2);
                            ddfVar.n((ProtoMessageIntsDemAndBytes) hashMap2.get(l2));
                            dqcVar = (ProtoMessageIntsDemAndBytes) ddfVar.h();
                        } else {
                            ProtoMsgHoldingMessageAndBool ddfVar2 = (ProtoMsgHoldingMessageAndBool) dqcVar2.E(5);
                            ddfVar2.n(dqcVar2);
                            ddfVar2.ah(e3);
                            if (ddfVar2.c) {
                                ddfVar2.k();
                                ddfVar2.c = false;
                            }
                            ((ProtoMessageIntsDemAndBytes) ddfVar2.b).d = ProtoMessageIntsDemAndBytes.u();
                            dqcVar = (ProtoMessageIntsDemAndBytes) ddfVar2.h();
                        }
                        hashMap2.put(l2, dqcVar);
                    }
                    ProtoMsgHoldingMessageAndBool ddfVar3 = (ProtoMsgHoldingMessageAndBool) dqgVar.E(5);
                    ddfVar3.n(dqgVar);
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ProtoMessageDemPairAndEnums dqgVar2 = (ProtoMessageDemPairAndEnums) ddfVar3.b;
                    ProtoFieldMap demVar = dqgVar2.a;
                    if (!demVar.b) {
                        dqgVar2.a = demVar.a();
                    }
                    dqgVar2.a.putAll(ProtoFlagValueMessage);
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((ProtoMessageDemPairAndEnums) ddfVar3.b).e = ProtoMessageDemPairAndEnums.u();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ProtoMessageDemPairAndEnums dqgVar3 = (ProtoMessageDemPairAndEnums) ddfVar3.b;
                    ProtoFieldMap demVar2 = dqgVar3.b;
                    if (!demVar2.b) {
                        dqgVar3.b = demVar2.a();
                    }
                    dqgVar3.b.putAll(hashMap2);
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((ProtoMessageDemPairAndEnums) ddfVar3.b).d = ProtoMessageDemPairAndEnums.w();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((ProtoMessageDemPairAndEnums) ddfVar3.b).c = ProtoMessageDemPairAndEnums.y();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((ProtoMessageDemPairAndEnums) ddfVar3.b).f = ProtoMessageDemPairAndEnums.u();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ((ProtoMessageDemPairAndEnums) ddfVar3.b).g = ProtoMessageDemPairAndEnums.w();
                    hashMap.put(num, (ProtoMessageDemPairAndEnums) ddfVar3.h());
                }
                ProtoMsgHoldingMessageAndBool n4 = ProtoMessageDemPairBytesAndEnums.f.n();
                if (n4.c) {
                    n4.k();
                    n4.c = false;
                }
                ProtoMessageDemPairBytesAndEnums dqjVar2 = (ProtoMessageDemPairBytesAndEnums) n4.b;
                ProtoFieldMap demVar3 = dqjVar2.a;
                if (!demVar3.b) {
                    dqjVar2.a = demVar3.a();
                }
                dqjVar2.a.putAll(hashMap);
                Map unmodifiableMap = Collections.unmodifiableMap(dqjVar.b);
                if (n4.c) {
                    n4.k();
                    n4.c = false;
                }
                ProtoMessageDemPairBytesAndEnums dqjVar3 = (ProtoMessageDemPairBytesAndEnums) n4.b;
                ProtoFieldMap demVar4 = dqjVar3.b;
                if (!demVar4.b) {
                    dqjVar3.b = demVar4.a();
                }
                dqjVar3.b.putAll(unmodifiableMap);
                ProtoMessageDemPairBytesAndEnums dqjVar4 = (ProtoMessageDemPairBytesAndEnums) n4.h();
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
        return a(NavInstructionTypeEnum) != null;
    }
}
