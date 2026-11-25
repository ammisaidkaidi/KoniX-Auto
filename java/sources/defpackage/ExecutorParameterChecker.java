package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ExecutorParameterChecker {
    public BiConsumerCallbackInterface a;
    public ApiAvailabilityVersionInfo[] b;
    private boolean d = true;
    public int c = 0;

    public final ExecutorParameterCheckerHolder a() {
        ThreadAndNullChecksUtil.f(this.a != null, "execute parameter required");
        return new ExecutorParameterCheckerHolder(this, this.b, this.d, this.c);
    }

    public final void b() {
        this.d = false;
    }
}
