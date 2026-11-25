package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class coc implements Serializable {
    private static final long serialVersionUID = 0;

    public static coc e(Object obj) {
        obj.getClass();
        return new cof(obj);
    }

    public abstract Object a();

    public abstract Object b(Object obj);

    public abstract Object c();

    public abstract boolean d();

    public abstract boolean equals(Object obj);

    public abstract int hashCode();
}
