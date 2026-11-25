package defpackage;

import androidx.preference.Preference;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CodedInputStreamStreamReader extends CodedInputStreamReaderBase {
    private final Iterable e;
    private final Iterator f;
    private ByteBuffer g;
    private int h;
    private int i;
    private int k;
    private long m;
    private long n;
    private long o;
    private int j = Preference.DEFAULT_ORDER;
    private int l = 0;

    public CodedInputStreamStreamReader(Iterable iterable, int i) {
        this.h = i;
        this.e = iterable;
        this.f = iterable.iterator();
        if (NavInstructionTypeEnum != 0) {
            O();
            return;
        }
        this.g = dds.c;
        this.m = 0L;
        this.n = 0L;
        this.o = 0L;
    }

    private final int K() {
        return (int) (((this.h - this.l) - this.m) + this.n);
    }

    private final long L() {
        return this.o - this.m;
    }

    private final void M() {
        if (!this.f.hasNext()) {
            throw InvalidProtocolBufferException.i();
        }
        O();
    }

    private final void N() {
        int i = this.h + this.i;
        this.h = i;
        int i2 = this.j;
        if (NavInstructionTypeEnum <= i2) {
            this.i = 0;
            return;
        }
        int i3 = i - i2;
        this.i = i3;
        this.h = i - i3;
    }

    private final void O() {
        ByteBuffer byteBuffer = (ByteBuffer) this.f.next();
        this.g = byteBuffer;
        this.l += (int) (this.m - this.n);
        long position = byteBuffer.position();
        this.m = position;
        this.n = position;
        this.o = this.g.limit();
        long e = ProtoUnsafeUtil.e(this.g);
        this.m += e;
        this.n += e;
        this.o += e;
    }

    private final void P(byte[] bArr, int i) {
        if (NavInstructionTypeEnum > K()) {
            if (NavInstructionTypeEnum > 0) {
                throw InvalidProtocolBufferException.i();
            }
            return;
        }
        int i2 = i;
        while (i2 > 0) {
            if (L() == 0) {
                M();
            }
            int min = Math.min(i2, (int) L());
            long j = min;
            ProtoUnsafeUtil.k(this.m, bArr, i - i2, j);
            i2 -= min;
            this.m += j;
        }
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final void A(int i) {
        this.j = i;
        N();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final boolean C() {
        return (((long) this.l) + this.m) - this.n == ((long) this.h);
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final boolean D() {
        return r() != 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // defpackage.CodedInputStreamReaderBase
    public final boolean E(int i) {
        int m;
        switch (GeneratedEnumUtil.b(NavInstructionTypeEnum)) {
            case 0:
                for (int i2 = 0; i2 < 10; i2++) {
                    if (a() >= 0) {
                        return true;
                    }
                }
                throw InvalidProtocolBufferException.e();
            case 1:
                B(8);
                return true;
            case 2:
                B(j());
                return true;
            case 3:
                do {
                    m = m();
                    if (ProtoCompositeMessageM != 0) {
                    }
                    z(GeneratedEnumUtil.c(GeneratedEnumUtil.a(NavInstructionTypeEnum), 4));
                    return true;
                } while (E(ProtoCompositeMessageM));
                z(GeneratedEnumUtil.c(GeneratedEnumUtil.a(NavInstructionTypeEnum), 4));
                return true;
            case 4:
                return false;
            case 5:
                B(4);
                return true;
            default:
                throw InvalidProtocolBufferException.a();
        }
    }

    public final byte a() {
        if (L() == 0) {
            M();
        }
        long j = this.m;
        this.m = 1 + j;
        return ProtoUnsafeUtil.a(ProtoMessageTwoIntsAndFlagValue);
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
        return (int) ((this.l + this.m) - this.n);
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int e(int i) {
        if (NavInstructionTypeEnum < 0) {
            throw InvalidProtocolBufferException.f();
        }
        int d = i + d();
        int i2 = this.j;
        if (ProtoMsgIntStringInt > i2) {
            throw InvalidProtocolBufferException.i();
        }
        this.j = d;
        N();
        return i2;
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
        if (L() < 4) {
            return (a() & 255) | ((a() & 255) << 8) | ((a() & 255) << 16) | ((a() & 255) << 24);
        }
        long j = this.m;
        this.m = 4 + j;
        return ((ProtoUnsafeUtil.a(ProtoMessageTwoIntsAndFlagValue + 3) & 255) << 24) | (ProtoUnsafeUtil.a(ProtoMessageTwoIntsAndFlagValue) & 255) | ((ProtoUnsafeUtil.a(1 + j) & 255) << 8) | ((ProtoUnsafeUtil.a(2 + j) & 255) << 16);
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
            this.k = 0;
            return 0;
        }
        int j = j();
        this.k = j;
        if (GeneratedEnumUtil.a(ProtoMessageTwoIntsAndFlagValue) != 0) {
            return this.k;
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
        if (L() < 8) {
            return (a() & 255) | ((a() & 255) << 8) | ((a() & 255) << 16) | ((a() & 255) << 24) | ((a() & 255) << 32) | ((a() & 255) << 40) | ((a() & 255) << 48) | ((a() & 255) << 56);
        }
        this.m = 8 + this.m;
        return ((ProtoUnsafeUtil.a(r0 + 7) & 255) << 56) | ((ProtoUnsafeUtil.a(6 + r0) & 255) << 48) | ((ProtoUnsafeUtil.a(4 + r0) & 255) << 32) | ((ProtoUnsafeUtil.a(2 + r0) & 255) << 16) | (ProtoUnsafeUtil.a(r0) & 255) | ((ProtoUnsafeUtil.a(1 + r0) & 255) << 8) | ((ProtoUnsafeUtil.a(3 + r0) & 255) << 24) | ((ProtoUnsafeUtil.a(5 + r0) & 255) << 40);
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
        if (ProtoMessageTwoIntsAndFlagValue > 0) {
            long j2 = j;
            long j3 = this.o;
            long j4 = this.m;
            if (j2 <= j3 - j4) {
                byte[] bArr = new byte[j];
                ProtoUnsafeUtil.k(j4, bArr, 0L, j2);
                this.m += j2;
                return ByteString.x(bArr);
            }
        }
        if (ProtoMessageTwoIntsAndFlagValue > 0 && ProtoMessageTwoIntsAndFlagValue <= K()) {
            byte[] bArr2 = new byte[j];
            P(bArr2, j);
            return ByteString.x(bArr2);
        }
        if (ProtoMessageTwoIntsAndFlagValue == 0) {
            return dcl.b;
        }
        if (ProtoMessageTwoIntsAndFlagValue < 0) {
            throw InvalidProtocolBufferException.f();
        }
        throw InvalidProtocolBufferException.i();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final String x() {
        int j = j();
        if (ProtoMessageTwoIntsAndFlagValue > 0) {
            long j2 = j;
            long j3 = this.o;
            long j4 = this.m;
            if (j2 <= j3 - j4) {
                byte[] bArr = new byte[j];
                ProtoUnsafeUtil.k(j4, bArr, 0L, j2);
                String str = new String(bArr, dds.a);
                this.m += j2;
                return str;
            }
        }
        if (ProtoMessageTwoIntsAndFlagValue > 0 && ProtoMessageTwoIntsAndFlagValue <= K()) {
            byte[] bArr2 = new byte[j];
            P(bArr2, j);
            return new String(bArr2, dds.a);
        }
        if (ProtoMessageTwoIntsAndFlagValue == 0) {
            return "";
        }
        if (ProtoMessageTwoIntsAndFlagValue < 0) {
            throw InvalidProtocolBufferException.f();
        }
        throw InvalidProtocolBufferException.i();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final String y() {
        int j = j();
        if (ProtoMessageTwoIntsAndFlagValue > 0) {
            long j2 = j;
            long j3 = this.o;
            long j4 = this.m;
            if (j2 <= j3 - j4) {
                int i = (int) (j4 - this.n);
                ByteBuffer byteBuffer = this.g;
                ProtoTextFormatPrinterUtil evVar = dgb.a;
                String z = byteBuffer.hasArray() ? ev.z(byteBuffer.array(), byteBuffer.arrayOffset() + i, j) : byteBuffer.isDirect() ? ev.y(byteBuffer, i, j) : ev.y(byteBuffer, i, j);
                this.m += j2;
                return z;
            }
        }
        if (ProtoMessageTwoIntsAndFlagValue >= 0 && ProtoMessageTwoIntsAndFlagValue <= K()) {
            byte[] bArr = new byte[j];
            P(bArr, j);
            return Utf8EncoderUtil.f(bArr, 0, j);
        }
        if (ProtoMessageTwoIntsAndFlagValue == 0) {
            return "";
        }
        if (ProtoMessageTwoIntsAndFlagValue <= 0) {
            throw InvalidProtocolBufferException.f();
        }
        throw InvalidProtocolBufferException.i();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final void z(int i) {
        if (this.k != i) {
            throw InvalidProtocolBufferException.b();
        }
    }

    public final void B(int i) {
        if (NavInstructionTypeEnum < 0 || i > ((this.h - this.l) - this.m) + this.n) {
            if (NavInstructionTypeEnum >= 0) {
                throw InvalidProtocolBufferException.i();
            }
            throw InvalidProtocolBufferException.f();
        }
        while (NavInstructionTypeEnum > 0) {
            if (L() == 0) {
                M();
            }
            int min = Math.min(i, (int) L());
            i -= min;
            this.m += min;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
    
        if (defpackage.ProtoUnsafeUtil.a(r4) >= 0) goto L34;
     */
    @Override // defpackage.CodedInputStreamReaderBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int j() {
        int i;
        long j = this.m;
        if (this.o != j) {
            long j2 = j + 1;
            byte a = ProtoUnsafeUtil.a(ProtoMessageTwoIntsAndFlagValue);
            if (SingleStringProtoMessage >= 0) {
                this.m++;
                return a;
            }
            if (this.o - this.m >= 10) {
                long j3 = j2 + 1;
                int a2 = a ^ (ProtoUnsafeUtil.a(j2) << 7);
                if (a2 < 0) {
                    i = a2 ^ (-128);
                } else {
                    long j4 = j3 + 1;
                    int a3 = a2 ^ (ProtoUnsafeUtil.a(j3) << 14);
                    if (a3 >= 0) {
                        i = a3 ^ 16256;
                        j3 = j4;
                    } else {
                        j3 = j4 + 1;
                        int a4 = a3 ^ (ProtoUnsafeUtil.a(j4) << 21);
                        if (a4 < 0) {
                            i = a4 ^ (-2080896);
                        } else {
                            long j5 = j3 + 1;
                            byte a5 = ProtoUnsafeUtil.a(j3);
                            i = (a4 ^ (a5 << 28)) ^ 266354560;
                            if (a5 < 0) {
                                j3 = j5 + 1;
                                if (ProtoUnsafeUtil.a(j5) < 0) {
                                    j5 = j3 + 1;
                                    if (ProtoUnsafeUtil.a(j3) < 0) {
                                        j3 = j5 + 1;
                                        if (ProtoUnsafeUtil.a(j5) < 0) {
                                            j5 = j3 + 1;
                                            if (ProtoUnsafeUtil.a(j3) < 0) {
                                                j3 = j5 + 1;
                                            }
                                        }
                                    }
                                }
                            }
                            j3 = j5;
                        }
                    }
                }
                this.m = j3;
                return i;
            }
        }
        return (int) s();
    }

    public final long r() {
        long a;
        long j = this.m;
        if (this.o != j) {
            long j2 = j + 1;
            byte a2 = ProtoUnsafeUtil.a(ProtoMessageTwoIntsAndFlagValue);
            if (a2 >= 0) {
                this.m++;
                return a2;
            }
            if (this.o - this.m >= 10) {
                long j3 = j2 + 1;
                int a3 = a2 ^ (ProtoUnsafeUtil.a(j2) << 7);
                if (a3 < 0) {
                    a = a3 ^ (-128);
                } else {
                    long j4 = j3 + 1;
                    int a4 = a3 ^ (ProtoUnsafeUtil.a(j3) << 14);
                    if (a4 >= 0) {
                        a = a4 ^ 16256;
                        j3 = j4;
                    } else {
                        j3 = j4 + 1;
                        int a5 = a4 ^ (ProtoUnsafeUtil.a(j4) << 21);
                        if (a5 < 0) {
                            a = a5 ^ (-2080896);
                        } else {
                            long j5 = j3 + 1;
                            long a6 = a5 ^ (ProtoUnsafeUtil.a(j3) << 28);
                            if (a6 >= 0) {
                                a = a6 ^ 266354560;
                                j3 = j5;
                            } else {
                                long j6 = j5 + 1;
                                long a7 = a6 ^ (ProtoUnsafeUtil.a(j5) << 35);
                                if (a7 < 0) {
                                    a = a7 ^ (-34093383808L);
                                    j3 = j6;
                                } else {
                                    long j7 = j6 + 1;
                                    long a8 = a7 ^ (ProtoUnsafeUtil.a(j6) << 42);
                                    if (a8 >= 0) {
                                        a = a8 ^ 4363953127296L;
                                        j3 = j7;
                                    } else {
                                        long j8 = j7 + 1;
                                        long a9 = a8 ^ (ProtoUnsafeUtil.a(j7) << 49);
                                        if (a9 < 0) {
                                            a = a9 ^ (-558586000294016L);
                                            j3 = j8;
                                        } else {
                                            long j9 = j8 + 1;
                                            a = (a9 ^ (ProtoUnsafeUtil.a(j8) << 56)) ^ 71499008037633920L;
                                            if (SingleStringProtoMessage < 0) {
                                                long j10 = 1 + j9;
                                                if (ProtoUnsafeUtil.a(j9) >= 0) {
                                                    j3 = j10;
                                                }
                                            } else {
                                                j3 = j9;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.m = j3;
                return a;
            }
        }
        return s();
    }
}
