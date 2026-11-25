package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dch extends dck {
    private static final long serialVersionUID = 1;
    private final int d;
    private final int e;

    public dch(byte[] bArr, int i, int i2) {
        super(bArr);
        r(i, i + i2, bArr.length);
        this.d = i;
        this.e = i2;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
    }

    @Override // defpackage.dck, defpackage.dcl
    public final byte a(int i) {
        A(i, this.e);
        return this.a[this.d + i];
    }

    @Override // defpackage.dck, defpackage.dcl
    public final byte b(int i) {
        return this.a[this.d + i];
    }

    @Override // defpackage.dck
    protected final int c() {
        return this.d;
    }

    @Override // defpackage.dck, defpackage.dcl
    public final int d() {
        return this.e;
    }

    @Override // defpackage.dck, defpackage.dcl
    protected final void e(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.a, this.d + i, bArr, i2, i3);
    }

    Object writeReplace() {
        return dcl.x(C());
    }
}
