package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentManagerRunnable implements Runnable {
    final /* synthetic */ FragmentManagerImpl a;

    public FragmentManagerRunnable(FragmentManagerImpl crVar) {
        this.a = crVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.Z(true);
    }
}
