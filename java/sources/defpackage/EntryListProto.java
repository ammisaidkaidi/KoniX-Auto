package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EntryListProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final EntryListProto d;
    private static volatile ProtoParser f;
    public int a;
    public RepeatedEntryProto b;
    private byte e = 2;
    public ProtobufList c = dfa.b;

    static {
        EntryListProto cxuVar = new EntryListProto();
        d = cxuVar;
        GeneratedMessageLite.D(EntryListProto.class, cxuVar);
    }

    private EntryListProto() {
    }

    public final void b() {
        ProtobufList ddrVar = this.c;
        if (ddrVar.c()) {
            return;
        }
        this.c = GeneratedMessageLite.z(ddrVar);
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0002\u0001ᔉ\u0000\u0002Л", new Object[]{"a", "b", "c", RepeatedEntryProto.class});
            case 3:
                return new EntryListProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (EntryListProto.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMsgIntStringInt);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
