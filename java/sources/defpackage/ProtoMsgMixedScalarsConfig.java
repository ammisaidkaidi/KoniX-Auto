package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgMixedScalarsConfig extends ProtoMsgWithAndroidBuildData implements MessageOrBuilder {
    public static final ProtoMsgMixedScalarsConfig j;
    private static volatile ProtoParser l;
    public int a;
    public long b;
    public long c;
    public int e;
    public ByteString f;
    public long g;
    public boolean h;
    public String i;
    private byte k = 2;

    static {
        ProtoMsgMixedScalarsConfig dgtVar = new ProtoMsgMixedScalarsConfig();
        j = dgtVar;
        GeneratedMessageLite.D(ProtoMsgMixedScalarsConfig.class, dgtVar);
    }

    private ProtoMsgMixedScalarsConfig() {
        ProtoDoubleArrayList dfaVar = dfa.b;
        ByteString dclVar = dcl.b;
        this.f = dcl.b;
        this.g = 180000L;
        LazyStringArrayListImpl ddlVar = ddl.b;
        this.i = "";
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.k);
            case 1:
            default:
                this.k = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(j, "\u0001\u0007\u0000\u0001\u0001\u001c\u0007\u0000\u0000\u0000\u0001ဂ\u0000\u0006ည\n\u000bင\u0004\u000fတ\u0010\u0011ဂ\u0001\u0019ဇ\u0017\u001cဈ\u0018", new Object[]{"a", "b", "f", "e", "g", "c", "h", "i"});
            case 3:
                return new ProtoMsgMixedScalarsConfig();
            case 4:
                return new ProtoMsgSubclassOfDdf(ProtoMessageTwoIntsAndFlagValue);
            case 5:
                return j;
            case 6:
                ProtoParser dexVar = l;
                if (dexVar == null) {
                    synchronized (ProtoMsgMixedScalarsConfig.class) {
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
