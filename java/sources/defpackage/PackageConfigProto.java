package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PackageConfigProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PackageConfigProto a;
    private static volatile ProtoParser h;
    private int b;
    private FlagConfigProto c;
    private int e;
    private EntryListProto f;
    private byte g = 2;
    private String d = "";

    static {
        PackageConfigProto cxrVar = new PackageConfigProto();
        a = cxrVar;
        GeneratedMessageLite.D(PackageConfigProto.class, cxrVar);
    }

    private PackageConfigProto() {
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
                return C(a, "\u0001\u0004\u0000\u0001\u0001\b\u0004\u0000\u0000\u0004\u0001ᔉ\u0000\u0002ᔈ\u0001\u0003ᔄ\u0002\bᐉ\n", new Object[]{"b", "c", "d", "e", "f"});
            case 3:
                return new PackageConfigProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = h;
                if (dexVar == null) {
                    synchronized (PackageConfigProto.class) {
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
