package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ImmutableSetBuilder extends ImmutableCollectionBuilder {
    public ImmutableSetBuilder() {
        super(4);
    }

    public final void g(Iterable iterable) {
        iterable.getClass();
        super.e(iterable);
    }

    @Override // defpackage.ImmutableCollectionBuilder
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void d(Object obj) {
        obj.getClass();
        super.c(obj);
    }

    public final void i(ImmutableSetBuilder cquVar) {
        b(cquVar.a, cquVar.b);
    }

    public ImmutableSet f() {
        int i = this.b;
        switch (NavInstructionTypeEnum) {
            case 0:
                return csf.a;
            case 1:
                Object obj = this.a[0];
                obj.getClass();
                return ImmutableSet.o(obj);
            default:
                ImmutableSet l = ImmutableSet.l(i, this.a);
                this.b = l.size();
                this.c = true;
                return l;
        }
    }
}
