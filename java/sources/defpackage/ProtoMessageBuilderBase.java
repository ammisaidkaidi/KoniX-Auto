package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ProtoMessageBuilderBase implements MessageLiteBuilder {
    public static void d(Iterable iterable, List list) {
        ProtoCharsetUtil.h(iterable);
        if (iterable instanceof ProtocolStringList) {
            List h = ((ProtocolStringList) iterable).h();
            ProtocolStringList decVar = (ProtocolStringList) list;
            int size = list.size();
            for (Object obj : h) {
                if (obj == null) {
                    int size2 = decVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    StaggeredGridLayoutParams.append("Element at index ");
                    StaggeredGridLayoutParams.append(size2 - size);
                    StaggeredGridLayoutParams.append(" is null.");
                    String sb2 = StaggeredGridLayoutParams.toString();
                    for (int size3 = decVar.size() - 1; size3 >= size; size3--) {
                        decVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                }
                if (obj instanceof ByteString) {
                    decVar.i((ByteString) obj);
                } else {
                    decVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof ProtoListMarker) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
        }
        int size4 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                int size5 = list.size();
                StringBuilder sb3 = new StringBuilder(37);
                sb3.append("Element at index ");
                sb3.append(size5 - size4);
                sb3.append(" is null.");
                String sb4 = sb3.toString();
                for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                    list.remove(size6);
                }
                throw new NullPointerException(sb4);
            }
            list.add(obj2);
        }
    }

    @Override // 
    /* renamed from: a */
    public abstract ProtoMessageBuilderBase clone();

    protected abstract ProtoMessageBuilderBase b(ProtoMessageLiteBase dbvVar);

    @Override // defpackage.MessageLiteBuilder
    public final /* bridge */ /* synthetic */ MessageLiteBuilder c(MessageLite derVar) {
        if (j().getClass().isInstance(derVar)) {
            return b((ProtoMessageLiteBase) derVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
