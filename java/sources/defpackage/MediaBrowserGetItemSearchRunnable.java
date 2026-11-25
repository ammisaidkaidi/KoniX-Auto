package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserGetItemSearchRunnable implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ ResultReceiverCompatParcelable b;
    final /* synthetic */ MediaBrowserResultWrapper c;
    final /* synthetic */ MediaBrowserDetachedReceiverHolder d;
    private final /* synthetic */ int e;

    public MediaBrowserGetItemSearchRunnable(MediaBrowserResultWrapper abwVar, MediaBrowserDetachedReceiverHolder abxVar, String str, ResultReceiverCompatParcelable gbVar, int i) {
        this.e = i;
        this.c = abwVar;
        this.d = abxVar;
        this.a = str;
        this.b = gbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.e) {
            case 0:
                if (((MediaBrowserConnectionRecord) this.c.a.b.get(this.d.a())) == null) {
                    Log.w("MBServiceCompat", "search for callback that isn't registered query=".concat(String.valueOf(this.a)));
                    return;
                }
                String str = this.a;
                MediaBrowserSearchResultRunnable abbVar = new MediaBrowserSearchResultRunnable(str, this.b);
                abbVar.h = 4;
                abbVar.b(null);
                if (!abbVar.c()) {
                    throw new IllegalStateException("onSearch must call detach() RecyclerViewChildHelper sendResult() before returning for query=".concat(String.valueOf(str)));
                }
                return;
            default:
                if (((MediaBrowserConnectionRecord) this.c.a.b.get(this.d.a())) == null) {
                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=".concat(String.valueOf(this.a)));
                    return;
                }
                String str2 = this.a;
                MediaBrowserItemLoadedRunnable abaVar = new MediaBrowserItemLoadedRunnable(str2, this.b);
                MediaBrowserServiceCompat.d(abaVar);
                if (!abaVar.c()) {
                    throw new IllegalStateException("onLoadItem must call detach() RecyclerViewChildHelper sendResult() before returning for id=".concat(String.valueOf(str2)));
                }
                return;
        }
    }
}
