package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
final class StingContextFactory implements ViewModelFactory {
    final /* synthetic */ Context a;

    public StingContextFactory(Context context) {
        this.a = context;
    }

    @Override // defpackage.ViewModelFactory
    public final ViewModelBase a() {
        return new StingMainThreadComponent(new DaggerMultiProvider(((StingFragmentScopeInterface) CommonObjectsAndPreconditionsUtil.s(CommonObjectsAndPreconditionsUtil.r(this.a.getApplicationContext()), StingFragmentScopeInterface.class)).k().a));
    }
}
