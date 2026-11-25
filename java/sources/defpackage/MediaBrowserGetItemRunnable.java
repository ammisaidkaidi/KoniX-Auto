package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserGetItemRunnable extends MediaBrowserCallbackRunnableBase {
    final /* synthetic */ MediaBrowserConnectionRecord a;
    final /* synthetic */ String b;
    final /* synthetic */ Bundle c;
    final /* synthetic */ MediaBrowserServiceCompat d;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public MediaBrowserGetItemRunnable(MediaBrowserServiceCompat abzVar, Object obj, MediaBrowserConnectionRecord abeVar, String str, Bundle bundle) {
        super(obj);
        this.d = abzVar;
        this.a = abeVar;
        this.b = str;
        this.c = bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.MediaBrowserCallbackRunnableBase
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        if (this.d.b.get(this.a.g.a()) != this.a) {
            return;
        }
        List list = obj;
        if ((this.h & 1) != 0) {
            list = MediaBrowserServiceCompat.a(obj, this.c);
        }
        try {
            MediaBrowserDetachedReceiverHolder abxVar = this.a.g;
            String str = this.b;
            Bundle bundle = this.c;
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            bundle2.putBundle("data_options", bundle);
            bundle2.putBundle("data_notify_children_changed_options", null);
            if (list != null) {
                bundle2.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            abxVar.b(3, bundle2);
        } catch (RemoteException e) {
            Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + this.b + " package=" + this.a.a);
        }
    }
}
