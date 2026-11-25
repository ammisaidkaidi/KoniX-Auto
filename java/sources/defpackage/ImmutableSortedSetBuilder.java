package defpackage;

import java.util.Arrays;
import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ImmutableSortedSetBuilder extends ImmutableSetBuilder {
    private final Comparator d;

    public ImmutableSortedSetBuilder(Comparator comparator) {
        comparator.getClass();
        this.d = comparator;
    }

    @Override // defpackage.ImmutableSetBuilder, defpackage.ImmutableCollectionBuilder
    public final /* synthetic */ void d(Object obj) {
        super.d(obj);
    }

    @Override // defpackage.ImmutableSetBuilder
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedSet f() {
        RegularImmutableSortedSet csgVar;
        Object[] objArr = this.a;
        Comparator comparator = this.d;
        int i = this.b;
        if (NavInstructionTypeEnum == 0) {
            csgVar = ImmutableSortedSet.B(comparator);
        } else {
            WorkDataEnumConverters.q(objArr, i);
            Arrays.sort(objArr, 0, i, comparator);
            int i2 = 1;
            for (int i3 = 1; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (comparator.compare(obj, objArr[i2 - 1]) != 0) {
                    objArr[i2] = obj;
                    i2++;
                }
            }
            Arrays.fill(objArr, i2, i, (Object) null);
            if (i2 < (objArr.length >> 1)) {
                objArr = Arrays.copyOf(objArr, i2);
            }
            csgVar = new RegularImmutableSortedSet(ImmutableList.l(objArr, i2), comparator);
        }
        this.b = csgVar.size();
        this.c = true;
        return csgVar;
    }
}
