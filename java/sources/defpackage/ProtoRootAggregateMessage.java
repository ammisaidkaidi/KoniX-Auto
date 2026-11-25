package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoRootAggregateMessage extends GeneratedMessageLite implements MessageOrBuilder {
    private static volatile ProtoParser B;
    public static final ProtoRootAggregateMessage y;
    public int a;
    public ProtoMessageWithDowDphDov b;
    public long c;
    public ProtoMessageLongAndTwoInts e;
    public ProtoMessageThreeStringsAndLong f;
    public ProtoMessageSingleEnumField g;
    public ProtoMessageDphStringsAndCxu h;
    public ProtoMessageThreeInts i;
    public ProtoMessageNineLongFields j;
    public ProtoMessageWrappingDoj k;
    public ProtoMessageManyIntsAndDpt l;
    public ProtoEmptyMessageBeta m;
    public ProtoMessageWithDpfAndEnum n;
    public ProtoMessageIntAndString p;
    public ProtoMessageIntAndTwoLongs u;
    public PrimesMetricConfigProto v;
    public ProtoMessageTwoEnumsAndBytes w;
    public ProtoMessageWithDohSubMessage x;
    private ProtoEmptyMessageGamma z;
    private byte A = 2;
    public String d = "";
    public String o = "";

    static {
        ProtoRootAggregateMessage dpzVar = new ProtoRootAggregateMessage();
        y = dpzVar;
        GeneratedMessageLite.D(ProtoRootAggregateMessage.class, dpzVar);
    }

    private ProtoRootAggregateMessage() {
        ProtoDoubleArrayList dfaVar = dfa.b;
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.A);
            case 1:
            default:
                this.A = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(y, "\u0001\u0014\u0000\u0001\u0001 \u0014\u0000\u0000\b\u0001ᐉ\u0000\u0002စ\u0001\u0003ဈ\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006ᐉ\u0005\u0007ᐉ\u0006\bᐉ\u0007\tဉ\b\nᐉ\t\fဉ\u000b\u000eᐉ\r\u0010ᐉ\u000e\u0011ဈ\u000f\u0015ဉ\u0013\u0017ဉ\u0015\u001dᐉ\u0018\u001eဉ\u0019\u001fဉ\u001a ဉ\u001b", new Object[]{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "u", "z", "v", "w", "x"});
            case 3:
                return new ProtoRootAggregateMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(MessageFormatFormatterState);
            case 5:
                return y;
            case 6:
                ProtoParser dexVar = B;
                if (dexVar == null) {
                    synchronized (ProtoRootAggregateMessage.class) {
                        dexVar = B;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(MessageFormatFormatterState);
                            B = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
