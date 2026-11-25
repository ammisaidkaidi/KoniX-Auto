package androidx.work;

import defpackage.agk;
import defpackage.agm;
import defpackage.aha;
import java.util.Collection;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkerParameters {
    public UUID a;
    public agk b;
    public Executor c;
    public aha d;
    public agm e;

    public WorkerParameters(UUID uuid, agk agkVar, Collection collection, Executor executor, aha ahaVar, agm agmVar) {
        this.a = uuid;
        this.b = agkVar;
        new HashSet(collection);
        this.c = executor;
        this.d = ahaVar;
        this.e = agmVar;
    }
}
