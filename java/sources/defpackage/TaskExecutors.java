package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TaskExecutors {
    public static final Executor a = new BackgroundTaskExecutor();
    public static final Executor b = new MainThreadTaskExecutor();
}
