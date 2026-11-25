package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ContextProviderFactory_axu implements DaggerProvider {
    private final DaggerProviderInterface a;

    public ContextProviderFactory_axu(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    public static AppContextModule c(Context context) {
        return new AppContextModule(context, (byte[]) null, (char[]) null);
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AppContextModule a() {
        return c(((AppContextProviderFactory) this.a).a());
    }
}
