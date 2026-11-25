package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DisplayDimensionsFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public DisplayDimensionsFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    public static DisplayDimensions c(Context context) {
        return new DisplayDimensions(context);
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final DisplayDimensions a() {
        return c(((AppContextProviderFactory) this.a).a());
    }
}
