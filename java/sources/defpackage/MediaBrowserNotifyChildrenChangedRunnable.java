package defpackage;

import android.os.IBinder;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserNotifyChildrenChangedRunnable implements Runnable {
    final /* synthetic */ MediaBrowserResultWrapper a;
    final /* synthetic */ MediaBrowserDetachedReceiverHolder b;
    private final /* synthetic */ int c;

    public MediaBrowserNotifyChildrenChangedRunnable(MediaBrowserResultWrapper abwVar, MediaBrowserDetachedReceiverHolder abxVar, int i) {
        this.c = i;
        this.a = abwVar;
        this.b = abxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.c) {
            case 0:
                IBinder a = this.b.a();
                MediaBrowserConnectionRecord abeVar = (MediaBrowserConnectionRecord) this.a.a.b.remove(SingleStringProtoMessage);
                if (abeVar != null) {
                    a.unlinkToDeath(abeVar, 0);
                    break;
                }
                break;
            default:
                MediaBrowserConnectionRecord abeVar2 = (MediaBrowserConnectionRecord) this.a.a.b.remove(this.b.a());
                if (abeVar2 != null) {
                    abeVar2.g.a().unlinkToDeath(abeVar2, 0);
                    break;
                }
                break;
        }
    }
}
