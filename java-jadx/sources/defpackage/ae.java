package defpackage;

import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/* compiled from: PG */
@Deprecated
/* loaded from: classes.dex */
public final class ae extends Number implements Comparable {
    private static final long serialVersionUID = -4756200506571685661L;

    @Deprecated
    public final double a;

    @Deprecated
    public final int b;

    @Deprecated
    public final int c;

    @Deprecated
    public final long d;

    @Deprecated
    public final long e;

    @Deprecated
    public final long f;

    @Deprecated
    public final boolean g;

    private void readObject(ObjectInputStream objectInputStream) {
        throw new NotSerializableException();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        throw new NotSerializableException();
    }

    @Override // java.lang.Comparable
    @Deprecated
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        ae aeVar = (ae) obj;
        long j = this.f;
        long j2 = aeVar.f;
        if (j != j2) {
            return j >= j2 ? 1 : -1;
        }
        double d = this.a;
        double d2 = aeVar.a;
        if (d != d2) {
            return d >= d2 ? 1 : -1;
        }
        int i = this.b;
        int i2 = aeVar.b;
        if (i != i2) {
            return i >= i2 ? 1 : -1;
        }
        long j3 = this.d - aeVar.d;
        if (j3 != 0) {
            return j3 >= 0 ? 1 : -1;
        }
        return 0;
    }

    @Override // java.lang.Number
    @Deprecated
    public final double doubleValue() {
        return this.g ? -this.a : this.a;
    }

    @Deprecated
    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ae)) {
            return false;
        }
        ae aeVar = (ae) obj;
        return this.a == aeVar.a && this.b == aeVar.b && this.d == aeVar.d;
    }

    @Override // java.lang.Number
    @Deprecated
    public final float floatValue() {
        return (float) this.a;
    }

    @Deprecated
    public final int hashCode() {
        return (int) (this.d + ((this.b + ((int) (this.a * 37.0d))) * 37));
    }

    @Override // java.lang.Number
    @Deprecated
    public final int intValue() {
        return (int) this.f;
    }

    @Override // java.lang.Number
    @Deprecated
    public final long longValue() {
        return this.f;
    }

    @Deprecated
    public final String toString() {
        int i = this.b;
        StringBuilder sb = new StringBuilder(14);
        sb.append("%.");
        sb.append(i);
        sb.append("f");
        return String.format(sb.toString(), Double.valueOf(this.a));
    }

    @Deprecated
    public ae(double d, int i) {
        int round;
        if (i == 0) {
            round = 0;
        } else {
            double d2 = d < 0.0d ? -d : d;
            int pow = (int) Math.pow(10.0d, i);
            double d3 = pow;
            Double.isNaN(d3);
            round = (int) (Math.round(d2 * d3) % pow);
        }
        long j = round;
        boolean z = d < 0.0d;
        this.g = z;
        this.a = z ? -d : d;
        this.b = i;
        this.d = j;
        this.f = d > 1.0E18d ? 1000000000000000000L : (long) d;
        if (j == 0) {
            this.e = 0L;
            this.c = 0;
        } else {
            int i2 = i;
            while (j % 10 == 0) {
                j /= 10;
                i2--;
            }
            this.e = j;
            this.c = i2;
        }
        Math.pow(10.0d, i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ae(String str) {
        this(r0, r2 == 0 ? 0 : r4.length() - r2);
        double parseDouble = Double.parseDouble(str);
        String trim = str.trim();
        int indexOf = trim.indexOf(46) + 1;
    }
}
