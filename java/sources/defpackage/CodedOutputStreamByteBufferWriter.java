package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CodedOutputStreamByteBufferWriter extends CodedOutputStream {
    private final byte[] a;
    private final int b;
    private int c;

    public CodedOutputStreamByteBufferWriter(byte[] bArr, int i) {
        if (bArr == null) {
            throw new NullPointerException("buffer");
        }
        int length = bArr.length;
        if (((length - i) | i) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(NavInstructionTypeEnum)));
        }
        this.a = bArr;
        this.c = 0;
        this.b = i;
    }

    @Override // defpackage.CodedOutputStream
    public final void A(int i, int i2) {
        C(GeneratedEnumUtil.c(i, i2));
    }

    @Override // defpackage.CodedOutputStream
    public final void B(int i, int i2) {
        A(i, 0);
        C(i2);
    }

    @Override // defpackage.CodedOutputStream
    public final void D(int i, long j) {
        A(i, 0);
        E(ProtoMessageTwoIntsAndFlagValue);
    }

    @Override // defpackage.CodedOutputStream
    public final void F(byte[] bArr, int i) {
        C(NavInstructionTypeEnum);
        c(bArr, 0, i);
    }

    @Override // defpackage.CodedOutputStream, defpackage.ByteOutputSink
    public final void a(byte[] bArr, int i, int i2) {
        c(bArr, i, i2);
    }

    @Override // defpackage.CodedOutputStream
    public final int b() {
        return this.b - this.c;
    }

    @Override // defpackage.CodedOutputStream
    public final void l(int i, boolean z) {
        A(i, 0);
        j(IcuMessageFormat ? (byte) 1 : (byte) 0);
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
        A(i, 5);
        p(i2);
    }

    @Override // defpackage.CodedOutputStream
    public final void p(int i) {
        try {
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
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStreamOutOfSpace(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.c), Integer.valueOf(this.b), 1), e);
        }
    }

    @Override // defpackage.CodedOutputStream
    public final void q(int i, long j) {
        A(i, 1);
        r(ProtoMessageTwoIntsAndFlagValue);
    }

    @Override // defpackage.CodedOutputStream
    public final void r(long j) {
        try {
            byte[] bArr = this.a;
            int i = this.c;
            int i2 = i + 1;
            this.c = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i2 + 1;
            this.c = i3;
            bArr[i2] = (byte) (((int) (ProtoMessageTwoIntsAndFlagValue >> 8)) & 255);
            int i4 = i3 + 1;
            this.c = i4;
            bArr[i3] = (byte) (((int) (ProtoMessageTwoIntsAndFlagValue >> 16)) & 255);
            int i5 = i4 + 1;
            this.c = i5;
            bArr[i4] = (byte) (((int) (ProtoMessageTwoIntsAndFlagValue >> 24)) & 255);
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
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStreamOutOfSpace(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.c), Integer.valueOf(this.b), 1), e);
        }
    }

    @Override // defpackage.CodedOutputStream
    public final void s(int i, int i2) {
        A(i, 0);
        t(i2);
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
        int i = this.c;
        try {
            int ad = ad(str.length() * 3);
            int ad2 = ad(str.length());
            if (ad2 != ad) {
                C(Utf8EncoderUtil.b(str));
                this.c = Utf8EncoderUtil.a(str, this.a, this.c, b());
                return;
            }
            int i2 = i + ad2;
            this.c = i2;
            int a = Utf8EncoderUtil.a(str, this.a, i2, b());
            this.c = i;
            C((SingleStringProtoMessage - i) - ad2);
            this.c = a;
        } catch (UnpairedSurrogateException e) {
            this.c = i;
            al(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new CodedOutputStreamOutOfSpace(e2);
        }
    }

    @Override // defpackage.CodedOutputStream
    public final void C(int i) {
        boolean z = dcu.e;
        while ((NavInstructionTypeEnum & (-128)) != 0) {
            try {
                byte[] bArr = this.a;
                int i2 = this.c;
                this.c = i2 + 1;
                bArr[i2] = (byte) ((NavInstructionTypeEnum & 127) | 128);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new CodedOutputStreamOutOfSpace(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.c), Integer.valueOf(this.b), 1), e);
            }
        }
        byte[] bArr2 = this.a;
        int i3 = this.c;
        this.c = i3 + 1;
        bArr2[i3] = (byte) i;
    }

    public final void c(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.a, this.c, i2);
            this.c += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStreamOutOfSpace(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.c), Integer.valueOf(this.b), Integer.valueOf(i2)), e);
        }
    }

    @Override // defpackage.CodedOutputStream
    public final void j(byte b) {
        try {
            byte[] bArr = this.a;
            int i = this.c;
            this.c = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStreamOutOfSpace(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.c), Integer.valueOf(this.b), 1), e);
        }
    }

    @Override // defpackage.CodedOutputStream
    public final void E(long j) {
        if (dcu.e && b() >= 10) {
            while ((ProtoMessageTwoIntsAndFlagValue & (-128)) != 0) {
                byte[] bArr = this.a;
                int i = this.c;
                this.c = i + 1;
                ProtoUnsafeUtil.n(bArr, i, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr2 = this.a;
            int i2 = this.c;
            this.c = i2 + 1;
            ProtoUnsafeUtil.n(bArr2, i2, (byte) j);
            return;
        }
        while ((ProtoMessageTwoIntsAndFlagValue & (-128)) != 0) {
            try {
                byte[] bArr3 = this.a;
                int i3 = this.c;
                this.c = i3 + 1;
                bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                j >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new CodedOutputStreamOutOfSpace(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.c), Integer.valueOf(this.b), 1), e);
            }
        }
        byte[] bArr4 = this.a;
        int i4 = this.c;
        this.c = i4 + 1;
        bArr4[i4] = (byte) j;
    }
}
