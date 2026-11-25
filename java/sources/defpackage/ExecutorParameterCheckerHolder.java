package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ExecutorParameterCheckerHolder {
    public final ApiAvailabilityVersionInfo[] a;
    public final boolean b;
    public final int c;
    final /* synthetic */ ExecutorParameterChecker d;

    public ExecutorParameterCheckerHolder(ExecutorParameterChecker bmbVar, ApiAvailabilityVersionInfo[] bjbVarArr, boolean z, int i) {
        this.d = bmbVar;
        this.a = bjbVarArr;
        boolean z2 = false;
        if (bjbVarArr != null && z) {
            z2 = true;
        }
        this.b = z2;
        this.c = i;
    }

    public static ExecutorParameterChecker a() {
        return new ExecutorParameterChecker();
    }
}
