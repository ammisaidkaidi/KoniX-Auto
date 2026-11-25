package defpackage;

import java.util.HashMap;
import java.util.Random;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FutureFunctionWrappers {
    static {
        Math.abs(new Random().nextInt());
        new HashMap();
    }

    public static FutureSupplier a(FutureSupplier czbVar) {
        czbVar.getClass();
        return new CloseableFutureSupplier(ClosingScopeRegistry.b(), czbVar);
    }

    public static AsyncFunctionInterface b(AsyncFunctionInterface czcVar) {
        return new CloseableAsyncFunction(ClosingScopeRegistry.b(), czcVar);
    }
}
