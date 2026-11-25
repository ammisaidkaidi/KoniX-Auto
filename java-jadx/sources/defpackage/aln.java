package defpackage;

import android.content.Context;
import androidx.work.ListenableWorker;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aln implements Runnable {
    public static final /* synthetic */ int g = 0;
    final Context a;
    final akk b;
    final ListenableWorker c;
    final agm d;
    final amh e;
    public final ame f = ame.h();

    static {
        agr.b("WorkForegroundRunnable");
    }

    public aln(Context context, akk akkVar, ListenableWorker listenableWorker, agm agmVar, amh amhVar) {
        this.a = context;
        this.b = akkVar;
        this.c = listenableWorker;
        this.d = agmVar;
        this.e = amhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.b.p || re.c()) {
            this.f.e(null);
            return;
        }
        ame h = ame.h();
        this.e.c.execute(new all(h));
        h.aW(new alm(this, h), this.e.c);
    }
}
