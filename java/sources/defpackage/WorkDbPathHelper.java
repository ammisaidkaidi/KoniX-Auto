package defpackage;

import android.content.Context;
import java.io.File;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkDbPathHelper {
    public static final String a = WorkLogger.b("WrkDbPathHelper");
    public static final String[] b = {"-journal", "-shm", "-wal"};

    public static File a(Context context) {
        return context.getDatabasePath("androidx.work.workdb");
    }
}
