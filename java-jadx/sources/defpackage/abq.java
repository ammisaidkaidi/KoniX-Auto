package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class abq implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ IBinder b;
    final /* synthetic */ Bundle c;
    final /* synthetic */ abw d;
    final /* synthetic */ abx e;

    public abq(abw abwVar, abx abxVar, String str, IBinder iBinder, Bundle bundle) {
        this.d = abwVar;
        this.e = abxVar;
        this.a = str;
        this.b = iBinder;
        this.c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        abe abeVar = (abe) this.d.a.b.get(this.e.a());
        if (abeVar == null) {
            Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=".concat(String.valueOf(this.a)));
            return;
        }
        abz abzVar = this.d.a;
        String str = this.a;
        IBinder iBinder = this.b;
        Bundle bundle = this.c;
        List<gd> list = (List) abeVar.d.get(str);
        if (list == null) {
            list = new ArrayList();
        }
        for (gd gdVar : list) {
            if (iBinder == gdVar.a) {
                Object obj = gdVar.b;
                if (bundle == obj) {
                    return;
                }
                if (bundle == null) {
                    Bundle bundle2 = (Bundle) obj;
                    if (bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) {
                        return;
                    }
                } else if (obj != null) {
                    Bundle bundle3 = (Bundle) obj;
                    if (bundle.getInt("android.media.browse.extra.PAGE", -1) == bundle3.getInt("android.media.browse.extra.PAGE", -1) && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == bundle3.getInt("android.media.browse.extra.PAGE_SIZE", -1)) {
                        return;
                    }
                } else if (bundle.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) {
                    return;
                }
            }
        }
        list.add(new gd(iBinder, bundle));
        abeVar.d.put(str, list);
        aaz aazVar = new aaz(abzVar, str, abeVar, str, bundle);
        if (bundle == null) {
            abzVar.aQ(aazVar);
        } else {
            abzVar.e(aazVar);
        }
        if (aazVar.c()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + abeVar.a + " id=" + str);
    }
}
