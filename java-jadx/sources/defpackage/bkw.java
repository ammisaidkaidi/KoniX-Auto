package defpackage;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bkw extends boh {
    public bkw() {
        super(Looper.getMainLooper());
    }

    public final void a(bkj bkjVar, bki bkiVar) {
        ThreadLocal threadLocal = BasePendingResult.b;
        sendMessage(obtainMessage(1, new Pair(bkjVar, bkiVar)));
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                Pair pair = (Pair) message.obj;
                bkj bkjVar = (bkj) pair.first;
                bki bkiVar = (bki) pair.second;
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
                sb.append("Don't know how to handle message: ");
                sb.append(i);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
                return;
        }
    }

    public bkw(Looper looper) {
        super(looper);
    }
}
