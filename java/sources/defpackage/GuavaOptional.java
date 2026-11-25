package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class GuavaOptional implements Serializable {
    private static final long serialVersionUID = 0;

    public static GuavaOptional e(Object obj) {
        obj.getClass();
        return new PresentOptional(obj);
    }

    public abstract Object a();

    public abstract Object b(Object obj);

    public abstract Object c();

    public abstract boolean d();

    public abstract boolean equals(Object obj);

    public abstract int hashCode();
}
