package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgCompositeWithDbnAndDbh extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgCompositeWithDbnAndDbh i;
    private static volatile ProtoParser j;
    public int a;
    public ProtoMsgIntStringLongDbi b;
    public ProtobufList c = dfa.b;
    public ByteString d = dcl.b;
    public String e = "";
    public ProtobufList f;
    public ByteString g;
    public ProtoMsgSingleInt h;

    static {
        ProtoMsgCompositeWithDbnAndDbh dbeVar = new ProtoMsgCompositeWithDbnAndDbh();
        i = dbeVar;
        GeneratedMessageLite.D(ProtoMsgCompositeWithDbnAndDbh.class, dbeVar);
    }

    private ProtoMsgCompositeWithDbnAndDbh() {
        LazyStringArrayListImpl ddlVar = ddl.b;
        this.f = dfa.b;
        this.g = dcl.b;
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(i, "\u0001\u0007\u0000\u0001\u0001\n\u0007\u0000\u0002\u0000\u0001ဉ\u0000\u0002\u001b\u0003ည\u0001\u0004ဈ\u0002\u0006\u001b\u0007ည\u0003\nဉ\u0005", new Object[]{"a", "b", "c", ProtoMsgWithDboAndList.class, "d", "e", "f", ProtoMsgDbpByteStringInt.class, "g", "h"});
            case 3:
                return new ProtoMsgCompositeWithDbnAndDbh();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavInstructionTypeEnum);
            case 5:
                return i;
            case 6:
                ProtoParser dexVar = j;
                if (dexVar == null) {
                    synchronized (ProtoMsgCompositeWithDbnAndDbh.class) {
                        dexVar = j;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(NavInstructionTypeEnum);
                            j = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
