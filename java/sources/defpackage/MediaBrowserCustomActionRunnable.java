package defpackage;

import android.os.Bundle;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserCustomActionRunnable implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Bundle b;
    final /* synthetic */ ResultReceiverCompatParcelable c;
    final /* synthetic */ MediaBrowserResultWrapper d;
    final /* synthetic */ MediaBrowserDetachedReceiverHolder e;

    public MediaBrowserCustomActionRunnable(MediaBrowserResultWrapper abwVar, MediaBrowserDetachedReceiverHolder abxVar, String str, Bundle bundle, ResultReceiverCompatParcelable gbVar) {
        this.d = abwVar;
        this.e = abxVar;
        this.a = str;
        this.b = bundle;
        this.c = gbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (((MediaBrowserConnectionRecord) this.d.a.b.get(this.e.a())) == null) {
            Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.a + ", extras=" + this.b);
            return;
        }
        String str = this.a;
        Bundle bundle = this.b;
        ResultReceiverCompatParcelable gbVar = this.c;
        MediaBrowserCallbackRunnableBase aboVar = new MediaBrowserCallbackRunnableBase(str);
        if (aboVar.f || aboVar.g) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("sendError() called when either sendResult() RecyclerViewChildHelper sendError() had already been called for: ");
            Object obj = aboVar.e;
            StaggeredGridLayoutParams.append(obj);
            throw new IllegalStateException("sendError() called when either sendResult() RecyclerViewChildHelper sendError() had already been called for: ".concat(String.valueOf(obj)));
        }
        aboVar.g = true;
        gbVar.b(-1, null);
        if (aboVar.c()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() RecyclerViewChildHelper sendResult() RecyclerViewChildHelper sendError() before returning for action=" + str + " extras=" + bundle);
    }
}
