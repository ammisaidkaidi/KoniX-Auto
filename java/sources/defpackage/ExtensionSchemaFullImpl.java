package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ExtensionSchemaFullImpl extends ExtensionSchemaBase {
    static ProtobufList a(Object obj, long j) {
        return (ProtobufList) ProtoUnsafeUtil.h(obj, j);
    }

    @Override // defpackage.ExtensionSchemaBase
    public final List b(Object obj, long j) {
        ProtobufList a = a(obj, j);
        if (a.c()) {
            return a;
        }
        int size = a.size();
        ProtobufList d = a.d(size == 0 ? 10 : size + size);
        ProtoUnsafeUtil.u(obj, j, d);
        return d;
    }

    @Override // defpackage.ExtensionSchemaBase
    public final void c(Object obj, long j) {
        a(obj, j).b();
    }

    @Override // defpackage.ExtensionSchemaBase
    public final void d(Object obj, Object obj2, long j) {
        ProtobufList a = a(obj, j);
        ProtobufList a2 = a(obj2, j);
        int size = a.size();
        int size2 = a2.size();
        if (size > 0 && size2 > 0) {
            if (!a.c()) {
                a = a.d(size2 + size);
            }
            a.addAll(a2);
        }
        if (size > 0) {
            a2 = a;
        }
        ProtoUnsafeUtil.u(obj, j, a2);
    }
}
