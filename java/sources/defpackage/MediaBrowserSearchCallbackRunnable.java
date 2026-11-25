package defpackage;

import android.os.Parcel;
import android.support.v4.media.MediaBrowserCompat$MediaItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserSearchCallbackRunnable extends MediaBrowserCallbackRunnableBase {
    final /* synthetic */ MediaBrowserCallbackRegistry a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public MediaBrowserSearchCallbackRunnable(Object obj, MediaBrowserCallbackRegistry abpVar) {
        super(obj);
        this.a = abpVar;
    }

    @Override // defpackage.MediaBrowserCallbackRunnableBase
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem = (MediaBrowserCompat$MediaItem) obj;
        if (mediaBrowserCompat$MediaItem == null) {
            this.a.a(null);
            return;
        }
        Parcel obtain = Parcel.obtain();
        mediaBrowserCompat$MediaItem.writeToParcel(obtain, 0);
        this.a.a(obtain);
    }
}
