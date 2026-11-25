package defpackage;

import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SystemAlarmCompletionRunnable implements Runnable {
    private final SystemAlarmScheduler a;
    private final Intent b;
    private final int c;

    public SystemAlarmCompletionRunnable(SystemAlarmScheduler aipVar, Intent intent, int i) {
        this.a = aipVar;
        this.b = intent;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.f(this.b, this.c);
    }
}
