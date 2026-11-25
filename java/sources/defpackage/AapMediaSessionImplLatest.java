package defpackage;

import android.content.Context;
import android.media.session.MediaSession;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AapMediaSessionImplLatest extends AapMediaSessionImplApi29 {
    public AapMediaSessionImplLatest(Context context) {
        super(context);
    }

    @Override // defpackage.AapMediaSessionImplBase
    public final MediaSession n(Context context) {
        return new MediaSession(context, "AAPMediaSession", null);
    }
}
