package defpackage;

import android.os.Build;
import android.os.IBinder;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MediaSessionDeathRecipient implements IBinder.DeathRecipient {
    public MediaControllerCallbackAidlInterface a;

    public MediaSessionDeathRecipient() {
        int i = Build.VERSION.SDK_INT;
        throw null;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        throw null;
    }
}
