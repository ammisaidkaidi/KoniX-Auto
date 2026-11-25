package defpackage;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bwv {
    static final long a = TimeUnit.MINUTES.toMillis(1);
    private final cok d;
    private volatile Process e;
    public volatile boolean c = false;
    public final cny b = new cny() { // from class: bwu
        @Override // defpackage.cny
        public final Object a(Object obj) {
            try {
                return new ProcessBuilder("/system/bin/trigger_perfetto", (String) obj).start();
            } catch (IOException e) {
                bwv.this.c = true;
                return null;
            }
        }
    };

    public bwv(cor corVar) {
        this.d = cok.b(corVar);
    }

    public final void a(String str) {
        if (str.isEmpty()) {
            return;
        }
        if (this.e != null) {
            try {
                if (this.e.exitValue() != 0) {
                    this.c = true;
                    this.e = null;
                }
            } catch (IllegalThreadStateException e) {
                return;
            }
        }
        if (this.c) {
            return;
        }
        synchronized (this) {
            cok cokVar = this.d;
            if (cokVar.b && cokVar.a(TimeUnit.MILLISECONDS) < a) {
                return;
            }
            cok cokVar2 = this.d;
            cokVar2.c = 0L;
            cokVar2.b = false;
            cokVar2.c();
            this.e = (Process) this.b.a(str);
        }
    }
}
