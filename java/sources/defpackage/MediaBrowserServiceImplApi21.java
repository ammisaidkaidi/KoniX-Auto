package defpackage;

import android.content.Context;
import android.service.media.MediaBrowserService;

/* compiled from: PG */
/* loaded from: classes.dex */
class MediaBrowserServiceImplApi21 extends MediaBrowserServiceImplBase {
    public MediaBrowserServiceImplApi21(MediaBrowserServiceCallbacks abiVar, Context context) {
        super(abiVar, context);
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadItem(String str, MediaBrowserService.Result result) {
        MediaBrowserServiceCompat.d(new MediaBrowserSearchCallbackRunnable(str, new MediaBrowserCallbackRegistry(result)));
    }
}
