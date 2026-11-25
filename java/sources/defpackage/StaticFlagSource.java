package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StaticFlagSource implements FlagSourceBaseInterface {
    private final FlagSourceRegistry a;
    private final ProtoMsgIntAndObject b;
    private final PrimesConfig c;

    public StaticFlagSource(FlagSourceRegistry bspVar, ProtoMsgIntAndObject dglVar, PrimesConfig bsaVar) {
        this.a = bspVar;
        this.b = dglVar;
        this.c = bsaVar;
    }

    private final boolean b(ProtoMsgTwoRepeatedFields dgjVar) {
        int i = 0;
        while (true) {
            if (NavInstructionTypeEnum >= dgjVar.a.size()) {
                Iterator it = dgjVar.b.iterator();
                while (it.hasNext()) {
                    if (!c((ProtoMsgRepeatedPairFields) it.next())) {
                        return false;
                    }
                }
                return true;
            }
            int b = ProtoEnumValueUtil.b(dgjVar.a.e(NavInstructionTypeEnum));
            if (!this.a.a(ProtoLiteMessageBase != 0 ? b : 1, this.c).a()) {
                return false;
            }
            i++;
        }
    }

    private final boolean c(ProtoMsgRepeatedPairFields dgkVar) {
        for (int i = 0; NavInstructionTypeEnum < dgkVar.a.size(); i++) {
            int b = ProtoEnumValueUtil.b(dgkVar.a.e(NavInstructionTypeEnum));
            if (ProtoLiteMessageBase == 0) {
                b = 1;
            }
            if (this.a.a(b, this.c).a()) {
                return true;
            }
        }
        Iterator it = dgkVar.b.iterator();
        while (it.hasNext()) {
            if (b((ProtoMsgTwoRepeatedFields) it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.FlagSourceBaseInterface
    public final boolean a() {
        Boolean valueOf;
        int b;
        ProtoMsgIntAndObject dglVar = this.b;
        int i = dglVar.a;
        if (NavInstructionTypeEnum == 2) {
            valueOf = Boolean.valueOf(b((ProtoMsgTwoRepeatedFields) dglVar.b));
        } else if (NavInstructionTypeEnum == 3) {
            valueOf = Boolean.valueOf(c((ProtoMsgRepeatedPairFields) dglVar.b));
        } else {
            FlagSourceRegistry bspVar = this.a;
            int i2 = 1;
            if (NavInstructionTypeEnum == 1 && (ProtoLiteMessageBase = ProtoEnumValueUtil.b(((Integer) dglVar.b).intValue())) != 0) {
                i2 = b;
            }
            valueOf = Boolean.valueOf(bspVar.a(i2, this.c).a());
        }
        return valueOf.booleanValue();
    }
}
