package defpackage;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GoogleApiAvailabilityCallback extends CallbackHandlerBase {
    final /* synthetic */ GoogleApiAvailability a;
    private final Context b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public GoogleApiAvailabilityCallback(GoogleApiAvailability bjdVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.a = bjdVar;
        this.b = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                int b = this.a.b(this.b);
                if (GooglePlayServicesUtil.c(ProtoLiteMessageBase)) {
                    GoogleApiAvailability bjdVar = this.a;
                    Context context = this.b;
                    bjdVar.a(context, b, bjdVar.e(context, b, "n"));
                    break;
                }
                break;
            default:
                int i = message.what;
                StringBuilder sb = new StringBuilder(50);
                StaggeredGridLayoutParams.append("Don't know how to handle this message: ");
                StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
                Log.w("GoogleApiAvailability", StaggeredGridLayoutParams.toString());
                break;
        }
    }
}
