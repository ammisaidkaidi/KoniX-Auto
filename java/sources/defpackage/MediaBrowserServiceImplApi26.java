package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.service.media.MediaBrowserService;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserServiceImplApi26 extends MediaBrowserServiceImplApi21 {
    final /* synthetic */ MediaBrowserServiceCallbacksApi21 b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public MediaBrowserServiceImplApi26(MediaBrowserServiceCallbacksApi21 abnVar, Context context) {
        super(abnVar, context);
        this.b = abnVar;
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
        fu.c(bundle);
        MediaBrowserServiceCallbacksApi21 abnVar = this.b;
        abnVar.e.e(new MediaBrowserCustomActionCallbackRunnable(str, new MediaBrowserCallbackRegistry(result), bundle));
    }
}
