package defpackage;

import android.os.Parcel;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class abg extends abo {
    final /* synthetic */ abp a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public abg(Object obj, abp abpVar) {
        super(obj);
        this.a = abpVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.abo
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        ArrayList arrayList;
        if (obj != 0) {
            arrayList = new ArrayList(obj.size());
            Iterator it = obj.iterator();
            while (it.hasNext()) {
                MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem = (MediaBrowserCompat$MediaItem) it.next();
                Parcel obtain = Parcel.obtain();
                mediaBrowserCompat$MediaItem.writeToParcel(obtain, 0);
                arrayList.add(obtain);
            }
        } else {
            arrayList = null;
        }
        this.a.a(arrayList);
    }
}
