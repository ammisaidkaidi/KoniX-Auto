package defpackage;

import androidx.preference.Preference;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dco extends dcp {
    private final InputStream e;
    private final byte[] f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l = Preference.DEFAULT_ORDER;

    public dco(InputStream inputStream) {
        dds.i(inputStream, "input");
        this.e = inputStream;
        this.f = new byte[4096];
        this.g = 0;
        this.i = 0;
        this.k = 0;
    }

    private static int K(InputStream inputStream, byte[] bArr, int i, int i2) {
        try {
            return inputStream.read(bArr, i, i2);
        } catch (ddu e) {
            e.j();
            throw e;
        }
    }

    private final List L(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.e.read(bArr, i2, min - i2);
                if (read == -1) {
                    throw ddu.i();
                }
                this.k += read;
                i2 += read;
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void M() {
        int i = this.g + this.h;
        this.g = i;
        int i2 = this.k + i;
        int i3 = this.l;
        if (i2 <= i3) {
            this.h = 0;
            return;
        }
        int i4 = i2 - i3;
        this.h = i4;
        this.g = i - i4;
    }

    private final void N(int i) {
        if (O(i)) {
            return;
        }
        if (i <= (Preference.DEFAULT_ORDER - this.k) - this.i) {
            throw ddu.i();
        }
        throw ddu.h();
    }

    private final boolean O(int i) {
        int i2 = this.i;
        int i3 = this.g;
        if (i2 + i <= i3) {
            StringBuilder sb = new StringBuilder(77);
            sb.append("refillBuffer() called when ");
            sb.append(i);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        int i4 = this.k;
        if (i > (Preference.DEFAULT_ORDER - i4) - i2 || i4 + i2 + i > this.l) {
            return false;
        }
        if (i2 > 0) {
            if (i3 > i2) {
                byte[] bArr = this.f;
                System.arraycopy(bArr, i2, bArr, 0, i3 - i2);
            }
            i4 = this.k + i2;
            this.k = i4;
            i3 = this.g - i2;
            this.g = i3;
            this.i = 0;
        }
        int K = K(this.e, this.f, i3, Math.min(4096 - i3, (Preference.DEFAULT_ORDER - i4) - i3));
        if (K == 0 || K < -1 || K > 4096) {
            String valueOf = String.valueOf(this.e.getClass());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 91);
            sb2.append(valueOf);
            sb2.append("#read(byte[]) returned invalid result: ");
            sb2.append(K);
            sb2.append("\nThe InputStream implementation is buggy.");
            throw new IllegalStateException(sb2.toString());
        }
        if (K <= 0) {
            return false;
        }
        this.g += K;
        M();
        if (this.g >= i) {
            return true;
        }
        return O(i);
    }

    private final byte[] P(int i) {
        if (i == 0) {
            return dds.b;
        }
        if (i < 0) {
            throw ddu.f();
        }
        int i2 = this.k;
        int i3 = this.i;
        int i4 = i2 + i3 + i;
        if ((-2147483647) + i4 > 0) {
            throw ddu.h();
        }
        int i5 = this.l;
        if (i4 > i5) {
            B((i5 - i2) - i3);
            throw ddu.i();
        }
        int i6 = this.g - i3;
        int i7 = i - i6;
        if (i7 >= 4096) {
            try {
                if (i7 > this.e.available()) {
                    return null;
                }
            } catch (ddu e) {
                e.j();
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f, this.i, bArr, 0, i6);
        this.k += this.g;
        this.i = 0;
        this.g = 0;
        while (i6 < i) {
            int K = K(this.e, bArr, i6, i - i6);
            if (K == -1) {
                throw ddu.i();
            }
            this.k += K;
            i6 += K;
        }
        return bArr;
    }

    private final byte[] Q(int i) {
        byte[] P = P(i);
        if (P != null) {
            return P;
        }
        int i2 = this.i;
        int i3 = this.g;
        int i4 = i3 - i2;
        this.k += i3;
        this.i = 0;
        this.g = 0;
        List<byte[]> L = L(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f, i2, bArr, 0, i4);
        for (byte[] bArr2 : L) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    @Override // defpackage.dcp
    public final void A(int i) {
        this.l = i;
        M();
    }

    public final void B(int i) {
        int i2 = this.g;
        int i3 = this.i;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.i = i3 + i;
            return;
        }
        if (i < 0) {
            throw ddu.f();
        }
        int i5 = this.k;
        int i6 = i5 + i3;
        int i7 = this.l;
        if (i6 + i > i7) {
            B((i7 - i5) - i3);
            throw ddu.i();
        }
        this.k = i6;
        this.g = 0;
        this.i = 0;
        while (i4 < i) {
            try {
                long j = i - i4;
                try {
                    long skip = this.e.skip(j);
                    if (skip < 0 || skip > j) {
                        String valueOf = String.valueOf(this.e.getClass());
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 92);
                        sb.append(valueOf);
                        sb.append("#skip returned invalid result: ");
                        sb.append(skip);
                        sb.append("\nThe InputStream implementation is buggy.");
                        throw new IllegalStateException(sb.toString());
                    }
                    if (skip == 0) {
                        break;
                    } else {
                        i4 += (int) skip;
                    }
                } catch (ddu e) {
                    e.j();
                    throw e;
                }
            } finally {
                this.k += i4;
                M();
            }
        }
        if (i4 >= i) {
            return;
        }
        int i8 = this.g;
        int i9 = i8 - this.i;
        this.i = i8;
        N(1);
        while (true) {
            int i10 = i - i9;
            int i11 = this.g;
            if (i10 <= i11) {
                this.i = i10;
                return;
            } else {
                i9 += i11;
                this.i = i11;
                N(1);
            }
        }
    }

    @Override // defpackage.dcp
    public final boolean C() {
        return this.i == this.g && !O(1);
    }

    @Override // defpackage.dcp
    public final boolean D() {
        return r() != 0;
    }

    public final byte a() {
        if (this.i == this.g) {
            N(1);
        }
        byte[] bArr = this.f;
        int i = this.i;
        this.i = i + 1;
        return bArr[i];
    }

    @Override // defpackage.dcp
    public final double b() {
        return Double.longBitsToDouble(q());
    }

    @Override // defpackage.dcp
    public final float c() {
        return Float.intBitsToFloat(i());
    }

    @Override // defpackage.dcp
    public final int d() {
        return this.k + this.i;
    }

    @Override // defpackage.dcp
    public final int e(int i) {
        if (i < 0) {
            throw ddu.f();
        }
        int i2 = i + this.k + this.i;
        int i3 = this.l;
        if (i2 > i3) {
            throw ddu.i();
        }
        this.l = i2;
        M();
        return i3;
    }

    @Override // defpackage.dcp
    public final int f() {
        return j();
    }

    @Override // defpackage.dcp
    public final int g() {
        return i();
    }

    @Override // defpackage.dcp
    public final int h() {
        return j();
    }

    public final int i() {
        int i = this.i;
        if (this.g - i < 4) {
            N(4);
            i = this.i;
        }
        byte[] bArr = this.f;
        this.i = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    @Override // defpackage.dcp
    public final int k() {
        return i();
    }

    @Override // defpackage.dcp
    public final int l() {
        return F(j());
    }

    @Override // defpackage.dcp
    public final int m() {
        if (C()) {
            this.j = 0;
            return 0;
        }
        int j = j();
        this.j = j;
        if (dge.a(j) != 0) {
            return this.j;
        }
        throw ddu.c();
    }

    @Override // defpackage.dcp
    public final int n() {
        return j();
    }

    @Override // defpackage.dcp
    public final long o() {
        return q();
    }

    @Override // defpackage.dcp
    public final long p() {
        return r();
    }

    public final long q() {
        int i = this.i;
        if (this.g - i < 8) {
            N(8);
            i = this.i;
        }
        byte[] bArr = this.f;
        this.i = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    final long s() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((a() & 128) == 0) {
                return j;
            }
        }
        throw ddu.e();
    }

    @Override // defpackage.dcp
    public final long t() {
        return q();
    }

    @Override // defpackage.dcp
    public final long u() {
        return G(r());
    }

    @Override // defpackage.dcp
    public final long v() {
        return r();
    }

    @Override // defpackage.dcp
    public final dcl w() {
        int j = j();
        int i = this.g;
        int i2 = this.i;
        if (j <= i - i2 && j > 0) {
            dcl u = dcl.u(this.f, i2, j);
            this.i += j;
            return u;
        }
        if (j == 0) {
            return dcl.b;
        }
        byte[] P = P(j);
        if (P != null) {
            return dcl.t(P);
        }
        int i3 = this.i;
        int i4 = this.g;
        int i5 = i4 - i3;
        this.k += i4;
        this.i = 0;
        this.g = 0;
        List<byte[]> L = L(j - i5);
        byte[] bArr = new byte[j];
        System.arraycopy(this.f, i3, bArr, 0, i5);
        for (byte[] bArr2 : L) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i5, length);
            i5 += length;
        }
        return dcl.x(bArr);
    }

    @Override // defpackage.dcp
    public final String x() {
        int j = j();
        if (j > 0) {
            int i = this.g;
            int i2 = this.i;
            if (j <= i - i2) {
                String str = new String(this.f, i2, j, dds.a);
                this.i += j;
                return str;
            }
        }
        if (j == 0) {
            return "";
        }
        if (j > this.g) {
            return new String(Q(j), dds.a);
        }
        N(j);
        String str2 = new String(this.f, this.i, j, dds.a);
        this.i += j;
        return str2;
    }

    @Override // defpackage.dcp
    public final String y() {
        byte[] Q;
        int j = j();
        int i = this.i;
        int i2 = this.g;
        if (j <= i2 - i && j > 0) {
            Q = this.f;
            this.i = i + j;
        } else {
            if (j == 0) {
                return "";
            }
            if (j <= i2) {
                N(j);
                Q = this.f;
                this.i = j;
                i = 0;
            } else {
                Q = Q(j);
                i = 0;
            }
        }
        return dgb.f(Q, i, j);
    }

    @Override // defpackage.dcp
    public final void z(int i) {
        if (this.j != i) {
            throw ddu.b();
        }
    }

    @Override // defpackage.dcp
    public final boolean E(int i) {
        int m;
        int i2 = 0;
        switch (dge.b(i)) {
            case 0:
                if (this.g - this.i < 10) {
                    while (i2 < 10) {
                        if (a() < 0) {
                            i2++;
                        }
                    }
                    throw ddu.e();
                }
                while (i2 < 10) {
                    byte[] bArr = this.f;
                    int i3 = this.i;
                    this.i = i3 + 1;
                    if (bArr[i3] < 0) {
                        i2++;
                    }
                }
                throw ddu.e();
                return true;
            case 1:
                B(8);
                return true;
            case 2:
                B(j());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                B(4);
                return true;
            default:
                throw ddu.a();
        }
        do {
            m = m();
            if (m != 0) {
            }
            z(dge.c(dge.a(i), 4));
            return true;
        } while (E(m));
        z(dge.c(dge.a(i), 4));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0068, code lost:
    
        if (r2[r3] >= 0) goto L34;
     */
    @Override // defpackage.dcp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int j() {
        int i;
        int i2 = this.i;
        int i3 = this.g;
        if (i3 != i2) {
            byte[] bArr = this.f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.i = i4;
                return b;
            }
            if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            int i10 = i5 + 1;
                            byte b2 = bArr[i5];
                            i = (i9 ^ (b2 << 28)) ^ 266354560;
                            if (b2 < 0) {
                                i5 = i10 + 1;
                                if (bArr[i10] < 0) {
                                    i10 = i5 + 1;
                                    if (bArr[i5] < 0) {
                                        i5 = i10 + 1;
                                        if (bArr[i10] < 0) {
                                            i10 = i5 + 1;
                                            if (bArr[i5] < 0) {
                                                i5 = i10 + 1;
                                            }
                                        }
                                    }
                                }
                            }
                            i5 = i10;
                        }
                    }
                }
                this.i = i5;
                return i;
            }
        }
        return (int) s();
    }

    public final long r() {
        long j;
        int i = this.i;
        int i2 = this.g;
        if (i2 != i) {
            byte[] bArr = this.f;
            int i3 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.i = i3;
                return b;
            }
            if (i2 - i3 >= 9) {
                int i4 = i3 + 1;
                int i5 = b ^ (bArr[i3] << 7);
                if (i5 < 0) {
                    j = i5 ^ (-128);
                } else {
                    int i6 = i4 + 1;
                    int i7 = i5 ^ (bArr[i4] << 14);
                    if (i7 >= 0) {
                        i4 = i6;
                        j = i7 ^ 16256;
                    } else {
                        i4 = i6 + 1;
                        int i8 = i7 ^ (bArr[i6] << 21);
                        if (i8 < 0) {
                            j = i8 ^ (-2080896);
                        } else {
                            int i9 = i4 + 1;
                            long j2 = (bArr[i4] << 28) ^ i8;
                            if (j2 >= 0) {
                                i4 = i9;
                                j = j2 ^ 266354560;
                            } else {
                                int i10 = i9 + 1;
                                long j3 = j2 ^ (bArr[i9] << 35);
                                if (j3 < 0) {
                                    j = (-34093383808L) ^ j3;
                                    i4 = i10;
                                } else {
                                    int i11 = i10 + 1;
                                    long j4 = j3 ^ (bArr[i10] << 42);
                                    if (j4 >= 0) {
                                        i4 = i11;
                                        j = j4 ^ 4363953127296L;
                                    } else {
                                        int i12 = i11 + 1;
                                        long j5 = j4 ^ (bArr[i11] << 49);
                                        if (j5 < 0) {
                                            j = (-558586000294016L) ^ j5;
                                            i4 = i12;
                                        } else {
                                            int i13 = i12 + 1;
                                            long j6 = (j5 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                            if (j6 < 0) {
                                                int i14 = i13 + 1;
                                                if (bArr[i13] >= 0) {
                                                    j = j6;
                                                    i4 = i14;
                                                }
                                            } else {
                                                i4 = i13;
                                                j = j6;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.i = i4;
                return j;
            }
        }
        return s();
    }
}
