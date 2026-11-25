package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class btx {
    public final String a;

    public btx(String str) {
        this.a = str;
    }

    public static btx a(Enum r3) {
        if (coe.d(null)) {
            return new btx(r3.name());
        }
        String valueOf = String.valueOf(r3.name());
        return new btx(valueOf.length() != 0 ? "null".concat(valueOf) : new String("null"));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof btx) {
            return this.a.equals(((btx) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }
}
