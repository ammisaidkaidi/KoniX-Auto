package defpackage;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PerfettoTraceTrigger {
    static final long a = TimeUnit.MINUTES.toMillis(1);
    private final GuavaStopwatch d;
    private volatile Process e;
    public volatile boolean c = false;
    public final GuavaFunction b = new GuavaFunction() { // from class: bwu
        @Override // defpackage.GuavaFunction
        public final Object a(Object obj) {
            try {
                return new ProcessBuilder("/system/bin/trigger_perfetto", (String) obj).start();
            } catch (IOException e) {
                PerfettoTraceTrigger.this.c = true;
                return null;
            }
        }
    };

    public PerfettoTraceTrigger(StackClassGetterBase corVar) {
        this.d = GuavaStopwatch.b(corVar);
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
            GuavaStopwatch cokVar = this.d;
            if (cokVar.b && cokVar.a(TimeUnit.MILLISECONDS) < a) {
                return;
            }
            GuavaStopwatch cokVar2 = this.d;
            cokVar2.c = 0L;
            cokVar2.b = false;
            cokVar2.c();
            this.e = (Process) this.b.a(str);
        }
    }
}
