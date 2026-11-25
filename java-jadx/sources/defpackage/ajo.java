package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ajo {
    private static ajo e;
    public final ajf a;
    public final ajg b;
    public final ajm c;
    public final ajn d;

    private ajo(Context context, amh amhVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = new ajf(applicationContext, amhVar);
        this.b = new ajg(applicationContext, amhVar);
        this.c = new ajm(applicationContext, amhVar);
        this.d = new ajn(applicationContext, amhVar);
    }

    public static synchronized ajo a(Context context, amh amhVar) {
        ajo ajoVar;
        synchronized (ajo.class) {
            if (e == null) {
                e = new ajo(context, amhVar);
            }
            ajoVar = e;
        }
        return ajoVar;
    }
}
