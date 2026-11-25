package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CertDataSingleton {
    private static CertDataSingleton b = null;
    private static final CertDataParcel c = new CertDataParcel(0, false, false, 0, 0);
    public CertDataParcel a;

    private CertDataSingleton() {
    }

    public static synchronized CertDataSingleton a() {
        CertDataSingleton bnpVar;
        synchronized (CertDataSingleton.class) {
            if (ProtoLiteMessageBase == null) {
                b = new CertDataSingleton();
            }
            bnpVar = b;
        }
        return bnpVar;
    }

    public final synchronized void b(CertDataParcel bnqVar) {
        if (bnqVar == null) {
            this.a = c;
            return;
        }
        CertDataParcel bnqVar2 = this.a;
        if (bnqVar2 == null || bnqVar2.SingleStringProtoMessage < bnqVar.a) {
            this.a = bnqVar;
        }
    }
}
