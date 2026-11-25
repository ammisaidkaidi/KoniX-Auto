package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class SerializableSupplierBase {
    private static final char[] a = "0123456789abcdef".toCharArray();

    public static SerializableSupplierBase e(byte[] bArr) {
        return new EnumConstantSupplier(bArr);
    }

    public abstract int a();

    public abstract int b();

    public abstract boolean c(SerializableSupplierBase cwuVar);

    public byte[] d() {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SerializableSupplierBase) {
            SerializableSupplierBase cwuVar = (SerializableSupplierBase) obj;
            if (b() == cwuVar.b() && c(cwuVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (b() >= 32) {
            return a();
        }
        byte[] d = d();
        int i = d[0] & 255;
        for (int i2 = 1; i2 < d.length; i2++) {
            i |= (d[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] d = d();
        int length = d.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : d) {
            char[] cArr = a;
            StaggeredGridLayoutParams.append(cArr[(ProtoLiteMessageBase >> 4) & 15]);
            StaggeredGridLayoutParams.append(cArr[b & 15]);
        }
        return StaggeredGridLayoutParams.toString();
    }
}
