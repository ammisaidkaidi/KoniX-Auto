package defpackage;

import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cyz extends cyx {
    @Override // defpackage.cyx
    public final int a(cza czaVar) {
        int i;
        synchronized (czaVar) {
            i = czaVar.remaining - 1;
            czaVar.remaining = i;
        }
        return i;
    }

    @Override // defpackage.cyx
    public final void b(cza czaVar, Set set) {
        synchronized (czaVar) {
            if (czaVar.seenExceptions == null) {
                czaVar.seenExceptions = set;
            }
        }
    }
}
