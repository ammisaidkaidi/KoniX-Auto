package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AbsActionBarAnimatorListener implements ViewPropertyAnimatorListener {
    int a;
    final /* synthetic */ AbsActionBarView b;
    private boolean c = false;

    protected AbsActionBarAnimatorListener(AbsActionBarView mmVar) {
        this.b = mmVar;
    }

    @Override // defpackage.ViewPropertyAnimatorListener
    public final void a() {
        this.c = true;
    }

    @Override // defpackage.ViewPropertyAnimatorListener
    public final void b() {
        if (this.c) {
            return;
        }
        AbsActionBarView mmVar = this.b;
        mmVar.f = null;
        super/*android.view.ViewGroup*/.setVisibility(this.a);
    }

    @Override // defpackage.ViewPropertyAnimatorListener
    public final void c() {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.c = false;
    }

    public final void d(WeakViewAnimator bewVar, int i) {
        this.b.f = bewVar;
        this.a = i;
    }
}
