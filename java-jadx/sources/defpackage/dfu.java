package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dfu extends AbstractList implements RandomAccess, dec {
    public final dec a;

    public dfu(dec decVar) {
        this.a = decVar;
    }

    @Override // defpackage.dec
    public final dec e() {
        return this;
    }

    @Override // defpackage.dec
    public final Object f(int i) {
        return this.a.f(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((deb) this.a).get(i);
    }

    @Override // defpackage.dec
    public final List h() {
        return this.a.h();
    }

    @Override // defpackage.dec
    public final void i(dcl dclVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new dft(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new dfs(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.size();
    }
}
