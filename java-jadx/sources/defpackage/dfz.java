package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dfz {
    public static final boolean a;
    static final long b;
    static final boolean c;
    private static final Unsafe d;
    private static final Class e;
    private static final boolean f;
    private static final boolean g;
    private static final dfy h;
    private static final long i;

    static {
        boolean z;
        dfy dfyVar;
        Unsafe unsafe;
        Unsafe j = j();
        d = j;
        e = Memory.class;
        boolean v = v(Long.TYPE);
        f = v;
        boolean v2 = v(Integer.TYPE);
        g = v2;
        dfy dfyVar2 = null;
        if (j != null) {
            if (v) {
                dfyVar2 = new dfx(j);
            } else if (v2) {
                dfyVar2 = new dfw(j);
            }
        }
        h = dfyVar2;
        if (dfyVar2 != null && (unsafe = dfyVar2.a) != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                i();
            } catch (Throwable th) {
                l(th);
            }
        }
        dfy dfyVar3 = h;
        if (dfyVar3 == null) {
            z = false;
        } else {
            Unsafe unsafe2 = dfyVar3.a;
            if (unsafe2 == null) {
                z = false;
            } else {
                try {
                    Class<?> cls2 = unsafe2.getClass();
                    cls2.getMethod("objectFieldOffset", Field.class);
                    cls2.getMethod("arrayBaseOffset", Class.class);
                    cls2.getMethod("arrayIndexScale", Class.class);
                    cls2.getMethod("getInt", Object.class, Long.TYPE);
                    cls2.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
                    cls2.getMethod("getLong", Object.class, Long.TYPE);
                    cls2.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
                    cls2.getMethod("getObject", Object.class, Long.TYPE);
                    cls2.getMethod("putObject", Object.class, Long.TYPE, Object.class);
                    z = true;
                } catch (Throwable th2) {
                    l(th2);
                    z = false;
                }
            }
        }
        a = z;
        b = z(byte[].class);
        z(boolean[].class);
        B(boolean[].class);
        z(int[].class);
        B(int[].class);
        z(long[].class);
        B(long[].class);
        z(float[].class);
        B(float[].class);
        z(double[].class);
        B(double[].class);
        z(Object[].class);
        B(Object[].class);
        Field i2 = i();
        long j2 = -1;
        if (i2 != null && (dfyVar = h) != null) {
            j2 = dfyVar.m(i2);
        }
        i = j2;
        c = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private dfz() {
    }

    private static Field A(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable th) {
            return null;
        }
    }

    private static void B(Class cls) {
        if (a) {
            h.r(cls);
        }
    }

    static byte a(long j) {
        return h.a(j);
    }

    static double b(Object obj, long j) {
        return h.b(obj, j);
    }

    static float c(Object obj, long j) {
        return h.c(obj, j);
    }

    static int d(Object obj, long j) {
        return h.k(obj, j);
    }

    static long e(ByteBuffer byteBuffer) {
        return h.l(byteBuffer, i);
    }

    static long f(Object obj, long j) {
        return h.l(obj, j);
    }

    static Object g(Class cls) {
        try {
            return d.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    static Object h(Object obj, long j) {
        return h.n(obj, j);
    }

    public static Field i() {
        Field A = A(Buffer.class, "effectiveDirectAddress");
        if (A != null) {
            return A;
        }
        Field A2 = A(Buffer.class, "address");
        if (A2 == null || A2.getType() != Long.TYPE) {
            return null;
        }
        return A2;
    }

    static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new dfv());
        } catch (Throwable th) {
            return null;
        }
    }

    static void k(long j, byte[] bArr, long j2, long j3) {
        h.d(j, bArr, j2, j3);
    }

    public static void l(Throwable th) {
        Logger.getLogger(dfz.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    static void m(Object obj, long j, boolean z) {
        h.e(obj, j, z);
    }

    static void n(byte[] bArr, long j, byte b2) {
        h.f(bArr, b + j, b2);
    }

    public static void o(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int i2 = ((((int) j) ^ (-1)) & 3) << 3;
        s(obj, j2, ((b2 & 255) << i2) | (d(obj, j2) & ((255 << i2) ^ (-1))));
    }

    public static void p(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int i2 = (((int) j) & 3) << 3;
        s(obj, j2, ((b2 & 255) << i2) | (d(obj, j2) & ((255 << i2) ^ (-1))));
    }

    static void q(Object obj, long j, double d2) {
        h.g(obj, j, d2);
    }

    static void r(Object obj, long j, float f2) {
        h.h(obj, j, f2);
    }

    static void s(Object obj, long j, int i2) {
        h.o(obj, j, i2);
    }

    static void t(Object obj, long j, long j2) {
        h.p(obj, j, j2);
    }

    static void u(Object obj, long j, Object obj2) {
        h.q(obj, j, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean v(Class cls) {
        try {
            Class cls2 = e;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    static boolean w(Object obj, long j) {
        return h.i(obj, j);
    }

    public static boolean x(Object obj, long j) {
        return ((byte) ((d(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    public static boolean y(Object obj, long j) {
        return ((byte) ((d(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    private static int z(Class cls) {
        if (a) {
            return h.j(cls);
        }
        return -1;
    }
}
