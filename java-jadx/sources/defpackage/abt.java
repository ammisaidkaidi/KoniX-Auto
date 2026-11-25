package defpackage;

import android.os.IBinder;

/* compiled from: PG */
/* loaded from: classes.dex */
final class abt implements Runnable {
    final /* synthetic */ abw a;
    final /* synthetic */ abx b;
    private final /* synthetic */ int c;

    public abt(abw abwVar, abx abxVar, int i) {
        this.c = i;
        this.a = abwVar;
        this.b = abxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.c) {
            case 0:
                IBinder a = this.b.a();
                abe abeVar = (abe) this.a.a.b.remove(a);
                if (abeVar != null) {
                    a.unlinkToDeath(abeVar, 0);
                    break;
                }
                break;
            default:
                abe abeVar2 = (abe) this.a.a.b.remove(this.b.a());
                if (abeVar2 != null) {
                    abeVar2.g.a().unlinkToDeath(abeVar2, 0);
                    break;
                }
                break;
        }
    }
}
