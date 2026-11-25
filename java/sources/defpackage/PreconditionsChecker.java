package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PreconditionsChecker {
    public final TaskImpl a = new TaskImpl();

    public final void a(Object obj) {
        this.a.j(obj);
    }

    public final boolean b(Exception exc) {
        TaskImpl broVar = this.a;
        ThreadAndNullChecksUtil.m(exc, "Exception must not be null");
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
        TaskImpl broVar = this.a;
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
