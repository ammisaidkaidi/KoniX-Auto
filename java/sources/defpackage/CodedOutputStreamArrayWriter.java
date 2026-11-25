package defpackage;

import java.io.OutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CodedOutputStreamArrayWriter extends CodedOutputStream {
    final byte[] a;
    final int b;
    int c;
    int d;
    private final OutputStream g;

    public CodedOutputStreamArrayWriter(OutputStream outputStream, int i) {
        if (NavInstructionTypeEnum < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        byte[] bArr = new byte[Math.max(i, 20)];
        this.a = bArr;
        this.b = bArr.length;
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.g = outputStream;
    }

    private final void aC(int i) {
        if (this.b - this.PhenotypeFlagMessage < i) {
            i();
        }
    }

    @Override // defpackage.CodedOutputStream
    public final void A(int i, int i2) {
        C(GeneratedEnumUtil.c(i, i2));
    }

    @Override // defpackage.CodedOutputStream
    public final void B(int i, int i2) {
        aC(20);
        f(i, 0);
        g(i2);
    }

    @Override // defpackage.CodedOutputStream
    public final void C(int i) {
        aC(5);
        g(NavInstructionTypeEnum);
    }

    @Override // defpackage.CodedOutputStream
    public final void D(int i, long j) {
        aC(20);
        f(i, 0);
        h(ProtoMessageTwoIntsAndFlagValue);
    }

    @Override // defpackage.CodedOutputStream
    public final void E(long j) {
        aC(10);
        h(ProtoMessageTwoIntsAndFlagValue);
    }

    @Override // defpackage.CodedOutputStream
    public final void F(byte[] bArr, int i) {
        C(NavInstructionTypeEnum);
        k(bArr, 0, i);
    }

    @Override // defpackage.CodedOutputStream, defpackage.ByteOutputSink
    public final void a(byte[] bArr, int i, int i2) {
        k(bArr, i, i2);
    }

    @Override // defpackage.CodedOutputStream
    public final int b() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }

    final void c(byte b) {
        byte[] bArr = this.a;
        int i = this.c;
        this.c = i + 1;
        bArr[i] = b;
        this.d++;
    }

    final void d(int i) {
        byte[] bArr = this.a;
        int i2 = this.c;
        int i3 = i2 + 1;
        this.c = i3;
        bArr[i2] = (byte) (NavInstructionTypeEnum & 255);
        int i4 = i3 + 1;
        this.c = i4;
        bArr[i3] = (byte) ((NavInstructionTypeEnum >> 8) & 255);
        int i5 = i4 + 1;
        this.c = i5;
        bArr[i4] = (byte) ((NavInstructionTypeEnum >> 16) & 255);
        this.c = i5 + 1;
        bArr[i5] = (byte) ((NavInstructionTypeEnum >> 24) & 255);
        this.d += 4;
    }

    final void e(long j) {
        byte[] bArr = this.a;
        int i = this.c;
        int i2 = i + 1;
        this.c = i2;
        bArr[i] = (byte) (ProtoMessageTwoIntsAndFlagValue & 255);
        int i3 = i2 + 1;
        this.c = i3;
        bArr[i2] = (byte) ((ProtoMessageTwoIntsAndFlagValue >> 8) & 255);
        int i4 = i3 + 1;
        this.c = i4;
        bArr[i3] = (byte) ((ProtoMessageTwoIntsAndFlagValue >> 16) & 255);
        int i5 = i4 + 1;
        this.c = i5;
        bArr[i4] = (byte) (255 & (ProtoMessageTwoIntsAndFlagValue >> 24));
        int i6 = i5 + 1;
        this.c = i6;
        bArr[i5] = (byte) (((int) (ProtoMessageTwoIntsAndFlagValue >> 32)) & 255);
        int i7 = i6 + 1;
        this.c = i7;
        bArr[i6] = (byte) (((int) (ProtoMessageTwoIntsAndFlagValue >> 40)) & 255);
        int i8 = i7 + 1;
        this.c = i8;
        bArr[i7] = (byte) (((int) (ProtoMessageTwoIntsAndFlagValue >> 48)) & 255);
        this.c = i8 + 1;
        bArr[i8] = (byte) (((int) (ProtoMessageTwoIntsAndFlagValue >> 56)) & 255);
        this.d += 8;
    }

    final void f(int i, int i2) {
        g(GeneratedEnumUtil.c(i, i2));
    }

    public final void i() {
        this.g.write(this.a, 0, this.c);
        this.c = 0;
    }

    @Override // defpackage.CodedOutputStream
    public final void j(byte b) {
        if (this.c == this.b) {
            i();
        }
        c(ProtoLiteMessageBase);
    }

    public final void k(byte[] bArr, int i, int i2) {
        int i3 = this.b;
        int i4 = this.c;
        int i5 = i3 - i4;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, this.a, i4, i2);
            this.c += i2;
            this.d += i2;
            return;
        }
        System.arraycopy(bArr, i, this.a, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.c = this.b;
        this.d += i5;
        i();
        if (i7 <= this.b) {
            System.arraycopy(bArr, i6, this.a, 0, i7);
            this.c = i7;
        } else {
            this.g.write(bArr, i6, i7);
        }
        this.d += i7;
    }

    @Override // defpackage.CodedOutputStream
    public final void l(int i, boolean z) {
        aC(11);
        f(i, 0);
        c(IcuMessageFormat ? (byte) 1 : (byte) 0);
    }

    @Override // defpackage.CodedOutputStream
    public final void m(int i, ByteString dclVar) {
        A(i, 2);
        n(dclVar);
    }

    @Override // defpackage.CodedOutputStream
    public final void n(ByteString dclVar) {
        C(dclVar.d());
        dclVar.o(this);
    }

    @Override // defpackage.CodedOutputStream
    public final void o(int i, int i2) {
        aC(14);
        f(i, 5);
        d(i2);
    }

    @Override // defpackage.CodedOutputStream
    public final void p(int i) {
        aC(4);
        d(NavInstructionTypeEnum);
    }

    @Override // defpackage.CodedOutputStream
    public final void q(int i, long j) {
        aC(18);
        f(i, 1);
        e(ProtoMessageTwoIntsAndFlagValue);
    }

    @Override // defpackage.CodedOutputStream
    public final void r(long j) {
        aC(8);
        e(ProtoMessageTwoIntsAndFlagValue);
    }

    @Override // defpackage.CodedOutputStream
    public final void s(int i, int i2) {
        aC(20);
        f(i, 0);
        if (i2 >= 0) {
            g(i2);
        } else {
            h(i2);
        }
    }

    @Override // defpackage.CodedOutputStream
    public final void t(int i) {
        if (NavInstructionTypeEnum >= 0) {
            C(NavInstructionTypeEnum);
        } else {
            E(NavInstructionTypeEnum);
        }
    }

    @Override // defpackage.CodedOutputStream
    public final void u(int i, MessageLite derVar, MessageSchema dfgVar) {
        A(i, 2);
        ProtoMessageLiteBase dbvVar = (ProtoMessageLiteBase) derVar;
        int d = dbvVar.d();
        if (ProtoMsgIntStringInt == -1) {
            d = dfgVar.a(dbvVar);
            dbvVar.f(ProtoMsgIntStringInt);
        }
        C(ProtoMsgIntStringInt);
        dfgVar.l(derVar, this.f);
    }

    @Override // defpackage.CodedOutputStream
    public final void v(MessageLite derVar) {
        C(derVar.m());
        derVar.aG(this);
    }

    @Override // defpackage.CodedOutputStream
    public final void w(int i, MessageLite derVar) {
        A(1, 3);
        B(2, i);
        A(3, 2);
        v(derVar);
        A(1, 4);
    }

    @Override // defpackage.CodedOutputStream
    public final void x(int i, ByteString dclVar) {
        A(1, 3);
        B(2, i);
        m(3, dclVar);
        A(1, 4);
    }

    @Override // defpackage.CodedOutputStream
    public final void y(int i, String str) {
        A(i, 2);
        z(str);
    }

    @Override // defpackage.CodedOutputStream
    public final void z(String str) {
        int b;
        try {
            int length = str.length() * 3;
            int ad = ad(length);
            int i = ad + length;
            int i2 = this.b;
            if (NavInstructionTypeEnum > i2) {
                byte[] bArr = new byte[length];
                int a = Utf8EncoderUtil.a(str, bArr, 0, length);
                C(SingleStringProtoMessage);
                k(bArr, 0, a);
                return;
            }
            if (NavInstructionTypeEnum > i2 - this.c) {
                i();
            }
            int ad2 = ad(str.length());
            int i3 = this.c;
            try {
                if (ad2 == ad) {
                    int i4 = i3 + ad2;
                    this.c = i4;
                    int a2 = Utf8EncoderUtil.a(str, this.a, i4, this.b - i4);
                    this.c = i3;
                    b = (a2 - i3) - ad2;
                    g(ProtoLiteMessageBase);
                    this.c = a2;
                } else {
                    b = Utf8EncoderUtil.b(str);
                    g(ProtoLiteMessageBase);
                    this.c = Utf8EncoderUtil.a(str, this.a, this.c, b);
                }
                this.d += b;
            } catch (UnpairedSurrogateException e) {
                this.d -= this.c - i3;
                this.c = i3;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new CodedOutputStreamOutOfSpace(e2);
            }
        } catch (UnpairedSurrogateException e3) {
            al(str, e3);
        }
    }

    final void g(int i) {
        if (!dcu.e) {
            while ((NavInstructionTypeEnum & (-128)) != 0) {
                byte[] bArr = this.a;
                int i2 = this.c;
                this.c = i2 + 1;
                bArr[i2] = (byte) ((NavInstructionTypeEnum & 127) | 128);
                this.d++;
                i >>>= 7;
            }
            byte[] bArr2 = this.a;
            int i3 = this.c;
            this.c = i3 + 1;
            bArr2[i3] = (byte) i;
            this.d++;
            return;
        }
        long j = this.c;
        while ((NavInstructionTypeEnum & (-128)) != 0) {
            byte[] bArr3 = this.a;
            int i4 = this.c;
            this.c = i4 + 1;
            ProtoUnsafeUtil.n(bArr3, i4, (byte) ((NavInstructionTypeEnum & 127) | 128));
            i >>>= 7;
        }
        byte[] bArr4 = this.a;
        int i5 = this.c;
        this.c = i5 + 1;
        ProtoUnsafeUtil.n(bArr4, i5, (byte) i);
        this.d += (int) (this.c - j);
    }

    final void h(long j) {
        if (!dcu.e) {
            while ((ProtoMessageTwoIntsAndFlagValue & (-128)) != 0) {
                byte[] bArr = this.a;
                int i = this.c;
                this.c = i + 1;
                bArr[i] = (byte) ((((int) j) & 127) | 128);
                this.d++;
                j >>>= 7;
            }
            byte[] bArr2 = this.a;
            int i2 = this.c;
            this.c = i2 + 1;
            bArr2[i2] = (byte) j;
            this.d++;
            return;
        }
        long j2 = this.c;
        while ((ProtoMessageTwoIntsAndFlagValue & (-128)) != 0) {
            byte[] bArr3 = this.a;
            int i3 = this.c;
            this.c = i3 + 1;
            ProtoUnsafeUtil.n(bArr3, i3, (byte) ((((int) j) & 127) | 128));
            j >>>= 7;
        }
        byte[] bArr4 = this.a;
        int i4 = this.c;
        this.c = i4 + 1;
        ProtoUnsafeUtil.n(bArr4, i4, (byte) j);
        this.d += (int) (this.c - j2);
    }
}
