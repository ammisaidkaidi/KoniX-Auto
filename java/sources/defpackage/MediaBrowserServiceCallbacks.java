package defpackage;

import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import android.service.media.MediaBrowserService;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class MediaBrowserServiceCallbacks {
    final List a = new ArrayList();
    MediaBrowserService b;
    Messenger c;
    public final /* synthetic */ MediaBrowserServiceCompat d;

    public MediaBrowserServiceCallbacks(MediaBrowserServiceCompat abzVar) {
        this.d = abzVar;
    }

    public final IBinder a(Intent intent) {
        return this.b.onBind(intent);
    }
}
