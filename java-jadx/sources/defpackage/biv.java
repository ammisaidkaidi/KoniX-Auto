package defpackage;

import android.content.Context;
import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class biv implements bii {
    public static final Charset a = Charset.forName("UTF-8");
    public static final ceg b;
    public static final ConcurrentHashMap c;
    static Boolean d;
    static Long e;
    public final Context f;

    static {
        ceg c2 = new ceg(cdw.a("com.google.android.gms.clearcut.public")).c("gms:playlog:service:samplingrules_");
        b = new ceg(c2.a, c2.b, c2.c, "LogSamplingRulesV2__", c2.e, c2.f);
        c = new ConcurrentHashMap();
        d = null;
        e = null;
    }

    public biv(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f = applicationContext;
        if (applicationContext != null) {
            cei.f(applicationContext);
        }
    }
}
