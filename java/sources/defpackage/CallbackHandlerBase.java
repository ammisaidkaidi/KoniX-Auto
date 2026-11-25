package defpackage;

import android.os.Handler;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CallbackHandlerBase extends Handler {
    public CallbackHandlerBase() {
    }

    public CallbackHandlerBase(Looper looper) {
        super(looper);
    }

    public CallbackHandlerBase(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }
}
