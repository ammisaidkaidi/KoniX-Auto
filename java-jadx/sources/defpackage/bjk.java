package defpackage;

import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class bjk extends bnh {
    private static final WeakReference a = new WeakReference(null);
    private WeakReference b;

    public bjk(byte[] bArr) {
        super(bArr);
        this.b = a;
    }

    protected abstract byte[] b();

    @Override // defpackage.bnh
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
