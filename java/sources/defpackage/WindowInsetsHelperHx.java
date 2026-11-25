package defpackage;

import android.os.Build;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WindowInsetsHelperHx {
    public final WindowInsetsCompatBaseImpl a;

    public WindowInsetsHelperHx() {
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new WindowInsetsCompatStubImpl();
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.a = new WindowInsetsCompatStubImpl();
        } else {
            this.a = new WindowInsetsCompatConsumedImpl_hy();
        }
    }

    public final AccessibilityNodeProviderHelper a() {
        return this.a.a();
    }

    @Deprecated
    public final void b(AndroidxInsetsValue ehVar) {
        this.a.c(ehVar);
    }

    public WindowInsetsHelperHx(AccessibilityNodeProviderHelper ihVar) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new WindowInsetsCompatStubImpl(ihVar);
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.a = new WindowInsetsCompatStubImpl(ihVar);
        } else {
            this.a = new WindowInsetsCompatConsumedImpl_hy(ihVar);
        }
    }
}
