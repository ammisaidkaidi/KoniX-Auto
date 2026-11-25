package defpackage;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: PG */
/* loaded from: classes.dex */
public class LiteralByteString extends AbstractByteString {
    private static final long serialVersionUID = 1;
    protected final byte[] a;

    public LiteralByteString(byte[] bArr) {
        if (bArr == null) {
            throw null;
        }
        this.a = bArr;
    }

    @Override // defpackage.ByteString
    public byte a(int i) {
        return this.a[i];
    }

    @Override // defpackage.ByteString
    public byte b(int i) {
        return this.a[i];
    }

    protected int c() {
        return 0;
    }

    @Override // defpackage.ByteString
    public int d() {
        return this.a.length;
    }

    @Override // defpackage.ByteString
    protected void e(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.a, i, bArr, i2, i3);
    }

    @Override // defpackage.ByteString
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString) || d() != ((ByteString) obj).d()) {
            return false;
        }
        if (d() == 0) {
            return true;
        }
        if (!(obj instanceof LiteralByteString)) {
            return obj.equals(this);
        }
        LiteralByteString dckVar = (LiteralByteString) obj;
        int i = this.c;
        int i2 = dckVar.c;
        if (NavInstructionTypeEnum == 0 || i2 == 0 || i == i2) {
            return g(dckVar, 0, d());
        }
        return false;
    }

    @Override // defpackage.AbstractByteString
    public final boolean g(ByteString dclVar, int i, int i2) {
        if (i2 > dclVar.d()) {
            int d = d();
            StringBuilder sb = new StringBuilder(40);
            StaggeredGridLayoutParams.append("Length too large: ");
            StaggeredGridLayoutParams.append(i2);
            StaggeredGridLayoutParams.append(ProtoMsgIntStringInt);
            throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
        }
        int i3 = i + i2;
        if (i3 > dclVar.d()) {
            int d2 = dclVar.d();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(NavInstructionTypeEnum);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(d2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(dclVar instanceof LiteralByteString)) {
            return dclVar.k(i, i3).equals(k(0, i2));
        }
        LiteralByteString dckVar = (LiteralByteString) dclVar;
        byte[] bArr = this.a;
        byte[] bArr2 = dckVar.a;
        int c = c() + i2;
        int c2 = c();
        int c3 = dckVar.c() + i;
        while (c2 < c) {
            if (bArr[c2] != bArr2[c3]) {
                return false;
            }
            c2++;
            c3++;
        }
        return true;
    }

    @Override // defpackage.ByteString
    protected final int i(int i, int i2, int i3) {
        return ProtoCharsetUtil.d(i, this.a, c() + i2, i3);
    }

    @Override // defpackage.ByteString
    protected final int j(int i, int i2, int i3) {
        int c = c() + i2;
        byte[] bArr = this.a;
        ProtoTextFormatPrinterUtil evVar = dgb.a;
        return ev.A(i, bArr, c, i3 + c);
    }

    @Override // defpackage.ByteString
    public final ByteString k(int i, int i2) {
        int r = r(i, i2, d());
        return r == 0 ? dcl.b : new BoundedByteString(this.a, c() + i, r);
    }

    @Override // defpackage.ByteString
    public final CodedInputStreamReaderBase l() {
        return CodedInputStreamReaderBase.J(this.a, c(), d());
    }

    @Override // defpackage.ByteString
    protected final String m(Charset charset) {
        return new String(this.a, c(), d(), charset);
    }

    @Override // defpackage.ByteString
    public final ByteBuffer n() {
        return ByteBuffer.wrap(this.a, c(), d()).asReadOnlyBuffer();
    }

    @Override // defpackage.ByteString
    public final void o(ByteOutputSink dceVar) {
        dceVar.a(this.a, c(), d());
    }

    @Override // defpackage.ByteString
    public final void p(OutputStream outputStream) {
        outputStream.write(C());
    }

    @Override // defpackage.ByteString
    public final boolean q() {
        int c = c();
        return Utf8EncoderUtil.g(this.a, c, d() + c);
    }
}
