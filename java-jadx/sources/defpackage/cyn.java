package defpackage;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cyn extends cyc {
    static final Unsafe a;
    static final long b;
    static final long c;
    static final long d;
    static final long e;
    static final long f;

    static {
        Unsafe unsafe;
        try {
            unsafe = Unsafe.getUnsafe();
        } catch (SecurityException e2) {
            try {
                unsafe = (Unsafe) AccessController.doPrivileged(new cym());
            } catch (PrivilegedActionException e3) {
                throw new RuntimeException("Could not initialize intrinsics", e3.getCause());
            }
        }
        try {
            c = unsafe.objectFieldOffset(cyp.class.getDeclaredField("waiters"));
            b = unsafe.objectFieldOffset(cyp.class.getDeclaredField("listeners"));
            d = unsafe.objectFieldOffset(cyp.class.getDeclaredField("value"));
            e = unsafe.objectFieldOffset(cyo.class.getDeclaredField("thread"));
            f = unsafe.objectFieldOffset(cyo.class.getDeclaredField("next"));
            a = unsafe;
        } catch (Exception e4) {
            cop.b(e4);
            throw new RuntimeException(e4);
        }
    }

    @Override // defpackage.cyc
    public final void a(cyo cyoVar, cyo cyoVar2) {
        a.putObject(cyoVar, f, cyoVar2);
    }

    @Override // defpackage.cyc
    public final void b(cyo cyoVar, Thread thread) {
        a.putObject(cyoVar, e, thread);
    }

    @Override // defpackage.cyc
    public final boolean c(cyp cypVar, cyg cygVar, cyg cygVar2) {
        return a.compareAndSwapObject(cypVar, b, cygVar, cygVar2);
    }

    @Override // defpackage.cyc
    public final boolean d(cyp cypVar, Object obj, Object obj2) {
        return a.compareAndSwapObject(cypVar, d, obj, obj2);
    }

    @Override // defpackage.cyc
    public final boolean e(cyp cypVar, cyo cyoVar, cyo cyoVar2) {
        return a.compareAndSwapObject(cypVar, c, cyoVar, cyoVar2);
    }
}
