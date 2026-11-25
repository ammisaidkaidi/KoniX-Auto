package defpackage;

import android.app.PendingIntent;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.PlaybackStateCompat;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface MediaSessionImplInterface {
    MediaSessionCompatInnerHelper a();

    MediaSessionCompat$Token b();

    void c();

    void d(boolean z);

    void e(MediaSessionCompatInnerHelper fnVar, Handler handler);

    void f(PendingIntent pendingIntent);

    void g(MediaMetadataCompat mediaMetadataCompat);

    void h(PlaybackStateCompat playbackStateCompat);

    void i(int i);

    void j(int i);

    boolean k();

    void l();

    void m();
}
