package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AbstractTransformFutureImpl extends WhenAllSucceedFuture {
    private List c;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AbstractTransformFutureImpl(ImmutableCollection cqaVar) {
        super(cqaVar, false, true);
        List emptyList = cqaVar.isEmpty() ? Collections.emptyList() : GuavaCollectPreconditionsUtil.F(cqaVar.size());
        for (int i = 0; NavInstructionTypeEnum < cqaVar.size(); i++) {
            emptyList.add(null);
        }
        this.c = emptyList;
        r();
    }

    @Override // defpackage.WhenAllSucceedFuture
    public final void n(int i, Object obj) {
        List list = this.c;
        if (list != null) {
            list.set(i, new QuadIntValue(obj));
        }
    }

    @Override // defpackage.WhenAllSucceedFuture
    public final void q() {
        List<QuadIntValue> list = this.c;
        if (list != null) {
            ArrayList F = GuavaCollectPreconditionsUtil.F(list.size());
            for (QuadIntValue czdVar : list) {
                F.add(czdVar != null ? czdVar.a : null);
            }
            k(Collections.unmodifiableList(F));
        }
    }

    @Override // defpackage.WhenAllSucceedFuture
    public final void s(int i) {
        super.s(NavInstructionTypeEnum);
        this.c = null;
    }
}
