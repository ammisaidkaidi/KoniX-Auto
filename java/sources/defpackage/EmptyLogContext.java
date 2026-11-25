package defpackage;

import java.util.Collections;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
final class EmptyLogContext extends LogContextBase {
    @Override // defpackage.LogContextBase
    public final int a() {
        return 0;
    }

    @Override // defpackage.LogContextBase
    public final Set b() {
        return Collections.emptySet();
    }

    @Override // defpackage.LogContextBase
    public final void c(KeyValueHandlerBase cunVar, Object obj) {
    }
}
