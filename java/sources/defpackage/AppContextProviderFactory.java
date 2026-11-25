package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppContextProviderFactory implements DaggerProvider {
    private final AppContextModule a;

    public AppContextProviderFactory(AppContextModule dhqVar) {
        this.a = dhqVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Context a() {
        return this.a.a;
    }
}
