package defpackage;

import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class zh {
    public final int a;
    public final Method b;

    public zh(int i, Method method) {
        this.a = i;
        this.b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zh)) {
            return false;
        }
        zh zhVar = (zh) obj;
        return this.a == zhVar.a && this.b.getName().equals(zhVar.b.getName());
    }

    public final int hashCode() {
        return (this.a * 31) + this.b.getName().hashCode();
    }
}
