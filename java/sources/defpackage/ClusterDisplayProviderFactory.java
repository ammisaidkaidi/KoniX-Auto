package defpackage;

import android.content.Context;
import j$.util.Optional;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClusterDisplayProviderFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;

    public ClusterDisplayProviderFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    public static ClusterDisplayProvider c(Context context, Optional optional) {
        return new ClusterDisplayProvider(context, optional);
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ClusterDisplayProvider a() {
        return c(((AppContextProviderFactory) this.a).a(), (Optional) this.b.a());
    }
}
