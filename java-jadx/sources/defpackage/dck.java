package defpackage;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: PG */
/* loaded from: classes.dex */
public class dck extends dcj {
    private static final long serialVersionUID = 1;
    protected final byte[] a;

    public dck(byte[] bArr) {
        if (bArr == null) {
            throw null;
        }
        this.a = bArr;
    }

    @Override // defpackage.dcl
    public byte a(int i) {
        return this.a[i];
    }

    @Override // defpackage.dcl
    public byte b(int i) {
        return this.a[i];
    }

    protected int c() {
        return 0;
    }

    @Override // defpackage.dcl
    public int d() {
        return this.a.length;
    }

    @Override // defpackage.dcl
    protected void e(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.a, i, bArr, i2, i3);
    }

    @Override // defpackage.dcl
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dcl) || d() != ((dcl) obj).d()) {
            return false;
        }
        if (d() == 0) {
            return true;
        }
        if (!(obj instanceof dck)) {
            return obj.equals(this);
        }
        dck dckVar = (dck) obj;
        int i = this.c;
        int i2 = dckVar.c;
        if (i == 0 || i2 == 0 || i == i2) {
            return g(dckVar, 0, d());
        }
        return false;
    }

    @Override // defpackage.dcj
    public final boolean g(dcl dclVar, int i, int i2) {
        if (i2 > dclVar.d()) {
            int d = d();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(d);
            throw new IllegalArgumentException(sb.toString());
        }
        int i3 = i + i2;
        if (i3 > dclVar.d()) {
            int d2 = dclVar.d();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(d2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(dclVar instanceof dck)) {
            return dclVar.k(i, i3).equals(k(0, i2));
        }
        dck dckVar = (dck) dclVar;
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

    @Override // defpackage.dcl
    protected final int i(int i, int i2, int i3) {
        return dds.d(i, this.a, c() + i2, i3);
    }

    @Override // defpackage.dcl
    protected final int j(int i, int i2, int i3) {
        int c = c() + i2;
        byte[] bArr = this.a;
        ev evVar = dgb.a;
        return ev.A(i, bArr, c, i3 + c);
    }

    @Override // defpackage.dcl
    public final dcl k(int i, int i2) {
        int r = r(i, i2, d());
        return r == 0 ? dcl.b : new dch(this.a, c() + i, r);
    }

    @Override // defpackage.dcl
    public final dcp l() {
        return dcp.J(this.a, c(), d());
    }

    @Override // defpackage.dcl
    protected final String m(Charset charset) {
        return new String(this.a, c(), d(), charset);
    }

    @Override // defpackage.dcl
    public final ByteBuffer n() {
        return ByteBuffer.wrap(this.a, c(), d()).asReadOnlyBuffer();
    }

    @Override // defpackage.dcl
    public final void o(dce dceVar) {
        dceVar.a(this.a, c(), d());
    }

    @Override // defpackage.dcl
    public final void p(OutputStream outputStream) {
        outputStream.write(C());
    }

    @Override // defpackage.dcl
    public final boolean q() {
        int c = c();
        return dgb.g(this.a, c, d() + c);
    }
}
