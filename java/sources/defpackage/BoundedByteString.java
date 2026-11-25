package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
final class BoundedByteString extends LiteralByteString {
    private static final long serialVersionUID = 1;
    private final int d;
    private final int e;

    public BoundedByteString(byte[] bArr, int i, int i2) {
        super(bArr);
        r(i, i + i2, bArr.length);
        this.d = i;
        this.e = i2;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
    }

    @Override // defpackage.LiteralByteString, defpackage.ByteString
    public final byte a(int i) {
        A(i, this.e);
        return this.a[this.d + i];
    }

    @Override // defpackage.LiteralByteString, defpackage.ByteString
    public final byte b(int i) {
        return this.a[this.d + i];
    }

    @Override // defpackage.LiteralByteString
    protected final int c() {
        return this.d;
    }

    @Override // defpackage.LiteralByteString, defpackage.ByteString
    public final int d() {
        return this.e;
    }

    @Override // defpackage.LiteralByteString, defpackage.ByteString
    protected final void e(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.a, this.d + i, bArr, i2, i3);
    }

    Object writeReplace() {
        return ByteString.x(C());
    }
}
