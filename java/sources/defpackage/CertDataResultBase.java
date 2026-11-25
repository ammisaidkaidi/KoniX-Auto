package defpackage;

import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class CertDataResultBase extends CertDataBinderBase {
    private static final WeakReference a = new WeakReference(null);
    private WeakReference b;

    public CertDataResultBase(byte[] bArr) {
        super(bArr);
        this.b = a;
    }

    protected abstract byte[] b();

    @Override // defpackage.CertDataBinderBase
    public final byte[] v() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.b.get();
            if (bArr == null) {
                bArr = b();
                this.b = new WeakReference(bArr);
            }
        }
        return bArr;
    }
}
