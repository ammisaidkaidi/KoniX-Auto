package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageStringAndLongCounters extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageStringAndLongCounters j;
    private static volatile ProtoParser k;
    public int a;
    public String b = "";
    public int c;
    public int d;
    public int e;
    public long f;
    public long g;
    public long h;
    public boolean i;

    static {
        ProtoMessageStringAndLongCounters dofVar = new ProtoMessageStringAndLongCounters();
        j = dofVar;
        GeneratedMessageLite.D(ProtoMessageStringAndLongCounters.class, dofVar);
    }

    private ProtoMessageStringAndLongCounters() {
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
                return C(j, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဌ\u0001\u0003င\u0002\u0004ဌ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဇ\u0007", new Object[]{"a", "b", "c", dgh.k, "d", "e", dgh.j, "f", "g", "h", "i"});
            case 3:
                return new ProtoMessageStringAndLongCounters();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageTwoIntsAndFlagValue);
            case 5:
                return j;
            case 6:
                ProtoParser dexVar = k;
                if (dexVar == null) {
                    synchronized (ProtoMessageStringAndLongCounters.class) {
                        dexVar = k;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageTwoIntsAndFlagValue);
                            k = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
