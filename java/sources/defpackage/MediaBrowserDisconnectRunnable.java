package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserDisconnectRunnable implements Runnable {
    final /* synthetic */ MediaBrowserConnectionRecord a;

    public MediaBrowserDisconnectRunnable(MediaBrowserConnectionRecord abeVar) {
        this.a = abeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserConnectionRecord abeVar = this.a;
        abeVar.f.b.remove(abeVar.g.a());
    }
}
