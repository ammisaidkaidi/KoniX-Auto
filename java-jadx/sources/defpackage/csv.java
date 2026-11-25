package defpackage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class csv {
    public final cuc a;

    protected csv(cuc cucVar) {
        this.a = cucVar;
    }

    public static void d(String str, cub cubVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(new Date(TimeUnit.NANOSECONDS.toMillis(cubVar.e()))));
        sb.append(": logging error [");
        cue.d(cubVar.f(), sb);
        sb.append("]: ");
        sb.append(str);
        System.err.println(sb);
        System.err.flush();
    }

    public abstract ctq a(Level level);

    public final ctq b() {
        return a(Level.SEVERE);
    }

    public final ctq c() {
        return a(Level.WARNING);
    }

    protected final boolean e(Level level) {
        return this.a.d(level);
    }
}
