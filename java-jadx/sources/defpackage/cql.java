package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cql implements Serializable {
    private static final long serialVersionUID = 0;
    final cqk a;

    public cql(cqk cqkVar) {
        this.a = cqkVar;
    }

    Object readResolve() {
        return this.a.entrySet();
    }
}
