package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoSerializer {
    public final MessageLite a;
    public final ExtensionRegistryLite b;

    public ProtoSerializer(MessageLite derVar, ExtensionRegistryLite dczVar) {
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
        if (obj instanceof ProtoSerializer) {
            ProtoSerializer cjwVar = (ProtoSerializer) obj;
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
        StaggeredGridLayoutParams.append("ProtoSerializer{defaultValue=");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append(", extensionRegistryLite=");
        StaggeredGridLayoutParams.append(obj2);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }

    public ProtoSerializer() {
    }
}
