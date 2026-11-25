package defpackage;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UnsafeAtomicHelper extends FutureAtomicHelper {
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
                unsafe = (Unsafe) AccessController.doPrivileged(new UnsafeAccessAction_cym());
            } catch (PrivilegedActionException e3) {
                throw new RuntimeException("Could not initialize intrinsics", e3.getCause());
            }
        }
        try {
            c = unsafe.objectFieldOffset(GuavaAbstractFuture_cyp.class.getDeclaredField("waiters"));
            b = unsafe.objectFieldOffset(GuavaAbstractFuture_cyp.class.getDeclaredField("listeners"));
            d = unsafe.objectFieldOffset(GuavaAbstractFuture_cyp.class.getDeclaredField("value"));
            e = unsafe.objectFieldOffset(FutureUnsafeOffsets.class.getDeclaredField("thread"));
            f = unsafe.objectFieldOffset(FutureUnsafeOffsets.class.getDeclaredField("next"));
            a = unsafe;
        } catch (Exception e4) {
            SharedSecretsStackGetter.b(e4);
            throw new RuntimeException(e4);
        }
    }

    @Override // defpackage.FutureAtomicHelper
    public final void a(FutureUnsafeOffsets cyoVar, FutureUnsafeOffsets cyoVar2) {
        a.putObject(cyoVar, f, cyoVar2);
    }

    @Override // defpackage.FutureAtomicHelper
    public final void b(FutureUnsafeOffsets cyoVar, Thread thread) {
        a.putObject(cyoVar, e, thread);
    }

    @Override // defpackage.FutureAtomicHelper
    public final boolean c(GuavaAbstractFuture_cyp cypVar, FutureStateHolder cygVar, FutureStateHolder cygVar2) {
        return a.compareAndSwapObject(cypVar, b, cygVar, cygVar2);
    }

    @Override // defpackage.FutureAtomicHelper
    public final boolean d(GuavaAbstractFuture_cyp cypVar, Object obj, Object obj2) {
        return a.compareAndSwapObject(cypVar, d, obj, obj2);
    }

    @Override // defpackage.FutureAtomicHelper
    public final boolean e(GuavaAbstractFuture_cyp cypVar, FutureUnsafeOffsets cyoVar, FutureUnsafeOffsets cyoVar2) {
        return a.compareAndSwapObject(cypVar, c, cyoVar, cyoVar2);
    }
}
