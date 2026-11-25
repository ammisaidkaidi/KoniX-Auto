package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ViewPropertyAnimatorAdapterEpsilon extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ DecorToolbarActionBar a;

    public ViewPropertyAnimatorAdapterEpsilon(DecorToolbarActionBar khVar) {
        this.a = khVar;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void b() {
        DecorToolbarActionBar khVar = this.a;
        khVar.m = null;
        khVar.c.requestLayout();
    }
}
