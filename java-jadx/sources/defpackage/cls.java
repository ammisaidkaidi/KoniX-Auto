package defpackage;

import android.os.Process;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class cls extends Thread {
    final clz a;
    final /* synthetic */ clv b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cls(clv clvVar, String str, clz clzVar) {
        super(str);
        this.b = clvVar;
        this.a = clzVar;
    }

    public abstract void a();

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            Process.setThreadPriority(-19);
            a();
        } finally {
            this.b.a(this);
        }
    }
}
