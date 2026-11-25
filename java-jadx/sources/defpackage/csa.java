package defpackage;

import java.util.AbstractMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class csa extends cqh {
    final /* synthetic */ csb a;

    public csa(csb csbVar) {
        this.a = csbVar;
    }

    @Override // defpackage.cqa
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        ex.v(i, this.a.c);
        csb csbVar = this.a;
        Object[] objArr = csbVar.a;
        int i2 = i + i;
        int i3 = csbVar.b;
        Object obj = objArr[i2 + i3];
        obj.getClass();
        Object obj2 = objArr[i2 + (i3 ^ 1)];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.c;
    }
}
