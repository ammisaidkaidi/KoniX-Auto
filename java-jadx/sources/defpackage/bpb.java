package defpackage;

import android.util.Base64;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpb implements Comparable {
    public static final Comparator a = new vp(3);
    public final String b;
    final long c;
    final boolean d;
    final double e;
    final String f;
    final byte[] g;
    public final int h;
    public final int i;

    public bpb(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2) {
        this.b = str;
        this.c = j;
        this.d = z;
        this.e = d;
        this.f = str2;
        this.g = bArr;
        this.h = i;
        this.i = i2;
    }

    public bpb(String str, byte[] bArr, int i) {
        this(str, 0L, false, 0.0d, null, bArr, 5, i);
    }

    private static int f(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i != i2 ? 1 : 0;
    }

    public final double a() {
        if (this.h == 3) {
            return this.e;
        }
        throw new IllegalArgumentException("Not a double type");
    }

    public final long b() {
        if (this.h == 1) {
            return this.c;
        }
        throw new IllegalArgumentException("Not a long type");
    }

    public final String c() {
        if (this.h != 4) {
            throw new IllegalArgumentException("Not a String type");
        }
        String str = this.f;
        hr.d(str);
        return str;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        bpb bpbVar = (bpb) obj;
        int compareTo = this.b.compareTo(bpbVar.b);
        if (compareTo != 0) {
            return compareTo;
        }
        int f = f(this.h, bpbVar.h);
        if (f != 0) {
            return f;
        }
        switch (this.h) {
            case 1:
                long j = this.c;
                long j2 = bpbVar.c;
                if (j < j2) {
                    return -1;
                }
                return j == j2 ? 0 : 1;
            case 2:
                boolean z = this.d;
                if (z == bpbVar.d) {
                    return 0;
                }
                return z ? 1 : -1;
            case 3:
                return Double.compare(this.e, bpbVar.e);
            case 4:
                String str = this.f;
                String str2 = bpbVar.f;
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                if (str2 == null) {
                    return 1;
                }
                return str.compareTo(str2);
            default:
                byte[] bArr = this.g;
                byte[] bArr2 = bpbVar.g;
                if (bArr == bArr2) {
                    return 0;
                }
                if (bArr == null) {
                    return -1;
                }
                if (bArr2 == null) {
                    return 1;
                }
                for (int i = 0; i < Math.min(this.g.length, bpbVar.g.length); i++) {
                    int i2 = this.g[i] - bpbVar.g[i];
                    if (i2 != 0) {
                        return i2;
                    }
                }
                return f(this.g.length, bpbVar.g.length);
        }
    }

    public final boolean d() {
        if (this.h == 2) {
            return this.d;
        }
        throw new IllegalArgumentException("Not a boolean type");
    }

    public final byte[] e() {
        if (this.h == 5) {
            return (byte[]) hr.d(this.g);
        }
        throw new IllegalArgumentException("Not a bytes type");
    }

    public final boolean equals(Object obj) {
        int i;
        if (!(obj instanceof bpb)) {
            return false;
        }
        bpb bpbVar = (bpb) obj;
        if (!qx.n(this.b, bpbVar.b) || (i = this.h) != bpbVar.h || this.i != bpbVar.i) {
            return false;
        }
        switch (i) {
            case 1:
                return this.c == bpbVar.c;
            case 2:
                return this.d == bpbVar.d;
            case 3:
                return this.e == bpbVar.e;
            case 4:
                return qx.n(this.f, bpbVar.f);
            default:
                return Arrays.equals(this.g, bpbVar.g);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Flag(");
        sb.append(this.b);
        sb.append(", ");
        switch (this.h) {
            case 1:
                sb.append(this.c);
                break;
            case 2:
                sb.append(this.d);
                break;
            case 3:
                sb.append(this.e);
                break;
            case 4:
                sb.append("'");
                String str = this.f;
                hr.d(str);
                sb.append(str);
                sb.append("'");
                break;
            default:
                sb.append("'");
                sb.append(Base64.encodeToString((byte[]) hr.d(this.g), 3));
                sb.append("'");
                break;
        }
        sb.append(", ");
        sb.append(this.h);
        sb.append(", ");
        sb.append(this.i);
        sb.append(")");
        return sb.toString();
    }
}
