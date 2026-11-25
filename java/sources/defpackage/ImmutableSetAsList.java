package defpackage;

import java.util.AbstractMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableSetAsList extends ImmutableList {
    final /* synthetic */ RegularImmutableSet a;

    public ImmutableSetAsList(RegularImmutableSet csbVar) {
        this.a = csbVar;
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        ex.v(i, this.a.c);
        RegularImmutableSet csbVar = this.a;
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
