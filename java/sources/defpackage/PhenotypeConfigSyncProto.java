package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeConfigSyncProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PhenotypeConfigSyncProto h;
    private static volatile ProtoParser i;
    public int a;
    public long e;
    public long f;
    public String b = "";
    public ByteString c = dcl.b;
    public String d = "";
    public ProtobufList g = dfa.b;

    static {
        PhenotypeConfigSyncProto cgwVar = new PhenotypeConfigSyncProto();
        h = cgwVar;
        GeneratedMessageLite.D(PhenotypeConfigSyncProto.class, cgwVar);
    }

    private PhenotypeConfigSyncProto() {
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
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ည\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005\u001b\u0006ဂ\u0004", new Object[]{"a", "b", "c", "d", "e", "g", PhenotypeRegistrationSubMessage.class, "f"});
            case 3:
                return new PhenotypeConfigSyncProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageSingleEnumFieldH);
            case 5:
                return h;
            case 6:
                ProtoParser dexVar = i;
                if (dexVar == null) {
                    synchronized (PhenotypeConfigSyncProto.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageSingleEnumFieldH);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
