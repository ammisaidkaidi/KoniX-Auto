package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgSelfNestedScalars extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgSelfNestedScalars j;
    private static volatile ProtoParser l;
    public long b;
    public boolean c;
    public double d;
    public ProtoMsgSingleByteString f;
    public int g;
    public boolean h;
    public int i;
    private int k;
    public String a = "";
    public String e = "";

    static {
        ProtoMsgSelfNestedScalars dbmVar = new ProtoMsgSelfNestedScalars();
        j = dbmVar;
        GeneratedMessageLite.D(ProtoMsgSelfNestedScalars.class, dbmVar);
    }

    private ProtoMsgSelfNestedScalars() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(j, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004က\u0003\u0005ဈ\u0004\u0006ဉ\u0005\u0007ဇ\u0007\bင\b\tဌ\u0006", new Object[]{"k", "a", "b", "c", "d", "e", "f", "h", "i", "g", ckg.r});
            case 3:
                return new ProtoMsgSelfNestedScalars();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageTwoIntsAndFlagValue);
            case 5:
                return j;
            case 6:
                ProtoParser dexVar = l;
                if (dexVar == null) {
                    synchronized (ProtoMsgSelfNestedScalars.class) {
                        dexVar = l;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageTwoIntsAndFlagValue);
                            l = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
