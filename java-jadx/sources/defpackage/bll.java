package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bll implements Runnable {
    final /* synthetic */ biz a;
    final /* synthetic */ blm b;

    public bll(blm blmVar, biz bizVar) {
        this.b = blmVar;
        this.a = bizVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        blm blmVar = this.b;
        blj bljVar = (blj) blmVar.e.k.get(blmVar.b);
        if (bljVar == null) {
            return;
        }
        if (!this.a.c()) {
            bljVar.i(this.a);
            return;
        }
        blm blmVar2 = this.b;
        blmVar2.d = true;
        if (blmVar2.a.o()) {
            this.b.c();
            return;
        }
        try {
            bjx bjxVar = this.b.a;
            bjxVar.t(null, bjxVar.j());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            this.b.a.e("Failed to get service from broker.");
            bljVar.i(new biz(10));
        }
    }
}
