package defpackage;

import android.os.Handler;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MediaPlaybackStateHolder {
    public MediaSessionCompatCore c;
    public final Handler a = new Handler(Looper.getMainLooper());
    public final PlaybackStateCompatBuilder b = new PlaybackStateCompatBuilder();
    public final MediaStateCallbackHolder d = new MediaStateCallbackHolder(this);
}
