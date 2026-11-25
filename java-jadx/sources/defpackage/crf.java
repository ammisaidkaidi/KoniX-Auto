package defpackage;

import java.util.Arrays;
import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class crf extends cqu {
    private final Comparator d;

    public crf(Comparator comparator) {
        comparator.getClass();
        this.d = comparator;
    }

    @Override // defpackage.cqu, defpackage.cpz
    public final /* synthetic */ void d(Object obj) {
        super.d(obj);
    }

    @Override // defpackage.cqu
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final crh f() {
        csg csgVar;
        Object[] objArr = this.a;
        Comparator comparator = this.d;
        int i = this.b;
        if (i == 0) {
            csgVar = crh.B(comparator);
        } else {
            fw.q(objArr, i);
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
            csgVar = new csg(cqh.l(objArr, i2), comparator);
        }
        this.b = csgVar.size();
        this.c = true;
        return csgVar;
    }
}
