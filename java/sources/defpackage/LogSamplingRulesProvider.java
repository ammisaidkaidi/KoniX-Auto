package defpackage;

import android.content.Context;
import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LogSamplingRulesProvider implements SamplingRulesProvider {
    public static final Charset a = Charset.forName("UTF-8");
    public static final PhenotypeFlagsFactory b;
    public static final ConcurrentHashMap c;
    static Boolean d;
    static Long e;
    public final Context f;

    static {
        PhenotypeFlagsFactory c2 = new PhenotypeFlagsFactory(PhenotypeUriBuilder.a("com.google.android.gms.clearcut.public")).c("gms:playlog:service:samplingrules_");
        b = new PhenotypeFlagsFactory(c2.a, c2.b, c2.c, "LogSamplingRulesV2__", c2.e, c2.f);
        c = new ConcurrentHashMap();
        d = null;
        e = null;
    }

    public LogSamplingRulesProvider(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f = applicationContext;
        if (applicationContext != null) {
            PhenotypeFlagBase.f(applicationContext);
        }
    }
}
