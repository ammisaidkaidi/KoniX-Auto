package defpackage;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bjc extends boh {
    final /* synthetic */ bjd a;
    private final Context b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bjc(bjd bjdVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.a = bjdVar;
        this.b = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                int b = this.a.b(this.b);
                if (bjp.c(b)) {
                    bjd bjdVar = this.a;
                    Context context = this.b;
                    bjdVar.a(context, b, bjdVar.e(context, b, "n"));
                    break;
                }
                break;
            default:
                int i = message.what;
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i);
                Log.w("GoogleApiAvailability", sb.toString());
                break;
        }
    }
}
