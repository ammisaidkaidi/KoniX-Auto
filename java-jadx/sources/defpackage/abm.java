package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.service.media.MediaBrowserService;

/* compiled from: PG */
/* loaded from: classes.dex */
final class abm extends abk {
    final /* synthetic */ abn b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public abm(abn abnVar, Context context) {
        super(abnVar, context);
        this.b = abnVar;
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
        fu.c(bundle);
        abn abnVar = this.b;
        abnVar.e.e(new abl(str, new abp(result), bundle));
    }
}
