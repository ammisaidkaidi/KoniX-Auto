package defpackage;

import androidx.preference.Preference;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CodedInputStreamBufferedReader extends CodedInputStreamReaderBase {
    private final InputStream e;
    private final byte[] f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l = Preference.DEFAULT_ORDER;

    public CodedInputStreamBufferedReader(InputStream inputStream) {
        ProtoCharsetUtil.i(inputStream, "input");
        this.e = inputStream;
        this.f = new byte[4096];
        this.g = 0;
        this.i = 0;
        this.k = 0;
    }

    private static int K(InputStream inputStream, byte[] bArr, int i, int i2) {
        try {
            return inputStream.read(bArr, i, i2);
        } catch (InvalidProtocolBufferException e) {
            e.j();
            throw e;
        }
    }

    private final List L(int i) {
        ArrayList arrayList = new ArrayList();
        while (NavInstructionTypeEnum > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.e.read(bArr, i2, min - i2);
                if (read == -1) {
                    throw InvalidProtocolBufferException.i();
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
        if (O(NavInstructionTypeEnum)) {
            return;
        }
        if (NavInstructionTypeEnum <= (Preference.DEFAULT_ORDER - this.k) - this.i) {
            throw InvalidProtocolBufferException.i();
        }
        throw InvalidProtocolBufferException.h();
    }

    private final boolean O(int i) {
        int i2 = this.i;
        int i3 = this.g;
        if (i2 + NavInstructionTypeEnum <= i3) {
            StringBuilder sb = new StringBuilder(77);
            StaggeredGridLayoutParams.append("refillBuffer() called when ");
            StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
            StaggeredGridLayoutParams.append(" bytes were already available in buffer");
            throw new IllegalStateException(StaggeredGridLayoutParams.toString());
        }
        int i4 = this.k;
        if (NavInstructionTypeEnum > (Preference.DEFAULT_ORDER - i4) - i2 || i4 + i2 + i > this.l) {
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
        return O(NavInstructionTypeEnum);
    }

    private final byte[] P(int i) {
        if (NavInstructionTypeEnum == 0) {
            return dds.b;
        }
        if (NavInstructionTypeEnum < 0) {
            throw InvalidProtocolBufferException.f();
        }
        int i2 = this.k;
        int i3 = this.i;
        int i4 = i2 + i3 + i;
        if ((-2147483647) + i4 > 0) {
            throw InvalidProtocolBufferException.h();
        }
        int i5 = this.l;
        if (i4 > i5) {
            B((i5 - i2) - i3);
            throw InvalidProtocolBufferException.i();
        }
        int i6 = this.g - i3;
        int i7 = i - i6;
        if (i7 >= 4096) {
            try {
                if (i7 > this.e.available()) {
                    return null;
                }
            } catch (InvalidProtocolBufferException e) {
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
                throw InvalidProtocolBufferException.i();
            }
            this.k += K;
            i6 += K;
        }
        return bArr;
    }

    private final byte[] Q(int i) {
        byte[] P = P(NavInstructionTypeEnum);
        if (P != null) {
            return P;
        }
        int i2 = this.i;
        int i3 = this.g;
        int i4 = i3 - i2;
        this.k += i3;
        this.i = 0;
        this.g = 0;
        List<byte[]> L = L(NavInstructionTypeEnum - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f, i2, bArr, 0, i4);
        for (byte[] bArr2 : L) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final void A(int i) {
        this.l = i;
        M();
    }

    public final void B(int i) {
        int i2 = this.g;
        int i3 = this.i;
        int i4 = i2 - i3;
        if (NavInstructionTypeEnum <= i4 && i >= 0) {
            this.i = i3 + i;
            return;
        }
        if (NavInstructionTypeEnum < 0) {
            throw InvalidProtocolBufferException.f();
        }
        int i5 = this.k;
        int i6 = i5 + i3;
        int i7 = this.l;
        if (i6 + i > i7) {
            B((i7 - i5) - i3);
            throw InvalidProtocolBufferException.i();
        }
        this.k = i6;
        this.g = 0;
        this.i = 0;
        while (i4 < i) {
            try {
                long j = i - i4;
                try {
                    long skip = this.e.skip(ProtoMessageTwoIntsAndFlagValue);
                    if (skip < 0 || skip > j) {
                        String valueOf = String.valueOf(this.e.getClass());
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 92);
                        StaggeredGridLayoutParams.append(valueOf);
                        StaggeredGridLayoutParams.append("#skip returned invalid result: ");
                        StaggeredGridLayoutParams.append(skip);
                        StaggeredGridLayoutParams.append("\nThe InputStream implementation is buggy.");
                        throw new IllegalStateException(StaggeredGridLayoutParams.toString());
                    }
                    if (skip == 0) {
                        break;
                    } else {
                        i4 += (int) skip;
                    }
                } catch (InvalidProtocolBufferException e) {
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

    @Override // defpackage.CodedInputStreamReaderBase
    public final boolean C() {
        return this.i == this.g && !O(1);
    }

    @Override // defpackage.CodedInputStreamReaderBase
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

    @Override // defpackage.CodedInputStreamReaderBase
    public final double b() {
        return Double.longBitsToDouble(q());
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final float c() {
        return Float.intBitsToFloat(i());
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int d() {
        return this.k + this.i;
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int e(int i) {
        if (NavInstructionTypeEnum < 0) {
            throw InvalidProtocolBufferException.f();
        }
        int i2 = i + this.k + this.i;
        int i3 = this.l;
        if (i2 > i3) {
            throw InvalidProtocolBufferException.i();
        }
        this.l = i2;
        M();
        return i3;
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int f() {
        return j();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int g() {
        return i();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int h() {
        return j();
    }

    public final int i() {
        int i = this.i;
        if (this.g - NavInstructionTypeEnum < 4) {
            N(4);
            i = this.i;
        }
        byte[] bArr = this.f;
        this.i = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int k() {
        return i();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int l() {
        return F(j());
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int m() {
        if (C()) {
            this.j = 0;
            return 0;
        }
        int j = j();
        this.j = j;
        if (GeneratedEnumUtil.a(ProtoMessageTwoIntsAndFlagValue) != 0) {
            return this.j;
        }
        throw InvalidProtocolBufferException.c();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int n() {
        return j();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final long o() {
        return q();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final long p() {
        return r();
    }

    public final long q() {
        int i = this.i;
        if (this.g - NavInstructionTypeEnum < 8) {
            N(8);
            i = this.i;
        }
        byte[] bArr = this.f;
        this.i = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    final long s() {
        long j = 0;
        for (int i = 0; NavInstructionTypeEnum < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((a() & 128) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferException.e();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final long t() {
        return q();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final long u() {
        return G(r());
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final long v() {
        return r();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final ByteString w() {
        int j = j();
        int i = this.g;
        int i2 = this.i;
        if (ProtoMessageTwoIntsAndFlagValue <= i - i2 && j > 0) {
            ByteString u = ByteString.u(this.f, i2, j);
            this.i += j;
            return u;
        }
        if (ProtoMessageTwoIntsAndFlagValue == 0) {
            return dcl.b;
        }
        byte[] P = P(ProtoMessageTwoIntsAndFlagValue);
        if (P != null) {
            return ByteString.t(P);
        }
        int i3 = this.i;
        int i4 = this.g;
        int i5 = i4 - i3;
        this.k += i4;
        this.i = 0;
        this.g = 0;
        List<byte[]> L = L(ProtoMessageTwoIntsAndFlagValue - i5);
        byte[] bArr = new byte[j];
        System.arraycopy(this.f, i3, bArr, 0, i5);
        for (byte[] bArr2 : L) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i5, length);
            i5 += length;
        }
        return ByteString.x(bArr);
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final String x() {
        int j = j();
        if (ProtoMessageTwoIntsAndFlagValue > 0) {
            int i = this.g;
            int i2 = this.i;
            if (ProtoMessageTwoIntsAndFlagValue <= i - i2) {
                String str = new String(this.f, i2, j, dds.a);
                this.i += j;
                return str;
            }
        }
        if (ProtoMessageTwoIntsAndFlagValue == 0) {
            return "";
        }
        if (ProtoMessageTwoIntsAndFlagValue > this.g) {
            return new String(Q(ProtoMessageTwoIntsAndFlagValue), dds.a);
        }
        N(ProtoMessageTwoIntsAndFlagValue);
        String str2 = new String(this.f, this.i, j, dds.a);
        this.i += j;
        return str2;
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final String y() {
        byte[] Q;
        int j = j();
        int i = this.i;
        int i2 = this.g;
        if (ProtoMessageTwoIntsAndFlagValue <= i2 - i && j > 0) {
            Q = this.f;
            this.i = i + j;
        } else {
            if (ProtoMessageTwoIntsAndFlagValue == 0) {
                return "";
            }
            if (ProtoMessageTwoIntsAndFlagValue <= i2) {
                N(ProtoMessageTwoIntsAndFlagValue);
                Q = this.f;
                this.i = j;
                i = 0;
            } else {
                Q = Q(ProtoMessageTwoIntsAndFlagValue);
                i = 0;
            }
        }
        return Utf8EncoderUtil.f(Q, i, j);
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final void z(int i) {
        if (this.j != i) {
            throw InvalidProtocolBufferException.b();
        }
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final boolean E(int i) {
        int m;
        int i2 = 0;
        switch (GeneratedEnumUtil.b(NavInstructionTypeEnum)) {
            case 0:
                if (this.g - this.NavInstructionTypeEnum < 10) {
                    while (i2 < 10) {
                        if (a() < 0) {
                            i2++;
                        }
                    }
                    throw InvalidProtocolBufferException.e();
                }
                while (i2 < 10) {
                    byte[] bArr = this.f;
                    int i3 = this.i;
                    this.i = i3 + 1;
                    if (bArr[i3] < 0) {
                        i2++;
                    }
                }
                throw InvalidProtocolBufferException.e();
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
                throw InvalidProtocolBufferException.a();
        }
        do {
            m = m();
            if (ProtoCompositeMessageM != 0) {
            }
            z(GeneratedEnumUtil.c(GeneratedEnumUtil.a(NavInstructionTypeEnum), 4));
            return true;
        } while (E(ProtoCompositeMessageM));
        z(GeneratedEnumUtil.c(GeneratedEnumUtil.a(NavInstructionTypeEnum), 4));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0068, code lost:
    
        if (r2[r3] >= 0) goto L34;
     */
    @Override // defpackage.CodedInputStreamReaderBase
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
            if (ProtoLiteMessageBase >= 0) {
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
            if (ProtoLiteMessageBase >= 0) {
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
