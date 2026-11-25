package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cdz {
    public final Context h;
    private final col l;
    private final col m;
    private final coc n;
    public static final Object a = new Object();
    public static Context b = null;
    public static boolean c = false;
    private static volatile cdz i = null;
    public static volatile boolean d = false;
    public static volatile Exception e = null;
    public static volatile boolean f = false;
    public static volatile Exception g = null;
    private static volatile cdz j = null;
    private static final col k = ex.i(bpe.s);

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public cdz(Context context) {
        this(context, r0, ex.i(new bya(context, 3)), coc.e(new cfw(r0)));
        col colVar = k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static cdz a(Context context) {
        Object applicationContext;
        cdy cdyVar = null;
        if (c) {
            return null;
        }
        cdz cdzVar = i;
        if (cdzVar == null) {
            synchronized (a) {
                cdzVar = i;
                if (cdzVar == null) {
                    Context applicationContext2 = context.getApplicationContext();
                    try {
                        applicationContext = applicationContext2.getApplicationContext();
                    } catch (IllegalStateException e2) {
                    }
                    if (!(applicationContext instanceof dht)) {
                        String valueOf = String.valueOf(applicationContext.getClass());
                        String.valueOf(valueOf).length();
                        throw new IllegalStateException("Given application context does not implement GeneratedComponentManager: ".concat(String.valueOf(valueOf)));
                    }
                    try {
                        cdyVar = (cdy) cdy.class.cast(((dht) applicationContext).aT());
                        coc cocVar = cns.a;
                        if (cdyVar != null) {
                            cocVar = cdyVar.b();
                        } else if (applicationContext2 instanceof cdy) {
                            cocVar = ((cdy) applicationContext2).b();
                        }
                        cdz cdzVar2 = cocVar.d() ? (cdz) cocVar.a() : new cdz(applicationContext2);
                        i = cdzVar2;
                        cdzVar = cdzVar2;
                    } catch (ClassCastException e3) {
                        throw new IllegalStateException("Failed to get an entry point. Did you mark your interface with @SingletonEntryPoint?", e3);
                    }
                }
            }
        }
        return cdzVar;
    }

    public static void e(Context context) {
        synchronized (a) {
            if (b == null && !c) {
                b = context.getApplicationContext();
            }
        }
    }

    public final ceo b() {
        return (ceo) this.m.a();
    }

    public final cgg c() {
        return (cgg) ((cof) this.n).a;
    }

    public final dai d() {
        return (dai) this.l.a();
    }

    public cdz(Context context, col colVar, col colVar2, coc cocVar) {
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        colVar.getClass();
        colVar2.getClass();
        this.h = applicationContext;
        this.l = ex.i(colVar);
        this.m = ex.i(colVar2);
        this.n = cocVar;
    }
}
