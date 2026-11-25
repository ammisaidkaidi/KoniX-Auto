package defpackage;

import android.app.Activity;
import android.car.hardware.CarPropertyValue;
import android.content.pm.PackageInfo;
import j$.util.function.Function;
import java.util.Collections;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class awq implements Function {
    private final /* synthetic */ int k;
    public static final /* synthetic */ awq j = new awq(9);
    public static final /* synthetic */ awq i = new awq(8);
    public static final /* synthetic */ awq h = new awq(7);
    public static final /* synthetic */ awq g = new awq(6);
    public static final /* synthetic */ awq f = new awq(5);
    public static final /* synthetic */ awq e = new awq(4);
    public static final /* synthetic */ awq d = new awq(3);
    public static final /* synthetic */ awq c = new awq(2);
    public static final /* synthetic */ awq b = new awq(1);
    public static final /* synthetic */ awq a = new awq(0);

    private /* synthetic */ awq(int i2) {
        this.k = i2;
    }

    @Override // j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.k) {
            case 0:
                return ((CarPropertyValue) obj).getValue();
            case 1:
                return obj instanceof Activity ? Activity.class : obj.getClass();
            case 2:
                return Integer.toString(((Integer) obj).intValue());
            case 3:
                Integer[] numArr = (Integer[]) obj;
                int length = numArr.length;
                int[] iArr = new int[length];
                for (int i2 = 0; i2 < length; i2++) {
                    iArr[i2] = numArr[i2].intValue();
                }
                return iArr;
            case 4:
                csz cszVar = axz.a;
                return Integer.valueOf((int) ((PackageInfo) obj).getLongVersionCode());
            case 5:
                dgq b2 = dgq.b(((bhk) obj).a);
                return b2 == null ? dgq.UNKNOWN : b2;
            case 6:
                csz cszVar2 = bah.a;
                return Integer.valueOf(((baf) obj).f);
            case 7:
                return ((cqc) obj).f();
            case 8:
                cqr cqrVar = (cqr) obj;
                cqc cqcVar = new cqc(cqrVar.a.size());
                Collections.sort(cqrVar.a, crv.a());
                Iterator it = cqrVar.a.iterator();
                crl crlVar = it instanceof crl ? (crl) it : new crl(it);
                while (crlVar.hasNext()) {
                    crv crvVar = (crv) crlVar.next();
                    while (crlVar.hasNext()) {
                        if (!crlVar.b) {
                            crlVar.c = crlVar.a.next();
                            crlVar.b = true;
                        }
                        crv crvVar2 = (crv) crlVar.c;
                        cps cpsVar = crvVar.b;
                        cps cpsVar2 = crvVar2.c;
                        cps cpsVar3 = crvVar2.b;
                        cps cpsVar4 = crvVar.c;
                        ex.p(((cpsVar.compareTo(cpsVar3) < 0 || crvVar.c.compareTo(crvVar2.c) > 0) ? crvVar2 : crvVar).b(), "Overlapping ranges not permitted but found %s overlapping %s", crvVar, crvVar2);
                        crv crvVar3 = (crv) crlVar.next();
                        cps cpsVar5 = crvVar.b;
                        cps cpsVar6 = crvVar3.b;
                        cps cpsVar7 = crvVar.c;
                        cps cpsVar8 = crvVar3.c;
                    }
                    cqcVar.g(crvVar);
                }
                cqh f2 = cqcVar.f();
                return f2.isEmpty() ? cqt.a : (((crz) f2).c == 1 && ((crv) fv.J(f2)).equals(crv.a)) ? cqt.b : new cqt(f2);
            default:
                return ((cqu) obj).f();
        }
    }

    @Override // j$.util.function.Function
    public final /* synthetic */ Function andThen(Function function) {
        switch (this.k) {
        }
        return Function.CC.$default$andThen(this, function);
    }

    @Override // j$.util.function.Function
    public final /* synthetic */ Function compose(Function function) {
        switch (this.k) {
        }
        return Function.CC.$default$compose(this, function);
    }
}
