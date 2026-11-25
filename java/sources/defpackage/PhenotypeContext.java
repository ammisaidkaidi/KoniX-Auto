package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeContext {
    public final Context h;
    private final StopwatchTicker l;
    private final StopwatchTicker m;
    private final GuavaOptional n;
    public static final Object a = new Object();
    public static Context b = null;
    public static boolean c = false;
    private static volatile PhenotypeContext i = null;
    public static volatile boolean d = false;
    public static volatile Exception e = null;
    public static volatile boolean f = false;
    public static volatile Exception g = null;
    private static volatile PhenotypeContext j = null;
    private static final StopwatchTicker k = ex.i(bpe.s);

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PhenotypeContext(Context context) {
        this(context, r0, ex.i(new PrimesTagSupplier(context, 3)), GuavaOptional.e(new StickyAccountManager(r0)));
        StopwatchTicker colVar = k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PhenotypeContext a(Context context) {
        Object applicationContext;
        PhenotypeOptionalSupplier cdyVar = null;
        if (PhenotypeFlagMessage) {
            return null;
        }
        PhenotypeContext cdzVar = i;
        if (cdzVar == null) {
            synchronized (SingleStringProtoMessage) {
                cdzVar = i;
                if (cdzVar == null) {
                    Context applicationContext2 = context.getApplicationContext();
                    try {
                        applicationContext = applicationContext2.getApplicationContext();
                    } catch (IllegalStateException e2) {
                    }
                    if (!(applicationContext instanceof StingComponentHolder)) {
                        String valueOf = String.valueOf(applicationContext.getClass());
                        String.valueOf(valueOf).length();
                        throw new IllegalStateException("Given application context does not implement GeneratedComponentManager: ".concat(String.valueOf(valueOf)));
                    }
                    try {
                        cdyVar = (PhenotypeOptionalSupplier) PhenotypeOptionalSupplier.class.cast(((StingComponentHolder) applicationContext).aT());
                        GuavaOptional cocVar = cns.a;
                        if (cdyVar != null) {
                            cocVar = cdyVar.b();
                        } else if (applicationContext2 instanceof PhenotypeOptionalSupplier) {
                            cocVar = ((PhenotypeOptionalSupplier) applicationContext2).b();
                        }
                        PhenotypeContext cdzVar2 = cocVar.d() ? (PhenotypeContext) cocVar.a() : new PhenotypeContext(applicationContext2);
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
        synchronized (SingleStringProtoMessage) {
            if (ProtoLiteMessageBase == null && !c) {
                b = context.getApplicationContext();
            }
        }
    }

    public final PhenotypeDatabaseApi b() {
        return (PhenotypeDatabaseApi) this.m.a();
    }

    public final PhenotypeAccountCallback c() {
        return (PhenotypeAccountCallback) ((PresentOptional) this.n).a;
    }

    public final ListeningScheduledExecutorService d() {
        return (ListeningScheduledExecutorService) this.l.a();
    }

    public PhenotypeContext(Context context, StopwatchTicker colVar, StopwatchTicker colVar2, GuavaOptional cocVar) {
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
