package defpackage;

import android.os.Handler;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aae {
    public final zn a;
    private final Handler b = new Handler();
    private aad c;

    public aae(zq zqVar) {
        this.a = new zn(zqVar);
    }

    public final void a(zl zlVar) {
        aad aadVar = this.c;
        if (aadVar != null) {
            aadVar.run();
        }
        aad aadVar2 = new aad(this.a, zlVar);
        this.c = aadVar2;
        this.b.postAtFrontOfQueue(aadVar2);
    }
}
