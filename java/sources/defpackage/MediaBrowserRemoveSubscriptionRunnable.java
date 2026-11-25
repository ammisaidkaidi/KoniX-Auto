package defpackage;

import android.os.IBinder;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserRemoveSubscriptionRunnable implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ IBinder b;
    final /* synthetic */ MediaBrowserResultWrapper c;
    final /* synthetic */ MediaBrowserDetachedReceiverHolder d;

    public MediaBrowserRemoveSubscriptionRunnable(MediaBrowserResultWrapper abwVar, MediaBrowserDetachedReceiverHolder abxVar, String str, IBinder iBinder) {
        this.c = abwVar;
        this.d = abxVar;
        this.a = str;
        this.b = iBinder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserConnectionRecord abeVar = (MediaBrowserConnectionRecord) this.c.a.b.get(this.d.a());
        if (abeVar == null) {
            Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=".concat(String.valueOf(this.a)));
            return;
        }
        String str = this.a;
        IBinder iBinder = this.b;
        boolean z = true;
        boolean z2 = false;
        if (iBinder != null) {
            List list = (List) abeVar.d.get(str);
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == ((AndroidxPair) it.next()).a) {
                        it.remove();
                        z2 = true;
                    }
                }
                if (list.size() == 0) {
                    abeVar.d.remove(str);
                }
                z = z2;
            } else {
                z = false;
            }
        } else if (abeVar.d.remove(str) == null) {
            z = false;
        }
        if (IcuMessageFormat) {
            return;
        }
        Log.w("MBServiceCompat", "removeSubscription called for " + this.a + " which is not subscribed");
    }
}
