package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RegularImmutableBiMap extends RegularImmutableMap {
    static final RegularImmutableBiMap a = new RegularImmutableBiMap();
    final transient Object[] b;
    public final transient RegularImmutableBiMap c;
    private final transient Object d;
    private final transient int e;
    private final transient int f;

    private RegularImmutableBiMap() {
        this.d = null;
        this.b = new Object[0];
        this.e = 0;
        this.f = 0;
        this.c = this;
    }

    private RegularImmutableBiMap(Object obj, Object[] objArr, int i, RegularImmutableBiMap cryVar) {
        this.d = obj;
        this.b = objArr;
        this.e = 1;
        this.f = i;
        this.c = cryVar;
    }

    public RegularImmutableBiMap(Object[] objArr, int i) {
        this.b = objArr;
        this.f = i;
        this.e = 0;
        int j = i >= 2 ? ImmutableSet.j(NavInstructionTypeEnum) : 0;
        this.d = ImmutableMapFromEntries.d(objArr, i, j, 0);
        this.c = new RegularImmutableBiMap(ImmutableMapFromEntries.d(objArr, i, j, 1), objArr, i, this);
    }

    @Override // defpackage.RegularImmutableMap
    public final RegularImmutableMap a() {
        return this.c;
    }

    @Override // defpackage.ImmutableMapBase, java.util.Map, j$.util.Map
    public final Object get(Object obj) {
        Object m = ImmutableMapFromEntries.m(this.d, this.b, this.f, this.e, obj);
        if (ProtoCompositeMessageM == null) {
            return null;
        }
        return m;
    }

    @Override // defpackage.ImmutableMapBase
    public final ImmutableSet i() {
        return new RegularImmutableSet(this, this.b, this.e, this.f);
    }

    @Override // defpackage.ImmutableMapBase
    public final ImmutableSet j() {
        return new SingletonImmutableSet(this, new SingletonImmutableList(this.b, this.e, this.f));
    }

    @Override // java.util.Map, j$.util.Map
    public final int size() {
        return this.f;
    }
}
