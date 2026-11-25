package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface ListenableFuture extends Future {
    void aW(Runnable runnable, Executor executor);
}
