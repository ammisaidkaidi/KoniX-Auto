package defpackage;

import android.content.Context;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat$Token;
import j$.util.concurrent.ConcurrentHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class fk {
    public final fh a;
    private final MediaSessionCompat$Token b;

    public fk(Context context, fu fuVar) {
        new ConcurrentHashMap();
        MediaSessionCompat$Token b = fuVar.b();
        this.b = b;
        if (Build.VERSION.SDK_INT >= 29) {
            this.a = new fj(context, b);
        } else {
            this.a = new fj(context, b);
        }
    }
}
