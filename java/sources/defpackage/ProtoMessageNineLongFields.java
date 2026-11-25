package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageNineLongFields extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageNineLongFields k;
    private static volatile ProtoParser l;
    public int a;
    public long b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public ProtobufList j = dfa.b;

    static {
        ProtoMessageNineLongFields dpsVar = new ProtoMessageNineLongFields();
        k = dpsVar;
        GeneratedMessageLite.D(ProtoMessageNineLongFields.class, dpsVar);
    }

    private ProtoMessageNineLongFields() {
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
                return C(k, "\u0001\t\u0000\u0001\u0001\n\t\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\n\u001b", new Object[]{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", ProtoMessageStringAndEnum.class});
            case 3:
                return new ProtoMessageNineLongFields();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoCompositeMessageK);
            case 5:
                return k;
            case 6:
                ProtoParser dexVar = l;
                if (dexVar == null) {
                    synchronized (ProtoMessageNineLongFields.class) {
                        dexVar = l;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoCompositeMessageK);
                            l = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
