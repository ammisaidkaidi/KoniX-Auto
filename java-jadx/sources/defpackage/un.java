package defpackage;

import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class un extends uo implements Iterator {
    ul a;
    ul b;

    public un(ul ulVar, ul ulVar2) {
        this.a = ulVar2;
        this.b = ulVar;
    }

    private final ul d() {
        ul ulVar = this.b;
        ul ulVar2 = this.a;
        if (ulVar == ulVar2 || ulVar2 == null) {
            return null;
        }
        return b(ulVar);
    }

    public abstract ul a(ul ulVar);

    @Override // defpackage.uo
    public final void aK(ul ulVar) {
        if (this.a == ulVar && ulVar == this.b) {
            this.b = null;
            this.a = null;
        }
        ul ulVar2 = this.a;
        if (ulVar2 == ulVar) {
            this.a = a(ulVar2);
        }
        if (this.b == ulVar) {
            this.b = d();
        }
    }

    public abstract ul b(ul ulVar);

    @Override // java.util.Iterator
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final Map.Entry next() {
        ul ulVar = this.b;
        this.b = d();
        return ulVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b != null;
    }
}
