package defpackage;

import android.media.session.MediaSession;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat$Token;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class abf implements Runnable {
    final /* synthetic */ MediaSessionCompat$Token a;
    final /* synthetic */ abi b;

    public abf(abi abiVar, MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.b = abiVar;
        this.a = mediaSessionCompat$Token;
    }

    @Override // java.lang.Runnable
    public final void run() {
        abi abiVar = this.b;
        MediaSessionCompat$Token mediaSessionCompat$Token = this.a;
        if (!abiVar.a.isEmpty()) {
            ff a = mediaSessionCompat$Token.a();
            if (a != null) {
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
