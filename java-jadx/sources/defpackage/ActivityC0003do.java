package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;

/* compiled from: PG */
/* renamed from: do, reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public class ActivityC0003do extends Activity implements zq, gr {
    private final zn ey = new zn(this);

    @Override // defpackage.zq
    public zn C() {
        return this.ey;
    }

    @Override // defpackage.gr
    public final boolean aU(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            int i = hs.a;
        }
        return fw.c(this, keyEvent);
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
        aac.b(this);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        zn znVar = this.ey;
        zm zmVar = zm.CREATED;
        zn.f("markState");
        znVar.e(zmVar);
        super.onSaveInstanceState(bundle);
    }
}
