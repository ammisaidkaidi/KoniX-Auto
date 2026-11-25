package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat$MediaItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class abb extends abo {
    final /* synthetic */ gb a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public abb(Object obj, gb gbVar) {
        super(obj);
        this.a = gbVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.abo
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
