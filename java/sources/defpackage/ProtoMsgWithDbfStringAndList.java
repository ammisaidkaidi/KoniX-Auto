package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgWithDbfStringAndList extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgWithDbfStringAndList h;
    private static volatile ProtoParser j;
    public int a;
    public ProtoMsgLongDgsAndString b;
    public int e;
    public int g;
    private byte i = 2;
    public ProtobufList c = dfa.b;
    public ByteString d = dcl.b;
    public String f = "";

    static {
        ProtoMsgWithDbfStringAndList dbjVar = new ProtoMsgWithDbfStringAndList();
        h = dbjVar;
        GeneratedMessageLite.D(ProtoMsgWithDbfStringAndList.class, dbjVar);
    }

    private ProtoMsgWithDbfStringAndList() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.i);
            case 1:
            default:
                this.i = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0001\u0001\u0001ᐉ\u0000\u0002\u001b\u0003ည\u0001\u0004ဌ\u0002\u0005င\u0004\u0007ဈ\u0003", new Object[]{"a", "b", "c", ProtoMsgDbpByteStringsAndLists.class, "d", "e", ckg.n, "g", "f"});
            case 3:
                return new ProtoMsgWithDbfStringAndList();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageSingleEnumFieldH);
            case 5:
                return h;
            case 6:
                ProtoParser dexVar = j;
                if (dexVar == null) {
                    synchronized (ProtoMsgWithDbfStringAndList.class) {
                        dexVar = j;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageSingleEnumFieldH);
                            j = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
