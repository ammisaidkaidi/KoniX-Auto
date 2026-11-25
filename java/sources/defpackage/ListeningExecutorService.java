package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface ListeningExecutorService extends ExecutorService {
    ListenableFuture a(Runnable runnable);

    ListenableFuture b(Callable callable);
}
