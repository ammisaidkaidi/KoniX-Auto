package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bpu implements cef {
    private final /* synthetic */ int j;
    public static final /* synthetic */ bpu i = new bpu(8);
    public static final /* synthetic */ bpu h = new bpu(7);
    public static final /* synthetic */ bpu g = new bpu(6);
    public static final /* synthetic */ bpu f = new bpu(5);
    public static final /* synthetic */ bpu e = new bpu(4);
    public static final /* synthetic */ bpu d = new bpu(3);
    public static final /* synthetic */ bpu c = new bpu(2);
    public static final /* synthetic */ bpu b = new bpu(1);
    public static final /* synthetic */ bpu a = new bpu(0);

    private /* synthetic */ bpu(int i2) {
        this.j = i2;
    }

    @Override // defpackage.cef
    public final Object a(byte[] bArr) {
        switch (this.j) {
            case 0:
                return (dbs) ddk.p(dbs.d, bArr);
            case 1:
                return (dgv) ddk.p(dgv.b, bArr);
            case 2:
                return (dgp) ddk.p(dgp.b, bArr);
            case 3:
                return (dgp) ddk.p(dgp.b, bArr);
            case 4:
                return (dbs) ddk.p(dbs.d, bArr);
            case 5:
                return (dgp) ddk.p(dgp.b, bArr);
            case 6:
                return (dgp) ddk.p(dgp.b, bArr);
            case 7:
                return (dgo) ddk.p(dgo.b, bArr);
            default:
                return (dgp) ddk.p(dgp.b, bArr);
        }
    }
}
