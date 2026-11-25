package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat$MediaItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserSearchResultRunnable extends MediaBrowserCallbackRunnableBase {
    final /* synthetic */ ResultReceiverCompatParcelable a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public MediaBrowserSearchResultRunnable(Object obj, ResultReceiverCompatParcelable gbVar) {
        super(obj);
        this.a = gbVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.MediaBrowserCallbackRunnableBase
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        if ((this.h & 4) != 0 || obj == 0) {
            this.a.b(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArray("search_results", (Parcelable[]) obj.toArray(new MediaBrowserCompat$MediaItem[0]));
        this.a.b(0, bundle);
    }
}
