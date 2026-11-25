package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class PhenotypeFlagSupplier implements FlagValueParser {
    private final /* synthetic */ int j;
    public static final /* synthetic */ PhenotypeFlagSupplier i = new PhenotypeFlagSupplier(8);
    public static final /* synthetic */ PhenotypeFlagSupplier h = new PhenotypeFlagSupplier(7);
    public static final /* synthetic */ PhenotypeFlagSupplier g = new PhenotypeFlagSupplier(6);
    public static final /* synthetic */ PhenotypeFlagSupplier f = new PhenotypeFlagSupplier(5);
    public static final /* synthetic */ PhenotypeFlagSupplier e = new PhenotypeFlagSupplier(4);
    public static final /* synthetic */ PhenotypeFlagSupplier d = new PhenotypeFlagSupplier(3);
    public static final /* synthetic */ PhenotypeFlagSupplier c = new PhenotypeFlagSupplier(2);
    public static final /* synthetic */ PhenotypeFlagSupplier b = new PhenotypeFlagSupplier(1);
    public static final /* synthetic */ PhenotypeFlagSupplier a = new PhenotypeFlagSupplier(0);

    private /* synthetic */ bpu(int i2) {
        this.j = i2;
    }

    @Override // defpackage.FlagValueParser
    public final Object a(byte[] bArr) {
        switch (this.j) {
            case 0:
                return (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, bArr);
            case 1:
                return (ProtoMsgRepeatedFieldOnly) GeneratedMessageLite.p(dgv.b, bArr);
            case 2:
                return (ProtoMsgSingleRepeatedField) GeneratedMessageLite.p(dgp.b, bArr);
            case 3:
                return (ProtoMsgSingleRepeatedField) GeneratedMessageLite.p(dgp.b, bArr);
            case 4:
                return (ProtoMsgIntWithDbqDbr) GeneratedMessageLite.p(dbs.d, bArr);
            case 5:
                return (ProtoMsgSingleRepeatedField) GeneratedMessageLite.p(dgp.b, bArr);
            case 6:
                return (ProtoMsgSingleRepeatedField) GeneratedMessageLite.p(dgp.b, bArr);
            case 7:
                return (ProtoMsgSingleListField) GeneratedMessageLite.p(dgo.b, bArr);
            default:
                return (ProtoMsgSingleRepeatedField) GeneratedMessageLite.p(dgp.b, bArr);
        }
    }
}
