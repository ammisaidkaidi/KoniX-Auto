package defpackage;

import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RangeSetBuilder {
    public final List a;

    public RangeSetBuilder(CharSequence charSequence) {
        this.a = Collections.singletonList(charSequence);
    }

    public final void a(GuavaRange crvVar) {
        ex.o(!crvVar.b(), "range must not FrameworkTransitionWrapper empty, but was %s", crvVar);
        this.a.add(crvVar);
    }

    public RangeSetBuilder() {
        this.a = GuavaCollectPreconditionsUtil.E();
    }
}
