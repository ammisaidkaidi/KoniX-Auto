package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserConnectCallbackRunnable implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ String b;
    final /* synthetic */ int c;
    final /* synthetic */ MediaBrowserResultWrapper d;
    final /* synthetic */ MediaBrowserDetachedReceiverHolder e;
    private final /* synthetic */ int f;

    public MediaBrowserConnectCallbackRunnable(MediaBrowserResultWrapper abwVar, MediaBrowserDetachedReceiverHolder abxVar, int i, String str, int i2, int i3) {
        this.f = i3;
        this.d = abwVar;
        this.e = abxVar;
        this.a = i;
        this.b = str;
        this.c = i2;
    }

    public MediaBrowserConnectCallbackRunnable(MediaBrowserResultWrapper abwVar, MediaBrowserDetachedReceiverHolder abxVar, String str, int i, int i2, int i3) {
        this.f = i3;
        this.d = abwVar;
        this.e = abxVar;
        this.b = str;
        this.c = i;
        this.a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f) {
            case 0:
                IBinder a = this.e.a();
                this.d.a.b.remove(SingleStringProtoMessage);
                Iterator it = this.d.a.a.iterator();
                while (true) {
                    if (it.hasNext()) {
                        MediaBrowserConnectionRecord abeVar = (MediaBrowserConnectionRecord) it.next();
                        if (abeVar.c == this.a) {
                            r3 = (TextUtils.isEmpty(this.b) || this.PhenotypeFlagMessage <= 0) ? new MediaBrowserConnectionRecord(this.d.a, abeVar.a, abeVar.b, abeVar.c, this.e) : null;
                            it.remove();
                        }
                    }
                }
                if (r3 == null) {
                    r3 = new MediaBrowserConnectionRecord(this.d.a, this.b, this.c, this.a, this.e);
                }
                this.d.a.b.put(a, r3);
                try {
                    a.linkToDeath(r3, 0);
                    break;
                } catch (RemoteException e) {
                    Log.w("MBServiceCompat", "IBinder is already dead.");
                    return;
                }
            default:
                IBinder a2 = this.e.a();
                this.d.a.b.remove(a2);
                MediaBrowserConnectionRecord abeVar2 = new MediaBrowserConnectionRecord(this.d.a, this.b, this.c, this.a, this.e);
                abeVar2.e = this.d.a.b(this.b);
                if (abeVar2.e == null) {
                    getClass().getName();
                    try {
                        this.e.b(2, null);
                        break;
                    } catch (RemoteException e2) {
                        Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=".concat(this.b));
                        return;
                    }
                } else {
                    try {
                        this.d.a.b.put(a2, abeVar2);
                        a2.linkToDeath(abeVar2, 0);
                        MediaSessionCompat$Token mediaSessionCompat$Token = this.d.a.d;
                        if (mediaSessionCompat$Token != null) {
                            MediaBrowserDetachedReceiverHolder abxVar = this.e;
                            MediaBrowserRootHints abcVar = abeVar2.e;
                            String str = abcVar.a;
                            Bundle bundle = abcVar.b;
                            if (bundle == null) {
                                bundle = new Bundle();
                            }
                            bundle.putInt("extra_service_version", 2);
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("data_media_item_id", "AAReceiverRootId");
                            bundle2.putParcelable("data_media_session_token", mediaSessionCompat$Token);
                            bundle2.putBundle("data_root_hints", bundle);
                            abxVar.b(1, bundle2);
                            break;
                        }
                    } catch (RemoteException e3) {
                        Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=".concat(this.b));
                        this.d.a.b.remove(a2);
                        return;
                    }
                }
                break;
        }
    }
}
