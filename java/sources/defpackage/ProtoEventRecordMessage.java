package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoEventRecordMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoEventRecordMessage k;
    private static volatile ProtoParser m;
    public int a;
    public int b;
    public long c;
    public ProtoEmptyMessageBeta f;
    public int g;
    public long h;
    public ProtoMegaConfigMessage i;
    public long j;
    private byte l = 2;
    public String d = "";
    public String e = "";

    static {
        ProtoEventRecordMessage dojVar = new ProtoEventRecordMessage();
        k = dojVar;
        GeneratedMessageLite.D(ProtoEventRecordMessage.class, dojVar);
    }

    private ProtoEventRecordMessage() {
        ProtoDoubleArrayList dfaVar = dfa.b;
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.l);
            case 1:
            default:
                this.l = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(k, "\u0001\t\u0000\u0001\u0001\u000b\t\u0000\u0000\u0001\u0001ဌ\u0000\u0002ဌ\u0005\u0003ဂ\u0006\u0006ဉ\u0007\u0007ဂ\b\bစ\u0001\tဈ\u0002\nဈ\u0003\u000bᐉ\u0004", new Object[]{"a", "b", PrimesLifecycleEventEnum.c(), "g", PrimesLifecycleEventEnum.c(), "h", "i", "j", "c", "d", "e", "f"});
            case 3:
                return new ProtoEventRecordMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoCompositeMessageK);
            case 5:
                return k;
            case 6:
                ProtoParser dexVar = m;
                if (dexVar == null) {
                    synchronized (ProtoEventRecordMessage.class) {
                        dexVar = m;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoCompositeMessageK);
                            m = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
