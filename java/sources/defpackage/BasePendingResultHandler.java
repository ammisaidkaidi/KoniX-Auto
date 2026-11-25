package defpackage;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BasePendingResultHandler extends CallbackHandlerBase {
    public BasePendingResultHandler() {
        super(Looper.getMainLooper());
    }

    public final void a(ResultCallbackInterface bkjVar, StatusResultInterface bkiVar) {
        ThreadLocal threadLocal = BasePendingResult.b;
        sendMessage(obtainMessage(1, new Pair(bkjVar, bkiVar)));
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                Pair pair = (Pair) message.obj;
                ResultCallbackInterface bkjVar = (ResultCallbackInterface) pair.first;
                StatusResultInterface bkiVar = (StatusResultInterface) pair.second;
                try {
                    bkjVar.a(bkiVar);
                    return;
                } catch (RuntimeException e) {
                    BasePendingResult.m(bkiVar);
                    throw e;
                }
            case 2:
                ((BasePendingResult) message.obj).l(Status.b);
                return;
            default:
                int i = message.what;
                StringBuilder sb = new StringBuilder(45);
                StaggeredGridLayoutParams.append("Don't know how to handle message: ");
                StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
                Log.wtf("BasePendingResult", StaggeredGridLayoutParams.toString(), new Exception());
                return;
        }
    }

    public BasePendingResultHandler(Looper looper) {
        super(looper);
    }
}
