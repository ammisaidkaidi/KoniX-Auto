package defpackage;

import android.content.Context;
import java.io.File;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DataDirProvider {
    private final Context a;
    private final Object b = new Object();
    private File c;

    public DataDirProvider(Context context) {
        this.a = context.getApplicationContext();
    }

    public final File a() {
        File file;
        synchronized (this.b) {
            if (this.c == null) {
                this.c = this.a.getDataDir();
            }
            file = this.c;
        }
        return file;
    }
}
