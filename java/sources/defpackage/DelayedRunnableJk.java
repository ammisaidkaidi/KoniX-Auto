package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DelayedRunnableJk implements Runnable {
    final /* synthetic */ AppCompatDelegateImpl a;
    private final /* synthetic */ int b;

    public DelayedRunnableJk(AppCompatDelegateImpl jwVar, int i) {
        this.b = i;
        this.a = jwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                AppCompatDelegateImpl jwVar = this.a;
                jwVar.m.showAtLocation(jwVar.l, 55, 0, 0);
                this.a.z();
                if (!this.a.F()) {
                    this.a.l.setAlpha(1.0f);
                    this.a.l.setVisibility(0);
                    break;
                } else {
                    this.a.l.setAlpha(0.0f);
                    AppCompatDelegateImpl jwVar2 = this.a;
                    WeakViewAnimator O = ViewCompatAccessibilityStatics.O(jwVar2.l);
                    O.b(1.0f);
                    jwVar2.G = O;
                    this.a.G.d(new ViewPropertyAnimatorAdapterAlpha(this));
                    break;
                }
            default:
                AppCompatDelegateImpl jwVar3 = this.a;
                if ((jwVar3.D & 1) != 0) {
                    jwVar3.y(0);
                }
                AppCompatDelegateImpl jwVar4 = this.a;
                if ((jwVar4.D & 4096) != 0) {
                    jwVar4.y(108);
                }
                AppCompatDelegateImpl jwVar5 = this.a;
                jwVar5.C = false;
                jwVar5.D = 0;
                break;
        }
    }
}
