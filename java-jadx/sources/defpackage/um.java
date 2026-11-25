package defpackage;

import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class um extends uo implements Iterator {
    final /* synthetic */ up a;
    private ul b;
    private boolean c = true;

    public um(up upVar) {
        this.a = upVar;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Map.Entry next() {
        ul ulVar;
        if (this.c) {
            this.c = false;
            ulVar = this.a.b;
        } else {
            ul ulVar2 = this.b;
            ulVar = ulVar2 != null ? ulVar2.c : null;
        }
        this.b = ulVar;
        return this.b;
    }

    @Override // defpackage.uo
    public final void aK(ul ulVar) {
        ul ulVar2 = this.b;
        if (ulVar == ulVar2) {
            ul ulVar3 = ulVar2.d;
            this.b = ulVar3;
            this.c = ulVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.c) {
            return this.a.b != null;
        }
        ul ulVar = this.b;
        return (ulVar == null || ulVar.c == null) ? false : true;
    }
}
