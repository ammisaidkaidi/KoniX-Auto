package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ExtensionRegistryEntry {
    private final Object a;
    private final int b;

    public ExtensionRegistryEntry(Object obj, int i) {
        this.a = obj;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ExtensionRegistryEntry)) {
            return false;
        }
        ExtensionRegistryEntry dcyVar = (ExtensionRegistryEntry) obj;
        return this.a == dcyVar.a && this.b == dcyVar.b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.a) * 65535) + this.b;
    }
}
