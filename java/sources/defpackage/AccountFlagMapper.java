package defpackage;

import java.util.Collections;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountFlagMapper implements GuavaFunction {
    public final /* synthetic */ String a;
    private final /* synthetic */ int b;

    public /* synthetic */ cfp(String str, int i) {
        this.b = i;
        this.a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.GuavaFunction
    public final Object a(Object obj) {
        switch (this.b) {
            case 0:
                String str = this.a;
                PhenotypeConcurrentMap cejVar = cfr.a;
                FlagValueProto_cfb cfbVar = cfb.d;
                str.getClass();
                ProtoFieldMap demVar = ((PhenotypeSnapshotProto) obj).a;
                if (demVar.containsKey(str)) {
                    cfbVar = (FlagValueProto_cfb) demVar.get(str);
                }
                return cfbVar.c;
            case 1:
                String str2 = this.a;
                PhenotypeConcurrentMap cejVar2 = cfr.a;
                FlagValueProto_cfb cfbVar2 = cfb.d;
                ProtoFieldMap demVar2 = ((PhenotypeSnapshotProto) obj).a;
                if (demVar2.containsKey(str2)) {
                    cfbVar2 = (FlagValueProto_cfb) demVar2.get(str2);
                }
                return cfbVar2.b;
            case 2:
                String str3 = this.a;
                PhenotypeConcurrentMap cejVar3 = cfr.a;
                ProtoMsgHoldingMessageAndBool n = PhenotypeSnapshotProto.b.n();
                for (Map.Entry entry : Collections.unmodifiableMap(((PhenotypeSnapshotProto) obj).a).entrySet()) {
                    FlagValueProto_cfb cfbVar3 = (FlagValueProto_cfb) entry.getValue();
                    ProtoMsgHoldingMessageAndBool n2 = FlagValueProto_cfb.d.n();
                    if (!cfbVar3.c.equals(str3)) {
                        String str4 = cfbVar3.c;
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        FlagValueProto_cfb cfbVar4 = (FlagValueProto_cfb) n2.b;
                        str4.getClass();
                        cfbVar4.a |= 1;
                        cfbVar4.c = str4;
                    }
                    for (String str5 : cfbVar3.b) {
                        if (!str5.equals(str3)) {
                            n2.q(str5);
                        }
                    }
                    n.r((String) entry.getKey(), (FlagValueProto_cfb) n2.h());
                }
                return (PhenotypeSnapshotProto) n.h();
            default:
                String str6 = this.a;
                PhenotypeSnapshotProto cffVar = (PhenotypeSnapshotProto) obj;
                PhenotypeConcurrentMap cejVar4 = cfr.a;
                ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) cffVar.E(5);
                ddfVar.n(cffVar);
                if (ddfVar.c) {
                    ddfVar.k();
                    ddfVar.c = false;
                }
                PhenotypeSnapshotProto cffVar2 = (PhenotypeSnapshotProto) ddfVar.b;
                PhenotypeSnapshotProto cffVar3 = cff.b;
                cffVar2.b().remove(str6);
                return (PhenotypeSnapshotProto) ddfVar.h();
        }
    }
}
