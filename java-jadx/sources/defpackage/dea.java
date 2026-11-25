package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class dea {
    protected volatile der a;
    public volatile dcl b;

    static {
        dcz.a();
    }

    public final dcl a() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            if (this.b != null) {
                return this.b;
            }
            if (this.a == null) {
                this.b = dcl.b;
            } else {
                this.b = this.a.e();
            }
            return this.b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dea)) {
            return false;
        }
        dea deaVar = (dea) obj;
        der derVar = this.a;
        der derVar2 = deaVar.a;
        return (derVar == null && derVar2 == null) ? a().equals(deaVar.a()) : (derVar == null || derVar2 == null) ? derVar != null ? derVar.equals(deaVar.b(derVar.j())) : b(derVar2.j()).equals(derVar2) : derVar.equals(derVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final der b(der derVar) {
        if (this.a == null) {
            synchronized (this) {
                if (this.a == null) {
                    try {
                        this.a = derVar;
                        this.b = dcl.b;
                    } catch (ddu e) {
                        this.a = derVar;
                        this.b = dcl.b;
                    }
                }
            }
        }
        return this.a;
    }
}
