package defpackage;

import android.content.Context;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat$Token;
import j$.util.concurrent.ConcurrentHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MediaSessionCompatUtil {
    public final MediaSessionManagerCallbackInterface a;
    private final MediaSessionCompat$Token b;

    public MediaSessionCompatUtil(Context context, MediaSessionCompatCore fuVar) {
        new ConcurrentHashMap();
        MediaSessionCompat$Token b = fuVar.b();
        this.b = b;
        if (Build.VERSION.SDK_INT >= 29) {
            this.a = new MediaSessionCompatHelper(context, b);
        } else {
            this.a = new MediaSessionCompatHelper(context, b);
        }
    }
}
