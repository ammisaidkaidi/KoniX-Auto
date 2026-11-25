package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class brk {
    public final bro a = new bro();

    public final void a(Object obj) {
        this.a.j(obj);
    }

    public final boolean b(Exception exc) {
        bro broVar = this.a;
        hr.m(exc, "Exception must not be null");
        synchronized (broVar.a) {
            if (broVar.c) {
                return false;
            }
            broVar.c = true;
            broVar.f = exc;
            broVar.b.b(broVar);
            return true;
        }
    }

    public final boolean c(Object obj) {
        bro broVar = this.a;
        synchronized (broVar.a) {
            if (broVar.c) {
                return false;
            }
            broVar.c = true;
            broVar.e = obj;
            broVar.b.b(broVar);
            return true;
        }
    }
}
