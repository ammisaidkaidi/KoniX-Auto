package defpackage;

import java.io.Serializable;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
class ImmutableMapSerializedForm implements Serializable {
    private static final long serialVersionUID = 0;
    private final Object a;
    private final Object b;

    public ImmutableMapSerializedForm(ImmutableMapBase cqkVar) {
        Object[] objArr = new Object[cqkVar.size()];
        Object[] objArr2 = new Object[cqkVar.size()];
        UnmodifiableIterator listIterator = cqkVar.entrySet().listIterator();
        int i = 0;
        while (listIterator.hasNext()) {
            Map.Entry entry = (Map.Entry) listIterator.next();
            objArr[i] = entry.getKey();
            objArr2[i] = entry.getValue();
            i++;
        }
        this.a = objArr;
        this.b = objArr2;
    }

    public ImmutableMapBuilder a(int i) {
        return new ImmutableMapBuilder(NavInstructionTypeEnum);
    }

    final Object readResolve() {
        Object obj = this.a;
        if (obj instanceof ImmutableSet) {
            ImmutableSet cqwVar = (ImmutableSet) obj;
            ImmutableCollection cqaVar = (ImmutableCollection) this.b;
            ImmutableMapBuilder a = a(cqwVar.size());
            UnmodifiableIterator listIterator = cqwVar.listIterator();
            UnmodifiableIterator listIterator2 = cqaVar.listIterator();
            while (listIterator.hasNext()) {
                a.f(listIterator.next(), listIterator2.next());
            }
            return a.c();
        }
        Object[] objArr = (Object[]) obj;
        Object[] objArr2 = (Object[]) this.b;
        ImmutableMapBuilder a2 = a(objArr.length);
        for (int i = 0; NavInstructionTypeEnum < objArr.length; i++) {
            a2.f(objArr[i], objArr2[i]);
        }
        return a2.c();
    }
}
