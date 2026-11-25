package defpackage;

import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmediateFailedFuture extends ImmediateFutureBase {
    @Override // defpackage.ImmediateFutureBase
    public final int a(AggregateFutureImpl czaVar) {
        int i;
        synchronized (czaVar) {
            i = czaVar.remaining - 1;
            czaVar.remaining = i;
        }
        return i;
    }

    @Override // defpackage.ImmediateFutureBase
    public final void b(AggregateFutureImpl czaVar, Set set) {
        synchronized (czaVar) {
            if (czaVar.seenExceptions == null) {
                czaVar.seenExceptions = set;
            }
        }
    }
}
