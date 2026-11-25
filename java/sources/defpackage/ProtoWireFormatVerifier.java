package defpackage;

import android.util.LruCache;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoWireFormatVerifier implements CollectionBasisVerifierFactoryInterface {
    public static final int a = r.g(ProtoMsgEmpty.class.getName());
    public static final Map b;
    public static final PrimesVersionCodeProvider c;
    public final LruCache d = new StringLruCache();
    public final LruCache e = new LruCache(100);
    public final CollectionBasisVerifierImpl f;

    static {
        ImmutableMapBuilder cqiVar = new ImmutableMapBuilder();
        cqiVar.f(0, "WIRETYPE_VARINT");
        cqiVar.f(1, "WIRETYPE_FIXED64");
        cqiVar.f(2, "WIRETYPE_LENGTH_DELIMITED");
        cqiVar.f(3, "WIRETYPE_START_GROUP");
        cqiVar.f(4, "WIRETYPE_END_GROUP");
        cqiVar.f(5, "WIRETYPE_FIXED32");
        cqiVar.c();
        b = new HashMap();
        c = new PrimesVersionCodeProvider();
    }

    public ProtoWireFormatVerifier(CollectionBasisVerifierImpl bszVar) {
        this.f = bszVar;
    }

    public static boolean a(ProtoMessageBytesAndTwoInts dqdVar) {
        return (dqdVar == null || dqdVar.b.size() == 0) ? false : true;
    }

    public static boolean b(int i, int i2) {
        return i == a && i2 == 2;
    }

    public static boolean c(PrimesConfig bsaVar, ProtoMessageBytesAndTwoInts dqdVar, PrimesEventBuffer btgVar, GuavaOptional cocVar) {
        FlagSourceBaseInterface bswVar;
        int b2;
        int i = 0;
        while (true) {
            int i2 = 1;
            if (dqdVar == null || i >= dqdVar.b.size()) {
                break;
            }
            int a2 = ProtoGeneratedClassHelper.a(dqdVar.b.e(NavInstructionTypeEnum));
            if (a2 == 0) {
                a2 = 1;
            }
            ProtoMsgIntAndObject f = r.f(a2);
            if (f.a == 1) {
                FlagSourceRegistry bspVar = bsp.a;
                if (f.a == 1 && (b2 = ProtoEnumValueUtil.b(((Integer) f.b).intValue())) != 0) {
                    i2 = b2;
                }
                bswVar = bspVar.a(i2, bsaVar);
            } else {
                bswVar = new StaticFlagSource(bsp.a, f, bsaVar);
            }
            if (!bswVar.a()) {
                if (CollectionBasisVerifierFlagsFacade.c()) {
                    ProtoMsgHoldingMessageAndBool b3 = btgVar.b(3);
                    if (b3.c) {
                        b3.k();
                        b3.c = false;
                    }
                    ProtoMsgConfigWithDglChild dgnVar = (ProtoMsgConfigWithDglChild) b3.b;
                    ProtoMsgConfigWithDglChild dgnVar2 = dgn.m;
                    dgnVar.i = a2 - 1;
                    dgnVar.a |= 128;
                    ProtoMsgIntAndObject f2 = r.f(a2);
                    if (b3.c) {
                        b3.k();
                        b3.c = false;
                    }
                    ProtoMsgConfigWithDglChild dgnVar3 = (ProtoMsgConfigWithDglChild) b3.b;
                    f2.getClass();
                    dgnVar3.j = f2;
                    dgnVar3.a |= 512;
                    if (cocVar.d()) {
                        b3.A(((Integer) cocVar.a()).intValue());
                    }
                    btgVar.a(b3);
                }
                return false;
            }
            i++;
        }
        return true;
    }

    public static ProtoMessageBytesAndTwoInts d(ProtoMessageIntsDemAndBytes dqcVar) {
        return (ProtoMessageBytesAndTwoInts) Collections.unmodifiableMap(dqcVar.c).get(-2032180703);
    }

    public static ProtoMessageBytesAndTwoInts e(ProtoMessageDemPairAndEnums dqgVar) {
        return (ProtoMessageBytesAndTwoInts) Collections.unmodifiableMap(dqgVar.a).get(-2032180703);
    }
}
