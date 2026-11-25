package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class deb extends dby implements RandomAccess, dec {
    private static final deb b;
    private final List c;

    static {
        deb debVar = new deb(10);
        b = debVar;
        debVar.b();
    }

    public deb() {
        this(10);
    }

    private static String j(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof dcl ? ((dcl) obj).z() : dds.f((byte[]) obj);
    }

    @Override // defpackage.dby, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        aX();
        this.c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // defpackage.dby, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        aX();
        if (collection instanceof dec) {
            collection = ((dec) collection).h();
        }
        boolean addAll = this.c.addAll(i, collection);
        this.modCount++;
        return addAll;
    }

    @Override // defpackage.dby, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        aX();
        this.c.clear();
        this.modCount++;
    }

    @Override // defpackage.ddr
    public final /* bridge */ /* synthetic */ ddr d(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.c);
        return new deb(arrayList);
    }

    @Override // defpackage.dec
    public final dec e() {
        return this.a ? new dfu(this) : this;
    }

    @Override // defpackage.dec
    public final Object f(int i) {
        return this.c.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        Object obj = this.c.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof dcl) {
            dcl dclVar = (dcl) obj;
            String z = dclVar.z();
            if (dclVar.q()) {
                this.c.set(i, z);
            }
            return z;
        }
        byte[] bArr = (byte[]) obj;
        String f = dds.f(bArr);
        if (dds.g(bArr)) {
            this.c.set(i, f);
        }
        return f;
    }

    @Override // defpackage.dec
    public final List h() {
        return Collections.unmodifiableList(this.c);
    }

    @Override // defpackage.dec
    public final void i(dcl dclVar) {
        aX();
        this.c.add(dclVar);
        this.modCount++;
    }

    @Override // defpackage.dby, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        aX();
        Object remove = this.c.remove(i);
        this.modCount++;
        return j(remove);
    }

    @Override // defpackage.dby, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        aX();
        return j(this.c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c.size();
    }

    public deb(int i) {
        this(new ArrayList(i));
    }

    private deb(ArrayList arrayList) {
        this.c = arrayList;
    }

    @Override // defpackage.dby, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
