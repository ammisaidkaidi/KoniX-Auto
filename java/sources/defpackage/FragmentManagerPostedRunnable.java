package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentManagerPostedRunnable implements Runnable {
    final /* synthetic */ FragmentAnimationListener a;

    public FragmentManagerPostedRunnable(FragmentAnimationListener bcVar) {
        this.a = bcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FragmentAnimationListener bcVar = this.a;
        bcVar.b.endViewTransition(bcVar.c);
        this.a.d.b();
    }
}
