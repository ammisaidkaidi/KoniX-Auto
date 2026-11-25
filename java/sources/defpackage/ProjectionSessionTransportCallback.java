package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProjectionSessionTransportCallback {
    public final /* synthetic */ ProjectionSession a;

    public ProjectionSessionTransportCallback(ProjectionSession bblVar) {
        this.a = bblVar;
    }

    public /* synthetic */ bbh(ProjectionSession bblVar, byte[] bArr) {
        this.a = bblVar;
    }

    public final void a(byte[] bArr, String str) {
        ProjectionSession bblVar = this.a;
        UnmodifiableIterator listIterator = ((ImmutableHashSet) bblVar.n).listIterator();
        while (listIterator.hasNext()) {
            ((ProjectionSessionTransportCallback) listIterator.next()).a(bArr, str);
        }
        UnmodifiableIterator listIterator2 = ((EmptyImmutableSet) bblVar.o).listIterator();
        while (listIterator2.hasNext()) {
            ((SessionCallbackMarker) listIterator2.next()).a();
        }
    }
}
