package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ImmutableListBuilder extends ImmutableCollectionBuilder {
    public ImmutableListBuilder() {
        super(4);
    }

    @Override // defpackage.ImmutableCollectionBuilder
    public final /* synthetic */ void d(Object obj) {
        super.c(obj);
    }

    public final ImmutableList f() {
        this.c = true;
        return ImmutableList.l(this.a, this.b);
    }

    public final void g(Object obj) {
        super.c(obj);
    }

    public final void h(Iterable iterable) {
        super.e(iterable);
    }

    public final void i(Iterator it) {
        while (it.hasNext()) {
            super.c(it.next());
        }
    }

    public ImmutableListBuilder(int i) {
        super(NavInstructionTypeEnum);
    }
}
