package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CodedInputStreamTagReader {
    public int a;
    public long b;
    public Object c;
    public final ExtensionRegistryLite d;

    dca() {
        this.d = ExtensionRegistryLite.a();
    }

    public CodedInputStreamTagReader(ExtensionRegistryLite dczVar) {
        if (dczVar == null) {
            throw null;
        }
        this.d = dczVar;
    }
}
