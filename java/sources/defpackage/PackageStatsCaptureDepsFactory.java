package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PackageStatsCaptureDepsFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;

    public PackageStatsCaptureDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PackageStatsCaptureDeps a() {
        Context a = ((AppContextProviderFactory) this.a).a();
        return new PackageStatsCaptureDeps(a, this.c);
    }
}
