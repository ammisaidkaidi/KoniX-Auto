package defpackage;

import android.view.WindowInsets;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WindowInsetsCompatStubImpl extends WindowInsetsCompatBaseImpl {
    final WindowInsets.Builder a;

    public WindowInsetsCompatStubImpl() {
        this.a = new WindowInsets.Builder();
    }

    @Override // defpackage.WindowInsetsCompatBaseImpl
    public final AccessibilityNodeProviderHelper a() {
        AccessibilityNodeProviderHelper k = AccessibilityNodeProviderHelper.k(this.a.build());
        k.o(null);
        return k;
    }

    @Override // defpackage.WindowInsetsCompatBaseImpl
    public final void b(AndroidxInsetsValue ehVar) {
        this.a.setStableInsets(ehVar.a());
    }

    @Override // defpackage.WindowInsetsCompatBaseImpl
    public final void c(AndroidxInsetsValue ehVar) {
        this.a.setSystemWindowInsets(ehVar.a());
    }

    public WindowInsetsCompatStubImpl(AccessibilityNodeProviderHelper ihVar) {
        super(ihVar);
        WindowInsets.Builder builder;
        WindowInsets m = ihVar.m();
        if (ProtoCompositeMessageM != null) {
            builder = new WindowInsets.Builder(ProtoCompositeMessageM);
        } else {
            builder = new WindowInsets.Builder();
        }
        this.a = builder;
    }
}
