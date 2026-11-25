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
public class cqz extends cqq implements crq {
    private static final long serialVersionUID = 0;
    private final transient cqw a;
    public transient cqz d;
    public transient cqw e;

    public cqz(cqk cqkVar, int i) {
        super(cqkVar, i);
        this.a = c(null);
    }

    private static cqw c(Comparator comparator) {
        return comparator == null ? csf.a : crh.B(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Invalid key count ");
            sb.append(readInt);
            throw new InvalidObjectException(sb.toString());
        }
        cqi e = cqk.e();
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
            cqu cquVar = comparator == null ? new cqu() : new crf(comparator);
            for (int i3 = 0; i3 < readInt2; i3++) {
                cquVar.d(objectInputStream.readObject());
            }
            cqw f = cquVar.f();
            if (f.size() != readInt2) {
                String valueOf = String.valueOf(readObject);
                String.valueOf(valueOf).length();
                throw new InvalidObjectException("Duplicate key-value pairs exist for key ".concat(String.valueOf(valueOf)));
            }
            e.f(readObject, f);
            i += readInt2;
        }
        try {
            cqp.a.a(this, e.c());
            try {
                cqp.b.a.set(this, Integer.valueOf(i));
                cqy.a.a(this, c(comparator));
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        } catch (IllegalArgumentException e3) {
            throw ((InvalidObjectException) new InvalidObjectException(e3.getMessage()).initCause(e3));
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        cqw cqwVar = this.a;
        objectOutputStream.writeObject(cqwVar instanceof crh ? ((crh) cqwVar).a : null);
        objectOutputStream.writeInt(((cse) a()).c);
        for (Map.Entry entry : ((cqk) a()).entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(((Collection) entry.getValue()).size());
            Iterator it = ((Collection) entry.getValue()).iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }

    public final cqw b(Object obj) {
        cqw cqwVar = (cqw) this.b.get(obj);
        cqw cqwVar2 = this.a;
        if (cqwVar != null) {
            return cqwVar;
        }
        if (cqwVar2 != null) {
            return cqwVar2;
        }
        throw new NullPointerException("Both parameters are null");
    }
}
