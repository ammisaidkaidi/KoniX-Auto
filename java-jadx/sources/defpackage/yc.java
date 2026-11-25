package defpackage;

import android.graphics.Typeface;
import android.os.Handler;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class yc {
    private final ym a;
    private final Handler b;

    public yc(ym ymVar, Handler handler) {
        this.a = ymVar;
        this.b = handler;
    }

    public final void a(yj yjVar) {
        if (yjVar.b != 0) {
            this.b.post(new yb(0));
            return;
        }
        Typeface typeface = yjVar.a;
        this.b.post(new ya(this.a, typeface));
    }
}
