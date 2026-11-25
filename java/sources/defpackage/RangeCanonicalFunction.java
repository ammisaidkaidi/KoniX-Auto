package defpackage;

import android.app.Activity;
import android.car.hardware.CarPropertyValue;
import android.content.pm.PackageInfo;
import j$.util.function.Function;
import java.util.Collections;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class RangeCanonicalFunction implements Function {
    private final /* synthetic */ int k;
    public static final /* synthetic */ RangeCanonicalFunction j = new RangeCanonicalFunction(9);
    public static final /* synthetic */ RangeCanonicalFunction i = new RangeCanonicalFunction(8);
    public static final /* synthetic */ RangeCanonicalFunction h = new RangeCanonicalFunction(7);
    public static final /* synthetic */ RangeCanonicalFunction g = new RangeCanonicalFunction(6);
    public static final /* synthetic */ RangeCanonicalFunction f = new RangeCanonicalFunction(5);
    public static final /* synthetic */ RangeCanonicalFunction e = new RangeCanonicalFunction(4);
    public static final /* synthetic */ RangeCanonicalFunction d = new RangeCanonicalFunction(3);
    public static final /* synthetic */ RangeCanonicalFunction c = new RangeCanonicalFunction(2);
    public static final /* synthetic */ RangeCanonicalFunction b = new RangeCanonicalFunction(1);
    public static final /* synthetic */ RangeCanonicalFunction a = new RangeCanonicalFunction(0);

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
                FloggerLoggerFactory cszVar = axz.a;
                return Integer.valueOf((int) ((PackageInfo) obj).getLongVersionCode());
            case 5:
                ReleaseChannelEnum b2 = ReleaseChannelEnum.b(((GoogleAuthServiceBinder) obj).a);
                return b2 == null ? ReleaseChannelEnum.UNKNOWN : b2;
            case 6:
                FloggerLoggerFactory cszVar2 = bah.a;
                return Integer.valueOf(((ProjectionDeviceNotificationInfo) obj).f);
            case 7:
                return ((ImmutableListBuilder) obj).f();
            case 8:
                RangeSetBuilder cqrVar = (RangeSetBuilder) obj;
                ImmutableListBuilder cqcVar = new ImmutableListBuilder(cqrVar.a.size());
                Collections.sort(cqrVar.a, GuavaRange.a());
                Iterator it = cqrVar.a.iterator();
                PeekingIteratorImpl crlVar = it instanceof PeekingIteratorImpl ? (PeekingIteratorImpl) it : new PeekingIteratorImpl(ConstraintLayoutLayoutParams_it);
                while (crlVar.hasNext()) {
                    GuavaRange crvVar = (GuavaRange) crlVar.next();
                    while (crlVar.hasNext()) {
                        if (!crlVar.b) {
                            crlVar.c = crlVar.a.next();
                            crlVar.b = true;
                        }
                        GuavaRange crvVar2 = (GuavaRange) crlVar.c;
                        RangeCut cpsVar = crvVar.b;
                        RangeCut cpsVar2 = crvVar2.c;
                        RangeCut cpsVar3 = crvVar2.b;
                        RangeCut cpsVar4 = crvVar.c;
                        ex.p(((cpsVar.compareTo(cpsVar3) < 0 || crvVar.c.compareTo(crvVar2.c) > 0) ? crvVar2 : crvVar).b(), "Overlapping ranges not permitted but found %s overlapping %s", crvVar, crvVar2);
                        GuavaRange crvVar3 = (GuavaRange) crlVar.next();
                        RangeCut cpsVar5 = crvVar.b;
                        RangeCut cpsVar6 = crvVar3.b;
                        RangeCut cpsVar7 = crvVar.c;
                        RangeCut cpsVar8 = crvVar3.c;
                    }
                    cqcVar.g(crvVar);
                }
                ImmutableList f2 = cqcVar.f();
                return f2.isEmpty() ? cqt.a : (((ReverseImmutableList) f2).c == 1 && ((GuavaRange) GuavaCollectPreconditionsUtil.J(f2)).equals(crv.a)) ? cqt.b : new StandardForwardingSet(f2);
            default:
                return ((ImmutableSetBuilder) obj).f();
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
