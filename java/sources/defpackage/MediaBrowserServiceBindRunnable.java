package defpackage;

import android.media.session.MediaSession;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat$Token;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MediaBrowserServiceBindRunnable implements Runnable {
    final /* synthetic */ MediaSessionCompat$Token a;
    final /* synthetic */ MediaBrowserServiceCallbacks b;

    public MediaBrowserServiceBindRunnable(MediaBrowserServiceCallbacks abiVar, MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.b = abiVar;
        this.a = mediaSessionCompat$Token;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCallbacks abiVar = this.b;
        MediaSessionCompat$Token mediaSessionCompat$Token = this.a;
        if (!abiVar.a.isEmpty()) {
            MediaSessionAidlInterface a = mediaSessionCompat$Token.a();
            if (SingleStringProtoMessage != null) {
                Iterator it = abiVar.a.iterator();
                while (it.hasNext()) {
                    ((Bundle) it.next()).putBinder("extra_session_binder", a.asBinder());
                }
            }
            abiVar.a.clear();
        }
        abiVar.b.setSessionToken((MediaSession.Token) mediaSessionCompat$Token.b);
    }
}
