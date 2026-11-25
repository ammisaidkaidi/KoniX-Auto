package defpackage;

import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LooperHandlerFactoryBuilder {
    public ViewCompatApi26Statics a;
    private Looper b;

    public final LooperHandlerHolder a() {
        if (this.a == null) {
            this.a = new ViewCompatApi26Statics();
        }
        if (this.b == null) {
            this.b = Looper.getMainLooper();
        }
        return new LooperHandlerHolder(this.a, this.b, null);
    }
}
