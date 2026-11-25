package defpackage;

import android.os.Bundle;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AeuCallbackStub implements SavedStateProviderInterface {
    final /* synthetic */ AppCompatActivityBase_jf a;

    public AeuCallbackStub(AppCompatActivityBase_jf jfVar) {
        this.a = jfVar;
    }

    @Override // defpackage.SavedStateProviderInterface
    public final Bundle a() {
        Bundle bundle = new Bundle();
        this.a.g();
        return bundle;
    }
}
