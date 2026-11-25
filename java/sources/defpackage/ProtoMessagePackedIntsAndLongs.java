package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessagePackedIntsAndLongs extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessagePackedIntsAndLongs D;
    private static volatile ProtoParser E;
    public long A;
    public long B;
    public long C;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int u;
    public int v;
    public int w;
    public int x;
    public long y;
    public long z;

    static {
        ProtoMessagePackedIntsAndLongs douVar = new ProtoMessagePackedIntsAndLongs();
        D = douVar;
        GeneratedMessageLite.D(ProtoMessagePackedIntsAndLongs.class, douVar);
    }

    private ProtoMessagePackedIntsAndLongs() {
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
                return C(D, "\u0001\u0018\u0000\u0001\u0001\u0018\u0018\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0007\bင\b\tင\t\nင\n\u000bင\u000b\fင\f\rင\r\u000eင\u000e\u000fင\u000f\u0010င\u0010\u0011င\u0011\u0012င\u0012\u0013င\u0006\u0014ဂ\u0013\u0015ဂ\u0014\u0016ဂ\u0015\u0017ဂ\u0016\u0018ဂ\u0017", new Object[]{"a", "b", "c", "d", "e", "f", "g", "i", "j", "k", "l", "m", "n", "o", "p", "u", "v", "w", "x", "h", "y", "z", "A", "B", "C"});
            case 3:
                return new ProtoMessagePackedIntsAndLongs();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(D);
            case 5:
                return D;
            case 6:
                ProtoParser dexVar = E;
                if (dexVar == null) {
                    synchronized (ProtoMessagePackedIntsAndLongs.class) {
                        dexVar = E;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(D);
                            E = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
