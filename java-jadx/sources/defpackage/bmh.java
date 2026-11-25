package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class bmh {
    public Object d;
    public boolean e = false;
    final /* synthetic */ bmn f;

    public bmh(bmn bmnVar, Object obj) {
        this.f = bmnVar;
        this.d = obj;
    }

    protected abstract void b();

    protected abstract void d();

    public final void e() {
        synchronized (this) {
            this.d = null;
        }
    }

    public final void f() {
        e();
        synchronized (this.f.g) {
            this.f.g.remove(this);
        }
    }
}
