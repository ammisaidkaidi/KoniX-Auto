package defpackage;

import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat$MediaItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aba extends abo {
    final /* synthetic */ gb a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aba(Object obj, gb gbVar) {
        super(obj);
        this.a = gbVar;
    }

    @Override // defpackage.abo
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
