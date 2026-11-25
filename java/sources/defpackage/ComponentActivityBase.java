package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;

/* compiled from: PG */
/* renamed from: do, reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public class ComponentActivityBase extends Activity implements LifecycleOwner, gr {
    private final LifecycleRegistry ey = new LifecycleRegistry(this);

    @Override // defpackage.LifecycleOwner
    public LifecycleRegistry C() {
        return this.ey;
    }

    @Override // defpackage.SimpleListenerInterfaceGr
    public final boolean aU(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            int i = hs.a;
        }
        return WorkDataEnumConverters.c(this, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            int i = hs.a;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LifecycleReportFragment.b(this);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        LifecycleRegistry znVar = this.ey;
        LifecycleState zmVar = zm.CREATED;
        LifecycleRegistry.f("markState");
        znVar.e(zmVar);
        super.onSaveInstanceState(bundle);
    }
}
