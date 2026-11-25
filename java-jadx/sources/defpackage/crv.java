package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class crv extends crw implements Serializable {
    public static final crv a = new crv(cpr.a, cpp.a);
    private static final long serialVersionUID = 0;
    public final cps b;
    public final cps c;

    private crv(cps cpsVar, cps cpsVar2) {
        this.b = cpsVar;
        this.c = cpsVar2;
        if (cpsVar == cpp.a || cpsVar2 == cpr.a) {
            throw new IllegalArgumentException("(-∞..+∞)".length() != 0 ? "Invalid range: ".concat("(-∞..+∞)") : new String("Invalid range: "));
        }
    }

    public static crt a() {
        return cru.a;
    }

    static int c() {
        return "".compareTo("");
    }

    public final boolean b() {
        return this.b.equals(this.c);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof crv) {
            crv crvVar = (crv) obj;
            if (this.b.equals(crvVar.b) && this.c.equals(crvVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.b) * 31) + System.identityHashCode(this.c);
    }

    Object readResolve() {
        crv crvVar = a;
        return equals(crvVar) ? crvVar : this;
    }

    public final String toString() {
        return "(-∞..+∞)";
    }
}
