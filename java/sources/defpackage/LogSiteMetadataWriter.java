package defpackage;

import java.util.Collections;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LogSiteMetadataWriter {
    private static final Set a;

    static {
        Set singleton = Collections.singleton(ctd.a);
        a = singleton;
        RepeatingKeyValidator.a(singleton);
    }

    public static String a(FloggerLogRecord cubVar) {
        return FloggerFormatUtils.b(cubVar.k());
    }

    public static boolean b(FloggerLogRecord cubVar, LogContextBase cuxVar, Set set) {
        return (cubVar.j() == null && cuxVar.a() <= set.size() && set.containsAll(cuxVar.b())) ? false : true;
    }

    public static void c(LogContextBase cuxVar, KeyValueHandlerBase cunVar, StringBuilder sb) {
        ContextStringBuilder cuaVar = new ContextStringBuilder(StaggeredGridLayoutParams);
        cuxVar.c(cunVar, cuaVar);
        if (cuaVar.c) {
            cuaVar.b.append(cuaVar.a);
        }
    }
}
