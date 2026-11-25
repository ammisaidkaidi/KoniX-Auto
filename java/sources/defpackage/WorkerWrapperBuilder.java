package defpackage;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkerWrapperBuilder {
    final Context a;
    final WorkProcessorMarkerInterface b;
    final WorkTaskExecutor c;
    final WorkDatabase d;
    final String e;
    List f;
    final WorkTaskExecutorHolder g;

    public WorkerWrapperBuilder(Context context, WorkTaskExecutor agfVar, WorkTaskExecutorHolder amhVar, WorkProcessorMarkerInterface ajpVar, WorkDatabase workDatabase, String str) {
        new WorkDataEnumConverters();
        this.a = context.getApplicationContext();
        this.g = amhVar;
        this.b = ajpVar;
        this.c = agfVar;
        this.d = workDatabase;
        this.e = str;
    }
}
