package defpackage;

import android.os.IBinder;
import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserConnectionRecord implements IBinder.DeathRecipient {
    public final String a;
    public final int b;
    public final int c;
    public final HashMap d = new HashMap();
    public MediaBrowserRootHints e;
    final /* synthetic */ MediaBrowserServiceCompat f;
    public final MediaBrowserDetachedReceiverHolder g;

    public MediaBrowserConnectionRecord(MediaBrowserServiceCompat abzVar, String str, int i, int i2, MediaBrowserDetachedReceiverHolder abxVar) {
        this.f = abzVar;
        this.a = str;
        this.b = i;
        this.c = i2;
        new GmsPackageNameValidator(str, i, i2);
        this.g = abxVar;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.f.c.post(new MediaBrowserDisconnectRunnable(this));
    }
}
