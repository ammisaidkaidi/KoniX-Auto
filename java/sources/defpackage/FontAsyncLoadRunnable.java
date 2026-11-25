package defpackage;

import android.os.Handler;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FontAsyncLoadRunnable implements Runnable {
    private final Callable a;
    private final SimpleCallbackInterfaceGc b;
    private final Handler c;

    public FontAsyncLoadRunnable(Handler handler, Callable callable, SimpleCallbackInterfaceGc gcVar) {
        this.a = callable;
        this.b = gcVar;
        this.c = handler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TypefaceHolder yjVar;
        try {
            yjVar = ((FontFamilyCallable) this.a).call();
        } catch (Exception e) {
            yjVar = null;
        }
        this.c.post(new FontCallbackDispatchRunnable(this.b, yjVar));
    }
}
