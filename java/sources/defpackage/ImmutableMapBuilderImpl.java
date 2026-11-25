package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ImmutableMapBuilderImpl extends StandardForwardingMap implements MapProvider {
    private static final long serialVersionUID = 0;
    private final transient ImmutableSet a;
    public transient ImmutableMapBuilderImpl d;
    public transient ImmutableSet e;

    public ImmutableMapBuilderImpl(ImmutableMapBase cqkVar, int i) {
        super(cqkVar, i);
        this.a = c(null);
    }

    private static ImmutableSet c(Comparator comparator) {
        return comparator == null ? csf.a : ImmutableSortedSet.B(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb = new StringBuilder(29);
            StaggeredGridLayoutParams.append("Invalid key count ");
            StaggeredGridLayoutParams.append(readInt);
            throw new InvalidObjectException(StaggeredGridLayoutParams.toString());
        }
        ImmutableMapBuilder e = ImmutableMapBase.e();
        int i = 0;
        for (int i2 = 0; i2 < readInt; i2++) {
            Object readObject = objectInputStream.readObject();
            int readInt2 = objectInputStream.readInt();
            if (readInt2 <= 0) {
                StringBuilder sb2 = new StringBuilder(31);
                sb2.append("Invalid value count ");
                sb2.append(readInt2);
                throw new InvalidObjectException(sb2.toString());
            }
            ImmutableSetBuilder cquVar = comparator == null ? new ImmutableSetBuilder() : new ImmutableSortedSetBuilder(comparator);
            for (int i3 = 0; i3 < readInt2; i3++) {
                cquVar.d(objectInputStream.readObject());
            }
            ImmutableSet f = cquVar.f();
            if (f.size() != readInt2) {
                String valueOf = String.valueOf(readObject);
                String.valueOf(valueOf).length();
                throw new InvalidObjectException("Duplicate key-value pairs exist for key ".concat(String.valueOf(valueOf)));
            }
            e.f(readObject, f);
            i += readInt2;
        }
        try {
            ImmutableMapEntryArrayBuilder.a.a(this, e.c());
            try {
                ImmutableMapEntryArrayBuilder.b.a.set(this, Integer.valueOf(NavInstructionTypeEnum));
                EmptySetHolder.a.a(this, c(comparator));
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        } catch (IllegalArgumentException e3) {
            throw ((InvalidObjectException) new InvalidObjectException(e3.getMessage()).initCause(e3));
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        ImmutableSet cqwVar = this.a;
        objectOutputStream.writeObject(cqwVar instanceof ImmutableSortedSet ? ((ImmutableSortedSet) cqwVar).a : null);
        objectOutputStream.writeInt(((ImmutableMapFromEntries) a()).c);
        for (Map.Entry entry : ((ImmutableMapBase) a()).entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(((Collection) entry.getValue()).size());
            Iterator it = ((Collection) entry.getValue()).iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }

    public final ImmutableSet b(Object obj) {
        ImmutableSet cqwVar = (ImmutableSet) this.b.get(obj);
        ImmutableSet cqwVar2 = this.a;
        if (cqwVar != null) {
            return cqwVar;
        }
        if (cqwVar2 != null) {
            return cqwVar2;
        }
        throw new NullPointerException("Both parameters are null");
    }
}
