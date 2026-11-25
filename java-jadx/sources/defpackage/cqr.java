package defpackage;

import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cqr {
    public final List a;

    public cqr(CharSequence charSequence) {
        this.a = Collections.singletonList(charSequence);
    }

    public final void a(crv crvVar) {
        ex.o(!crvVar.b(), "range must not be empty, but was %s", crvVar);
        this.a.add(crvVar);
    }

    public cqr() {
        this.a = fv.E();
    }
}
