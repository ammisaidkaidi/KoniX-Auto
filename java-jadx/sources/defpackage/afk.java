package defpackage;

import android.content.Context;
import java.io.File;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class afk implements afd {
    public final Object a = new Object();
    public afj b;
    public boolean c;
    private final Context d;
    private final String e;
    private final aez f;
    private final boolean g;

    public afk(Context context, String str, aez aezVar, boolean z) {
        this.d = context;
        this.e = str;
        this.f = aezVar;
        this.g = z;
    }

    @Override // defpackage.afd
    public final afh a() {
        return b().c();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        b().close();
    }

    private final afj b() {
        afj afjVar;
        synchronized (this.a) {
            if (this.b == null) {
                afh[] afhVarArr = new afh[1];
                String str = this.e;
                if (str == null || !this.g) {
                    this.b = new afj(this.d, str, afhVarArr, this.f);
                } else {
                    this.b = new afj(this.d, new File(this.d.getNoBackupFilesDir(), this.e).getAbsolutePath(), afhVarArr, this.f);
                }
                this.b.setWriteAheadLoggingEnabled(this.c);
            }
            afjVar = this.b;
        }
        return afjVar;
    }
}
