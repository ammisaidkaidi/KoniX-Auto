package defpackage;

import android.content.Context;
import android.media.session.MediaSession;

/* compiled from: PG */
/* loaded from: classes.dex */
final class fs extends fr {
    public fs(Context context) {
        super(context);
    }

    @Override // defpackage.fp
    public final MediaSession n(Context context) {
        return new MediaSession(context, "AAPMediaSession", null);
    }
}
