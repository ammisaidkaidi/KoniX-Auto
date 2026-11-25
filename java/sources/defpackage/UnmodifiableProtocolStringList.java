package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class UnmodifiableProtocolStringList extends AbstractList implements RandomAccess, dec {
    public final ProtocolStringList a;

    public UnmodifiableProtocolStringList(ProtocolStringList decVar) {
        this.a = decVar;
    }

    @Override // defpackage.ProtocolStringList
    public final ProtocolStringList e() {
        return this;
    }

    @Override // defpackage.ProtocolStringList
    public final Object f(int i) {
        return this.a.f(NavInstructionTypeEnum);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((ProtocolStringArrayList) this.a).get(NavInstructionTypeEnum);
    }

    @Override // defpackage.ProtocolStringList
    public final List h() {
        return this.a.h();
    }

    @Override // defpackage.ProtocolStringList
    public final void i(ByteString dclVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new ProtocolStringListPlainIterator(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new ProtocolStringListIterator(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.size();
    }
}
