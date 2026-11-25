package defpackage;

import androidx.work.impl.WorkDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ForegroundInfoProviderImpl implements ForegroundInfoProvider {
    final WorkProcessorMarkerInterface a;
    final WorkSpecDao b;
    public final WorkTaskExecutorHolder c;

    static {
        WorkLogger.b("WMFgUpdater");
    }

    public ForegroundInfoProviderImpl(WorkDatabase workDatabase, WorkProcessorMarkerInterface ajpVar, WorkTaskExecutorHolder amhVar) {
        this.a = ajpVar;
        this.c = amhVar;
        this.b = workDatabase.n();
    }
}
