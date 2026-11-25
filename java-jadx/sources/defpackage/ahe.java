package defpackage;

import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ahe implements Runnable {
    private final ahc a;
    private final String b;
    private final dag c;

    public ahe(ahc ahcVar, String str, dag dagVar) {
        this.a = ahcVar;
        this.b = str;
        this.c = dagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            z = ((Boolean) this.c.get()).booleanValue();
        } catch (InterruptedException | ExecutionException e) {
            z = true;
        }
        this.a.a(this.b, z);
    }
}
