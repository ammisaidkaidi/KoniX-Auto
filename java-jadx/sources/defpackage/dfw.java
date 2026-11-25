package defpackage;

import libcore.io.Memory;
import sun.misc.Unsafe;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dfw extends dfy {
    public dfw(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // defpackage.dfy
    public final byte a(long j) {
        return Memory.peekByte((int) j);
    }

    @Override // defpackage.dfy
    public final double b(Object obj, long j) {
        return Double.longBitsToDouble(l(obj, j));
    }

    @Override // defpackage.dfy
    public final float c(Object obj, long j) {
        return Float.intBitsToFloat(k(obj, j));
    }

    @Override // defpackage.dfy
    public final void d(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray((int) j, bArr, (int) j2, (int) j3);
    }

    @Override // defpackage.dfy
    public final void e(Object obj, long j, boolean z) {
        if (dfz.c) {
            dfz.o(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            dfz.p(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // defpackage.dfy
    public final void f(Object obj, long j, byte b) {
        if (dfz.c) {
            dfz.o(obj, j, b);
        } else {
            dfz.p(obj, j, b);
        }
    }

    @Override // defpackage.dfy
    public final void g(Object obj, long j, double d) {
        p(obj, j, Double.doubleToLongBits(d));
    }

    @Override // defpackage.dfy
    public final void h(Object obj, long j, float f) {
        o(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.dfy
    public final boolean i(Object obj, long j) {
        return dfz.c ? dfz.x(obj, j) : dfz.y(obj, j);
    }
}
