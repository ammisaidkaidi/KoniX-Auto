package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConfigPackageIdProto extends ProtoMsgWithAndroidBuildData implements MessageOrBuilder {
    public static final ConfigPackageIdProto a;
    private static volatile ProtoParser f;
    private int b;
    private ExperimentTokensProto c;
    private byte e = 2;

    static {
        ConfigPackageIdProto cxnVar = new ConfigPackageIdProto();
        a = cxnVar;
        GeneratedMessageLite.D(ConfigPackageIdProto.class, cxnVar);
    }

    private ConfigPackageIdProto() {
        ProtoDoubleArrayList dfaVar = dfa.b;
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.e);
            case 1:
            default:
                this.e = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(a, "\u0001\u0001\u0000\u0001\u0010\u0010\u0001\u0000\u0000\u0001\u0010ᐉ\u0000", new Object[]{"b", "c"});
            case 3:
                return new ConfigPackageIdProto();
            case 4:
                return new ProtoMsgSubclassOfDdf(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (ConfigPackageIdProto.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(SingleStringProtoMessage);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
