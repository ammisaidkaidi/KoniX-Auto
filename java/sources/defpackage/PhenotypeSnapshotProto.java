package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeSnapshotProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PhenotypeSnapshotProto b;
    private static volatile ProtoParser c;
    public ProtoFieldMap a = dem.a;

    static {
        PhenotypeSnapshotProto cffVar = new PhenotypeSnapshotProto();
        b = cffVar;
        GeneratedMessageLite.D(PhenotypeSnapshotProto.class, cffVar);
    }

    private PhenotypeSnapshotProto() {
    }

    public final ProtoFieldMap b() {
        ProtoFieldMap demVar = this.a;
        if (!demVar.b) {
            this.a = demVar.a();
        }
        return this.a;
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
                return C(b, "\u0001\u0001\u0000\u0000\u0002\u0002\u0001\u0001\u0000\u0000\u00022", new Object[]{"a", cfe.a});
            case 3:
                return new PhenotypeSnapshotProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = c;
                if (dexVar == null) {
                    synchronized (PhenotypeSnapshotProto.class) {
                        dexVar = c;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoLiteMessageBase);
                            c = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
