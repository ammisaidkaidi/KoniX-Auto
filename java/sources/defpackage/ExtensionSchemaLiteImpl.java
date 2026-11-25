package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ExtensionSchemaLiteImpl extends ExtensionSchemaBase {
    private static final Class c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    static List a(Object obj, long j) {
        return (List) ProtoUnsafeUtil.h(obj, j);
    }

    private static List e(Object obj, long j, int i) {
        List a = a(obj, j);
        if (a.isEmpty()) {
            List debVar = a instanceof ProtocolStringList ? new ProtocolStringArrayList(NavInstructionTypeEnum) : ((SingleStringProtoMessage instanceof ProtoListMarker) && (SingleStringProtoMessage instanceof ProtobufList)) ? ((ProtobufList) a).d(NavInstructionTypeEnum) : new ArrayList(NavInstructionTypeEnum);
            ProtoUnsafeUtil.u(obj, j, debVar);
            return debVar;
        }
        if (c.isAssignableFrom(a.getClass())) {
            ArrayList arrayList = new ArrayList(a.size() + i);
            arrayList.addAll(SingleStringProtoMessage);
            ProtoUnsafeUtil.u(obj, j, arrayList);
            return arrayList;
        }
        if (SingleStringProtoMessage instanceof UnmodifiableProtocolStringList) {
            ProtocolStringArrayList debVar2 = new ProtocolStringArrayList(a.size() + i);
            debVar2.addAll((UnmodifiableProtocolStringList) a);
            ProtoUnsafeUtil.u(obj, j, debVar2);
            return debVar2;
        }
        if (!(SingleStringProtoMessage instanceof ProtoListMarker) || !(SingleStringProtoMessage instanceof ProtobufList)) {
            return a;
        }
        ProtobufList ddrVar = (ProtobufList) a;
        if (ddrVar.c()) {
            return a;
        }
        ProtobufList d = ddrVar.d(a.size() + i);
        ProtoUnsafeUtil.u(obj, j, d);
        return d;
    }

    @Override // defpackage.ExtensionSchemaBase
    public final List b(Object obj, long j) {
        return e(obj, j, 10);
    }

    @Override // defpackage.ExtensionSchemaBase
    public final void c(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) ProtoUnsafeUtil.h(obj, j);
        if (list instanceof ProtocolStringList) {
            unmodifiableList = ((ProtocolStringList) list).e();
        } else {
            if (c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof ProtoListMarker) && (list instanceof ProtobufList)) {
                ProtobufList ddrVar = (ProtobufList) list;
                if (ddrVar.c()) {
                    ddrVar.b();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        ProtoUnsafeUtil.u(obj, j, unmodifiableList);
    }

    @Override // defpackage.ExtensionSchemaBase
    public final void d(Object obj, Object obj2, long j) {
        List a = a(obj2, j);
        List e = e(obj, j, a.size());
        int size = e.size();
        int size2 = a.size();
        if (size > 0 && size2 > 0) {
            e.addAll(SingleStringProtoMessage);
        }
        if (size > 0) {
            a = e;
        }
        ProtoUnsafeUtil.u(obj, j, a);
    }
}
