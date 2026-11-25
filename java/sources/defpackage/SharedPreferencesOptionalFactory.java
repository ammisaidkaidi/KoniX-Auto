package defpackage;

import android.content.SharedPreferences;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SharedPreferencesOptionalFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;

    public SharedPreferencesOptionalFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final GuavaOptional a() {
        final GuavaOptional cocVar = (GuavaOptional) ((SingleCheckProvider) this.a).a;
        ((AppContextProviderFactory) this.b).a();
        return cocVar.d() ? GuavaOptional.e(new StopwatchTicker() { // from class: cbn
            @Override // defpackage.StopwatchTicker
            public final Object a() {
                return (SharedPreferences) GuavaOptional.this.a();
            }
        }) : cns.a;
    }
}
