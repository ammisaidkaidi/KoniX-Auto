package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConfigPackageProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ConfigPackageProto a;
    private static volatile ProtoParser h;
    private int b;
    private FlagValueProto_cxp c;
    private FlagValueProto_cxp d;
    private FlagValueProto_cxp e;
    private ConfigPackageIdProto f;
    private byte g = 2;

    static {
        ConfigPackageProto cxmVar = new ConfigPackageProto();
        a = cxmVar;
        GeneratedMessageLite.D(ConfigPackageProto.class, cxmVar);
    }

    private ConfigPackageProto() {
        ProtoDoubleArrayList dfaVar = dfa.b;
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.g);
            case 1:
            default:
                this.g = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(a, "\u0001\u0004\u0000\u0001\u0001\b\u0004\u0000\u0000\u0004\u0001ᐉ\u0000\u0003ᐉ\u0001\u0004ᐉ\u0004\bᐉ\u0003", new Object[]{"b", "c", "d", "f", "e"});
            case 3:
                return new ConfigPackageProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = h;
                if (dexVar == null) {
                    synchronized (ConfigPackageProto.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(SingleStringProtoMessage);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
