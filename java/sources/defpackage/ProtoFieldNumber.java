package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoFieldNumber implements Comparable {
    public final ProtoFieldType c;
    public final ProtoMarkerInterface a = null;
    final int b = 334728578;
    final boolean d = false;

    public ProtoFieldNumber(ProtoFieldType dgcVar) {
        this.c = dgcVar;
    }

    public final ProtoJavaType a() {
        return this.c.s;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        int i = ((ProtoFieldNumber) obj).b;
        return 0;
    }
}
