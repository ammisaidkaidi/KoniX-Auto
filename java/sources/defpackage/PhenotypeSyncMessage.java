package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeSyncMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PhenotypeSyncMessage i;
    private static volatile ProtoParser j;
    public int a;
    public String b = "";
    public ByteString c = dcl.b;
    public String d = "";
    public ProtobufList e = dfa.b;
    public ProtobufList f = dfa.b;
    public boolean g;
    public long h;

    static {
        PhenotypeSyncMessage cemVar = new PhenotypeSyncMessage();
        i = cemVar;
        GeneratedMessageLite.D(PhenotypeSyncMessage.class, cemVar);
    }

    private PhenotypeSyncMessage() {
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
                return C(i, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001ဈ\u0002\u0002ဈ\u0000\u0003ည\u0001\u0004\u001b\u0005\u001a\bဇ\u0003\tဂ\u0004", new Object[]{"a", "d", "b", "c", "e", PhenotypeSyncSubMessage.class, "f", "g", "h"});
            case 3:
                return new PhenotypeSyncMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavInstructionTypeEnum);
            case 5:
                return i;
            case 6:
                ProtoParser dexVar = j;
                if (dexVar == null) {
                    synchronized (PhenotypeSyncMessage.class) {
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
