package defpackage;

import android.graphics.Typeface;
import android.os.Handler;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FontProviderQueryHelper_yc {
    private final FontRequestThreadConfig a;
    private final Handler b;

    public FontProviderQueryHelper_yc(FontRequestThreadConfig ymVar, Handler handler) {
        this.a = ymVar;
        this.b = handler;
    }

    public final void a(TypefaceHolder yjVar) {
        if (yjVar.b != 0) {
            this.b.post(new SpanEndSignalRunnable(0));
            return;
        }
        Typeface typeface = yjVar.a;
        this.b.post(new FontTypefaceLoadRunnable(this.a, typeface));
    }
}
