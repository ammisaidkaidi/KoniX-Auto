package defpackage;

import android.os.SystemClock;
import java.net.InetAddress;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bdh implements Callable {
    public final /* synthetic */ bdq a;
    private final /* synthetic */ int b;

    public /* synthetic */ bdh(bdq bdqVar, int i) {
        this.b = i;
        this.a = bdqVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Object call;
        switch (this.b) {
            case 0:
                bdh bdhVar = new bdh(this.a, 1);
                long elapsedRealtime = SystemClock.elapsedRealtime();
                while (true) {
                    call = bdhVar.call();
                    if (call == null) {
                        SystemClock.sleep(100L);
                        if (5000 + elapsedRealtime <= SystemClock.elapsedRealtime()) {
                            call = bdhVar.call();
                        }
                    }
                }
                return (InetAddress) call;
            default:
                return this.a.f();
        }
    }
}
