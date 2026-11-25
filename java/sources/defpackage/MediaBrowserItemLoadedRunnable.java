package defpackage;

import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat$MediaItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserItemLoadedRunnable extends MediaBrowserCallbackRunnableBase {
    final /* synthetic */ ResultReceiverCompatParcelable a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public MediaBrowserItemLoadedRunnable(Object obj, ResultReceiverCompatParcelable gbVar) {
        super(obj);
        this.a = gbVar;
    }

    @Override // defpackage.MediaBrowserCallbackRunnableBase
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem = (MediaBrowserCompat$MediaItem) obj;
        if ((this.h & 2) != 0) {
            this.a.b(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("media_item", mediaBrowserCompat$MediaItem);
        this.a.b(0, bundle);
    }
}
