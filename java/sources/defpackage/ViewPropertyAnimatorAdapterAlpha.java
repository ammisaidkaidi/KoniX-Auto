package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ViewPropertyAnimatorAdapterAlpha extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ DelayedRunnableJk a;

    public ViewPropertyAnimatorAdapterAlpha(DelayedRunnableJk jkVar) {
        this.a = jkVar;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void b() {
        this.a.a.l.setAlpha(1.0f);
        this.a.a.G.d(null);
        this.a.a.G = null;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void c() {
        this.a.a.l.setVisibility(0);
    }
}
