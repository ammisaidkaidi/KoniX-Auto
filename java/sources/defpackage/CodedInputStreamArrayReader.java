package defpackage;

import androidx.preference.Preference;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CodedInputStreamArrayReader extends CodedInputStreamReaderBase {
    private final byte[] e;
    private int f;
    private int g;
    private int h;
    private final int i;
    private int j;
    private int k = Preference.DEFAULT_ORDER;

    public CodedInputStreamArrayReader(byte[] bArr, int i, int i2) {
        this.e = bArr;
        this.f = i2 + i;
        this.h = i;
        this.i = i;
    }

    private final void K() {
        int i = this.f + this.g;
        this.f = i;
        int i2 = i - this.i;
        int i3 = this.k;
        if (i2 <= i3) {
            this.g = 0;
            return;
        }
        int i4 = i2 - i3;
        this.g = i4;
        this.f = i - i4;
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final void A(int i) {
        this.k = i;
        K();
    }

    public final void B(int i) {
        if (NavInstructionTypeEnum >= 0) {
            int i2 = this.f;
            int i3 = this.h;
            if (NavInstructionTypeEnum <= i2 - i3) {
                this.h = i3 + i;
                return;
            }
        }
        if (NavInstructionTypeEnum >= 0) {
            throw InvalidProtocolBufferException.i();
        }
        throw InvalidProtocolBufferException.f();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final boolean C() {
        return this.h == this.f;
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final boolean D() {
        return r() != 0;
    }

    public final byte a() {
        int i = this.h;
        if (NavInstructionTypeEnum == this.f) {
            throw InvalidProtocolBufferException.i();
        }
        byte[] bArr = this.e;
        this.h = i + 1;
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
        return this.h - this.i;
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final int e(int i) {
        if (NavInstructionTypeEnum < 0) {
            throw InvalidProtocolBufferException.f();
        }
        int d = i + d();
        if (ProtoMsgIntStringInt < 0) {
            throw InvalidProtocolBufferException.g();
        }
        int i2 = this.k;
        if (ProtoMsgIntStringInt > i2) {
            throw InvalidProtocolBufferException.i();
        }
        this.k = d;
        K();
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
        int i = this.h;
        if (this.f - NavInstructionTypeEnum < 4) {
            throw InvalidProtocolBufferException.i();
        }
        byte[] bArr = this.e;
        this.h = i + 4;
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
        int i = this.h;
        if (this.f - NavInstructionTypeEnum < 8) {
            throw InvalidProtocolBufferException.i();
        }
        byte[] bArr = this.e;
        this.h = i + 8;
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
        if (ProtoMessageTwoIntsAndFlagValue > 0) {
            int i = this.f;
            int i2 = this.h;
            if (ProtoMessageTwoIntsAndFlagValue <= i - i2) {
                ByteString u = ByteString.u(this.e, i2, j);
                this.h += j;
                return u;
            }
        }
        if (ProtoMessageTwoIntsAndFlagValue == 0) {
            return dcl.b;
        }
        if (ProtoMessageTwoIntsAndFlagValue > 0) {
            int i3 = this.f;
            int i4 = this.h;
            if (ProtoMessageTwoIntsAndFlagValue <= i3 - i4) {
                int i5 = j + i4;
                this.h = i5;
                return ByteString.x(Arrays.copyOfRange(this.e, i4, i5));
            }
        }
        if (ProtoMessageTwoIntsAndFlagValue <= 0) {
            throw InvalidProtocolBufferException.f();
        }
        throw InvalidProtocolBufferException.i();
    }

    @Override // defpackage.CodedInputStreamReaderBase
    public final String x() {
        int j = j();
        if (ProtoMessageTwoIntsAndFlagValue > 0) {
            int i = this.f;
            int i2 = this.h;
            if (ProtoMessageTwoIntsAndFlagValue <= i - i2) {
                String str = new String(this.e, i2, j, dds.a);
                this.h += j;
                return str;
            }
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
            int i = this.f;
            int i2 = this.h;
            if (ProtoMessageTwoIntsAndFlagValue <= i - i2) {
                String f = Utf8EncoderUtil.f(this.e, i2, j);
                this.h += j;
                return f;
            }
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
                if (this.f - this.ProtoMessageSingleEnumFieldH < 10) {
                    while (i2 < 10) {
                        if (a() < 0) {
                            i2++;
                        }
                    }
                    throw InvalidProtocolBufferException.e();
                }
                while (i2 < 10) {
                    byte[] bArr = this.e;
                    int i3 = this.h;
                    this.h = i3 + 1;
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
        int i2 = this.h;
        int i3 = this.f;
        if (i3 != i2) {
            byte[] bArr = this.e;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (ProtoLiteMessageBase >= 0) {
                this.h = i4;
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
                this.h = i5;
                return i;
            }
        }
        return (int) s();
    }

    public final long r() {
        long j;
        int i = this.h;
        int i2 = this.f;
        if (i2 != i) {
            byte[] bArr = this.e;
            int i3 = i + 1;
            byte b = bArr[i];
            if (ProtoLiteMessageBase >= 0) {
                this.h = i3;
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
                this.h = i4;
                return j;
            }
        }
        return s();
    }
}
