package defpackage;

import android.os.Message;
import android.util.Log;
import java.util.concurrent.ArrayBlockingQueue;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ut extends Thread {
    public static final ut a;
    public final ArrayBlockingQueue b = new ArrayBlockingQueue(10);
    public final gf c = new gf();

    static {
        ut utVar = new ut();
        a = utVar;
        utVar.setName("AsyncLayoutInflator");
        utVar.start();
    }

    private ut() {
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                us usVar = (us) this.b.take();
                try {
                    usVar.d = usVar.a.a.inflate(usVar.c, usVar.b, false);
                } catch (RuntimeException e) {
                    Log.w("AsyncLayoutInflater", "Failed to inflate resource in the background! Retrying on the UI thread", e);
                }
                Message.obtain(usVar.a.b, 0, usVar).sendToTarget();
            } catch (InterruptedException e2) {
                Log.w("AsyncLayoutInflater", e2);
            }
        }
    }
}
