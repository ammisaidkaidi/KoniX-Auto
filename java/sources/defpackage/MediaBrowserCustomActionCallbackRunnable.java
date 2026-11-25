package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserCustomActionCallbackRunnable extends MediaBrowserCallbackRunnableBase {
    final /* synthetic */ MediaBrowserCallbackRegistry a;
    final /* synthetic */ Bundle b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public MediaBrowserCustomActionCallbackRunnable(Object obj, MediaBrowserCallbackRegistry abpVar, Bundle bundle) {
        super(obj);
        this.a = abpVar;
        this.b = bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.MediaBrowserCallbackRunnableBase
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        if (obj == 0) {
            this.a.a(null);
            return;
        }
        List<MediaBrowserCompat$MediaItem> list = obj;
        if ((this.h & 1) != 0) {
            list = MediaBrowserServiceCompat.a(obj, this.b);
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem : list) {
            Parcel obtain = Parcel.obtain();
            mediaBrowserCompat$MediaItem.writeToParcel(obtain, 0);
            arrayList.add(obtain);
        }
        this.a.a(arrayList);
    }
}
