package defpackage;

import androidx.preference.Preference;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class dcl implements Iterable, Serializable {
    public static final dcl b = new dck(dds.b);
    public int c = 0;

    static void A(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
    }

    private static dcl c(Iterator it, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
        }
        if (i == 1) {
            return (dcl) it.next();
        }
        int i2 = i >>> 1;
        dcl c = c(it, i2);
        dcl c2 = c(it, i - i2);
        if (Preference.DEFAULT_ORDER - c.d() < c2.d()) {
            int d = c.d();
            int d2 = c2.d();
            StringBuilder sb = new StringBuilder(53);
            sb.append("ByteString would be too long: ");
            sb.append(d);
            sb.append("+");
            sb.append(d2);
            throw new IllegalArgumentException(sb.toString());
        }
        int[] iArr = dff.a;
        if (c2.d() == 0) {
            return c;
        }
        if (c.d() == 0) {
            return c2;
        }
        int d3 = c.d() + c2.d();
        if (d3 < 128) {
            return dff.g(c, c2);
        }
        if (c instanceof dff) {
            dff dffVar = (dff) c;
            if (dffVar.f.d() + c2.d() < 128) {
                return new dff(dffVar.e, dff.g(dffVar.f, c2));
            }
            if (dffVar.e.f() > dffVar.f.f() && dffVar.g > c2.f()) {
                return new dff(dffVar.e, new dff(dffVar.f, c2));
            }
        }
        if (d3 >= dff.c(Math.max(c.f(), c2.f()) + 1)) {
            return new dff(c, c2);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        ev.R(c, arrayDeque);
        ev.R(c2, arrayDeque);
        dcl dclVar = (dcl) arrayDeque.pop();
        while (!arrayDeque.isEmpty()) {
            dclVar = new dff((dcl) arrayDeque.pop(), dclVar);
        }
        return dclVar;
    }

    static int r(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("End index: ");
        sb3.append(i2);
        sb3.append(" >= ");
        sb3.append(i3);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public static dcl t(byte[] bArr) {
        return u(bArr, 0, bArr.length);
    }

    public static dcl u(byte[] bArr, int i, int i2) {
        r(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new dck(bArr2);
    }

    public static dcl v(String str) {
        return new dck(str.getBytes(dds.a));
    }

    public static dcl w(InputStream inputStream) {
        ArrayList arrayList = new ArrayList();
        int i = 256;
        while (true) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i) {
                int read = inputStream.read(bArr, i2, i - i2);
                if (read == -1) {
                    break;
                }
                i2 += read;
            }
            dcl u = i2 == 0 ? null : u(bArr, 0, i2);
            if (u == null) {
                break;
            }
            arrayList.add(u);
            i = Math.min(i + i, 8192);
        }
        int size = arrayList.size();
        return size == 0 ? b : c(arrayList.iterator(), size);
    }

    static dcl x(byte[] bArr) {
        return new dck(bArr);
    }

    static dcl y(byte[] bArr, int i, int i2) {
        return new dch(bArr, i, i2);
    }

    public final boolean B() {
        return d() == 0;
    }

    public final byte[] C() {
        int d = d();
        if (d == 0) {
            return dds.b;
        }
        byte[] bArr = new byte[d];
        e(bArr, 0, 0, d);
        return bArr;
    }

    @Deprecated
    public final void D(byte[] bArr, int i, int i2) {
        r(0, i2, d());
        r(i, i + i2, bArr.length);
        if (i2 > 0) {
            e(bArr, 0, i, i2);
        }
    }

    public abstract byte a(int i);

    public abstract byte b(int i);

    public abstract int d();

    protected abstract void e(byte[] bArr, int i, int i2, int i3);

    public abstract boolean equals(Object obj);

    protected abstract int f();

    public abstract boolean h();

    public final int hashCode() {
        int i = this.c;
        if (i == 0) {
            int d = d();
            i = i(d, 0, d);
            if (i == 0) {
                i = 1;
            }
            this.c = i;
        }
        return i;
    }

    protected abstract int i(int i, int i2, int i3);

    protected abstract int j(int i, int i2, int i3);

    public abstract dcl k(int i, int i2);

    public abstract dcp l();

    protected abstract String m(Charset charset);

    public abstract ByteBuffer n();

    public abstract void o(dce dceVar);

    public abstract void p(OutputStream outputStream);

    public abstract boolean q();

    @Override // java.lang.Iterable
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public dci iterator() {
        return new dcf(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(d());
        objArr[2] = d() <= 50 ? ev.Q(this) : ev.Q(k(0, 47)).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public final String z() {
        return d() == 0 ? "" : m(dds.a);
    }
}
