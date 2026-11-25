package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class xv {
    public boolean a;
    public xu b;
    public boolean c;

    public final void a(xu xuVar) {
        synchronized (this) {
            while (this.c) {
                try {
                    wait();
                } catch (InterruptedException e) {
                }
            }
            if (this.b == xuVar) {
                return;
            }
            this.b = xuVar;
            if (this.a && xuVar != null) {
                xuVar.a();
            }
        }
    }
}
