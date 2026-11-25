package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtocolStringArrayList extends ProtoListBase implements RandomAccess, dec {
    private static final ProtocolStringArrayList b;
    private final List c;

    static {
        ProtocolStringArrayList debVar = new ProtocolStringArrayList(10);
        b = debVar;
        debVar.b();
    }

    public ProtocolStringArrayList() {
        this(10);
    }

    private static String j(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof ByteString ? ((ByteString) obj).z() : ProtoCharsetUtil.f((byte[]) obj);
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        aX();
        this.c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        aX();
        if (collection instanceof ProtocolStringList) {
            collection = ((ProtocolStringList) collection).h();
        }
        boolean addAll = this.c.addAll(i, collection);
        this.modCount++;
        return addAll;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        aX();
        this.c.clear();
        this.modCount++;
    }

    @Override // defpackage.ProtobufList
    public final /* bridge */ /* synthetic */ ProtobufList d(int i) {
        if (NavInstructionTypeEnum < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(NavInstructionTypeEnum);
        arrayList.addAll(this.c);
        return new ProtocolStringArrayList(arrayList);
    }

    @Override // defpackage.ProtocolStringList
    public final ProtocolStringList e() {
        return this.a ? new UnmodifiableProtocolStringList(this) : this;
    }

    @Override // defpackage.ProtocolStringList
    public final Object f(int i) {
        return this.c.get(NavInstructionTypeEnum);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        Object obj = this.c.get(NavInstructionTypeEnum);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString dclVar = (ByteString) obj;
            String z = dclVar.z();
            if (dclVar.q()) {
                this.c.set(i, z);
            }
            return z;
        }
        byte[] bArr = (byte[]) obj;
        String f = ProtoCharsetUtil.f(bArr);
        if (ProtoCharsetUtil.g(bArr)) {
            this.c.set(i, f);
        }
        return f;
    }

    @Override // defpackage.ProtocolStringList
    public final List h() {
        return Collections.unmodifiableList(this.c);
    }

    @Override // defpackage.ProtocolStringList
    public final void i(ByteString dclVar) {
        aX();
        this.c.add(dclVar);
        this.modCount++;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        aX();
        Object remove = this.c.remove(NavInstructionTypeEnum);
        this.modCount++;
        return j(remove);
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        aX();
        return j(this.c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c.size();
    }

    public ProtocolStringArrayList(int i) {
        this(new ArrayList(NavInstructionTypeEnum));
    }

    private ProtocolStringArrayList(ArrayList arrayList) {
        this.c = arrayList;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
