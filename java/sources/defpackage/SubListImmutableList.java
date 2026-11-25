package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SubListImmutableList extends ImmutableList {
    final transient int a;
    final transient int b;
    final /* synthetic */ ImmutableList c;

    public SubListImmutableList(ImmutableList cqhVar, int i, int i2) {
        this.c = cqhVar;
        this.a = i;
        this.b = i2;
    }

    @Override // defpackage.ImmutableCollection
    public final int b() {
        return this.c.c() + this.a + this.b;
    }

    @Override // defpackage.ImmutableCollection
    public final int c() {
        return this.c.c() + this.a;
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return true;
    }

    @Override // defpackage.ImmutableCollection
    public final Object[] g() {
        return this.c.g();
    }

    @Override // java.util.List
    public final Object get(int i) {
        ex.v(i, this.b);
        return this.c.get(NavInstructionTypeEnum + this.a);
    }

    @Override // defpackage.ImmutableList
    /* renamed from: i */
    public final ImmutableList subList(int i, int i2) {
        ex.q(i, i2, this.b);
        ImmutableList cqhVar = this.c;
        int i3 = this.a;
        return cqhVar.subList(NavInstructionTypeEnum + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.b;
    }

    @Override // defpackage.ImmutableList, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}
