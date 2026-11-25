package defpackage;

import java.security.PrivilegedAction;

/* compiled from: PG */
/* loaded from: classes.dex */
final class IcuResourceBundleAction implements PrivilegedAction {
    final /* synthetic */ Class a;
    final /* synthetic */ String b = "/android/icumessageformat/ICUConfig.properties";

    public IcuResourceBundleAction(Class cls) {
        this.a = cls;
    }

    @Override // java.security.PrivilegedAction
    public final /* bridge */ /* synthetic */ Object run() {
        return this.a.getResourceAsStream(this.b);
    }
}
