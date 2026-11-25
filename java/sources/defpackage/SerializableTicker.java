package defpackage;

import java.io.Serializable;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SerializableTicker implements Serializable, col {
    private static final long serialVersionUID = 0;
    final Object a;

    public SerializableTicker(Object obj) {
        this.a = obj;
    }

    @Override // defpackage.StopwatchTicker
    public final Object a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SerializableTicker) {
            return ew.t(this.a, ((SerializableTicker) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        StaggeredGridLayoutParams.append("Suppliers.ofInstance(");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(")");
        return StaggeredGridLayoutParams.toString();
    }
}
