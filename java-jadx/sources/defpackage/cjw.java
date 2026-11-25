package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cjw {
    public final der a;
    public final dcz b;

    public cjw(der derVar, dcz dczVar) {
        if (derVar == null) {
            throw new NullPointerException("Null defaultValue");
        }
        this.a = derVar;
        if (dczVar == null) {
            throw new NullPointerException("Null extensionRegistryLite");
        }
        this.b = dczVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof cjw) {
            cjw cjwVar = (cjw) obj;
            if (this.a.equals(cjwVar.a) && this.b.equals(cjwVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public final String toString() {
        String obj = this.a.toString();
        String obj2 = this.b.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 54 + obj2.length());
        sb.append("ProtoSerializer{defaultValue=");
        sb.append(obj);
        sb.append(", extensionRegistryLite=");
        sb.append(obj2);
        sb.append("}");
        return sb.toString();
    }

    public cjw() {
    }
}
