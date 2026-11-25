package defpackage;

import libcore.io.Memory;
import sun.misc.Unsafe;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UnsafeMemoryAccessorChecked extends UnsafeMemoryAccessorBase {
    public UnsafeMemoryAccessorChecked(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // defpackage.UnsafeMemoryAccessorBase
    public final byte a(long j) {
        return Memory.peekByte((int) j);
    }

    @Override // defpackage.UnsafeMemoryAccessorBase
    public final double b(Object obj, long j) {
        return Double.longBitsToDouble(l(obj, j));
    }

    @Override // defpackage.UnsafeMemoryAccessorBase
    public final float c(Object obj, long j) {
        return Float.intBitsToFloat(k(obj, j));
    }

    @Override // defpackage.UnsafeMemoryAccessorBase
    public final void d(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray((int) j, bArr, (int) j2, (int) j3);
    }

    @Override // defpackage.UnsafeMemoryAccessorBase
    public final void e(Object obj, long j, boolean z) {
        if (dfz.c) {
            ProtoUnsafeUtil.o(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            ProtoUnsafeUtil.p(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // defpackage.UnsafeMemoryAccessorBase
    public final void f(Object obj, long j, byte b) {
        if (dfz.c) {
            ProtoUnsafeUtil.o(obj, j, b);
        } else {
            ProtoUnsafeUtil.p(obj, j, b);
        }
    }

    @Override // defpackage.UnsafeMemoryAccessorBase
    public final void g(Object obj, long j, double d) {
        p(obj, j, Double.doubleToLongBits(ProtoMsgIntStringInt));
    }

    @Override // defpackage.UnsafeMemoryAccessorBase
    public final void h(Object obj, long j, float f) {
        o(obj, j, Float.floatToIntBits(NavManeuverTypeEnum));
    }

    @Override // defpackage.UnsafeMemoryAccessorBase
    public final boolean i(Object obj, long j) {
        return dfz.c ? ProtoUnsafeUtil.x(obj, j) : ProtoUnsafeUtil.y(obj, j);
    }
}
