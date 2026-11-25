package defpackage;

import java.io.InputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class dcp {
    public static final /* synthetic */ int d = 0;
    private static volatile int e = 100;
    int a;
    final int b = e;
    dcq c;

    public static int F(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long G(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static dcp H(InputStream inputStream) {
        return inputStream == null ? I(dds.b) : new dco(inputStream);
    }

    public static dcp I(byte[] bArr) {
        return J(bArr, 0, bArr.length);
    }

    static dcp J(byte[] bArr, int i, int i2) {
        dcm dcmVar = new dcm(bArr, i, i2);
        try {
            dcmVar.e(i2);
            return dcmVar;
        } catch (ddu e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public abstract void A(int i);

    public abstract boolean C();

    public abstract boolean D();

    public abstract boolean E(int i);

    public abstract double b();

    public abstract float c();

    public abstract int d();

    public abstract int e(int i);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public abstract long o();

    public abstract long p();

    public abstract long t();

    public abstract long u();

    public abstract long v();

    public abstract dcl w();

    public abstract String x();

    public abstract String y();

    public abstract void z(int i);
}
