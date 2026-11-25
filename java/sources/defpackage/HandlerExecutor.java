package defpackage;

import android.os.Handler;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class HandlerExecutor implements Executor {
    public final /* synthetic */ Handler a;
    private final /* synthetic */ int b;

    public /* synthetic */ bld(Handler handler, int i) {
        this.b = i;
        this.a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.b) {
            case 0:
                this.a.post(runnable);
                break;
            default:
                this.a.post(runnable);
                break;
        }
    }
}
