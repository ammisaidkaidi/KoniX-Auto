package defpackage;

import android.os.Bundle;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class abv implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Bundle b;
    final /* synthetic */ gb c;
    final /* synthetic */ abw d;
    final /* synthetic */ abx e;

    public abv(abw abwVar, abx abxVar, String str, Bundle bundle, gb gbVar) {
        this.d = abwVar;
        this.e = abxVar;
        this.a = str;
        this.b = bundle;
        this.c = gbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (((abe) this.d.a.b.get(this.e.a())) == null) {
            Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.a + ", extras=" + this.b);
            return;
        }
        String str = this.a;
        Bundle bundle = this.b;
        gb gbVar = this.c;
        abo aboVar = new abo(str);
        if (aboVar.f || aboVar.g) {
            StringBuilder sb = new StringBuilder();
            sb.append("sendError() called when either sendResult() or sendError() had already been called for: ");
            Object obj = aboVar.e;
            sb.append(obj);
            throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: ".concat(String.valueOf(obj)));
        }
        aboVar.g = true;
        gbVar.b(-1, null);
        if (aboVar.c()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }
}
