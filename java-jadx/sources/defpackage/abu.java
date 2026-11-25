package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class abu implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ gb b;
    final /* synthetic */ abw c;
    final /* synthetic */ abx d;
    private final /* synthetic */ int e;

    public abu(abw abwVar, abx abxVar, String str, gb gbVar, int i) {
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
                if (((abe) this.c.a.b.get(this.d.a())) == null) {
                    Log.w("MBServiceCompat", "search for callback that isn't registered query=".concat(String.valueOf(this.a)));
                    return;
                }
                String str = this.a;
                abb abbVar = new abb(str, this.b);
                abbVar.h = 4;
                abbVar.b(null);
                if (!abbVar.c()) {
                    throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=".concat(String.valueOf(str)));
                }
                return;
            default:
                if (((abe) this.c.a.b.get(this.d.a())) == null) {
                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=".concat(String.valueOf(this.a)));
                    return;
                }
                String str2 = this.a;
                aba abaVar = new aba(str2, this.b);
                abz.d(abaVar);
                if (!abaVar.c()) {
                    throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=".concat(String.valueOf(str2)));
                }
                return;
        }
    }
}
