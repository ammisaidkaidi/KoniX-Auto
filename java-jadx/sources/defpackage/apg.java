package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class apg implements Runnable {
    final /* synthetic */ aph a;

    public apg(aph aphVar) {
        this.a = aphVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aph aphVar;
        boolean z;
        if (this.a.d.isEnabled()) {
            this.a.a.postDelayed(this, r0.b);
            aph aphVar2 = this.a;
            aphVar2.c.onClick(aphVar2.d);
            aphVar = this.a;
            z = true;
        } else {
            aphVar = this.a;
            z = false;
        }
        aphVar.e = z;
    }
}
