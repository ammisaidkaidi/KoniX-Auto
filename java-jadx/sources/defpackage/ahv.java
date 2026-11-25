package defpackage;

import android.content.Context;
import java.io.File;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ahv {
    public static final String a = agr.b("WrkDbPathHelper");
    public static final String[] b = {"-journal", "-shm", "-wal"};

    public static File a(Context context) {
        return context.getDatabasePath("androidx.work.workdb");
    }
}
