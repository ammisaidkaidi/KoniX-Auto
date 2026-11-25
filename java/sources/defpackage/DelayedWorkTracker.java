package defpackage;

import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DelayedWorkTracker {
    public static final /* synthetic */ int d = 0;
    final GreedyWorkScheduler a;
    public final Map b = new HashMap();
    public final WorkMainHandlerWrapper c;

    static {
        WorkLogger.b("DelayedWorkTracker");
    }

    public DelayedWorkTracker(GreedyWorkScheduler aieVar, WorkMainHandlerWrapper ahbVar) {
        this.a = aieVar;
        this.c = ahbVar;
    }
}
