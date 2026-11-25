package defpackage;

import android.content.Context;
import android.service.media.MediaBrowserService;

/* compiled from: PG */
/* loaded from: classes.dex */
class abk extends abh {
    public abk(abi abiVar, Context context) {
        super(abiVar, context);
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadItem(String str, MediaBrowserService.Result result) {
        abz.d(new abj(str, new abp(result)));
    }
}
