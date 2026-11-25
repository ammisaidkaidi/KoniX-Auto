package androidx.work;

import defpackage.WorkData;
import defpackage.ForegroundInfoProvider;
import defpackage.ReflectiveWorkerFactory;
import java.util.Collection;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkerParameters {
    public UUID a;
    public WorkData b;
    public Executor c;
    public ReflectiveWorkerFactory d;
    public ForegroundInfoProvider e;

    public WorkerParameters(UUID uuid, WorkData agkVar, Collection collection, Executor executor, ReflectiveWorkerFactory ahaVar, ForegroundInfoProvider agmVar) {
        this.a = uuid;
        this.b = agkVar;
        new HashSet(collection);
        this.c = executor;
        this.d = ahaVar;
        this.e = agmVar;
    }
}
