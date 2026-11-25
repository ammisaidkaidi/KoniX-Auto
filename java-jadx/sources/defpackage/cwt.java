package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cwt extends cwu implements Serializable {
    private static final long serialVersionUID = 0;
    final byte[] a;

    public cwt(byte[] bArr) {
        bArr.getClass();
        this.a = bArr;
    }

    @Override // defpackage.cwu
    public final int a() {
        int length = this.a.length;
        ex.t(length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", length);
        byte[] bArr = this.a;
        return ((bArr[3] & 255) << 24) | ((bArr[1] & 255) << 8) | (bArr[0] & 255) | ((bArr[2] & 255) << 16);
    }

    @Override // defpackage.cwu
    public final int b() {
        return this.a.length * 8;
    }

    @Override // defpackage.cwu
    public final boolean c(cwu cwuVar) {
        if (this.a.length != cwuVar.d().length) {
            return false;
        }
        int i = 0;
        boolean z = true;
        while (true) {
            byte[] bArr = this.a;
            if (i >= bArr.length) {
                return z;
            }
            z &= bArr[i] == cwuVar.d()[i];
            i++;
        }
    }

    @Override // defpackage.cwu
    public final byte[] d() {
        return this.a;
    }
}
