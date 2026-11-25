package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cpg extends cou {
    final /* synthetic */ cpi a;
    private final Object b;
    private int c;

    public cpg(cpi cpiVar, int i) {
        this.a = cpiVar;
        this.b = cpiVar.e(i);
        this.c = i;
    }

    private final void a() {
        int i = this.c;
        if (i == -1 || i >= this.a.size() || !ew.t(this.b, this.a.e(this.c))) {
            this.c = this.a.d(this.b);
        }
    }

    @Override // defpackage.cou, java.util.Map.Entry
    public final Object getKey() {
        return this.b;
    }

    @Override // defpackage.cou, java.util.Map.Entry
    public final Object getValue() {
        Map j = this.a.j();
        if (j != null) {
            return j.get(this.b);
        }
        a();
        int i = this.c;
        if (i == -1) {
            return null;
        }
        return this.a.h(i);
    }

    @Override // defpackage.cou, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map j = this.a.j();
        if (j != null) {
            return j.put(this.b, obj);
        }
        a();
        int i = this.c;
        if (i == -1) {
            this.a.put(this.b, obj);
            return null;
        }
        Object h = this.a.h(i);
        this.a.n(this.c, obj);
        return h;
    }
}
