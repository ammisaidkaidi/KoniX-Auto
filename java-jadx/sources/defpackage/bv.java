package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bv extends tk implements xo {
    boolean b;
    boolean c;
    final ca a = new ca(new bu(this));
    final zn e = new zn(this);
    boolean d = true;

    public bv() {
        D().b("android:support:lifecycle", new aeu() { // from class: bt
            @Override // defpackage.aeu
            public final Bundle a() {
                bv bvVar = bv.this;
                bvVar.aS();
                bvVar.e.c(zl.ON_STOP);
                return new Bundle();
            }
        });
        j(new tq() { // from class: bs
            @Override // defpackage.tq
            public final void a() {
                cc ccVar = bv.this.a.a;
                ccVar.e.k(ccVar, ccVar, null);
            }
        });
    }

    private static boolean f(cr crVar, zm zmVar) {
        boolean z = false;
        for (br brVar : crVar.i()) {
            if (brVar != null) {
                if (brVar.E() != null) {
                    z |= f(brVar.z(), zmVar);
                }
                dd ddVar = brVar.Y;
                if (ddVar != null && ddVar.C().a.a(zm.STARTED)) {
                    brVar.Y.b.e(zmVar);
                    z = true;
                }
                if (brVar.ac.a.a(zm.STARTED)) {
                    brVar.ac.e(zmVar);
                    z = true;
                }
            }
        }
        return z;
    }

    public final cr aI() {
        return this.a.a();
    }

    final void aS() {
        while (f(aI(), zm.CREATED)) {
        }
    }

    final View b(View view, String str, Context context, AttributeSet attributeSet) {
        return this.a.a.e.c.onCreateView(view, str, context, attributeSet);
    }

    @Deprecated
    public void d() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String concat = String.valueOf(str).concat("  ");
        printWriter.print(concat);
        printWriter.print("mCreated=");
        printWriter.print(this.b);
        printWriter.print(" mResumed=");
        printWriter.print(this.c);
        printWriter.print(" mStopped=");
        printWriter.print(this.d);
        if (getApplication() != null) {
            aam.a(this).c(concat, printWriter);
        }
        this.a.a().B(str, fileDescriptor, printWriter, strArr);
    }

    @Override // defpackage.tk, android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        this.a.b();
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.a.b();
        super.onConfigurationChanged(configuration);
        this.a.a.e.o(configuration);
    }

    @Override // defpackage.tk, defpackage.ActivityC0003do, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e.c(zl.ON_CREATE);
        this.a.a.e.p();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        boolean onCreatePanelMenu = super.onCreatePanelMenu(0, menu);
        ca caVar = this.a;
        return onCreatePanelMenu | caVar.a.e.O(menu, getMenuInflater());
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View b = b(view, str, context, attributeSet);
        return b == null ? super.onCreateView(view, str, context, attributeSet) : b;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.a.a.e.q();
        this.e.c(zl.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        this.a.a.e.r();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        switch (i) {
            case 0:
                return this.a.a.e.P(menuItem);
            case 6:
                return this.a.a.e.N(menuItem);
            default:
                return false;
        }
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        this.a.a.e.s(z);
    }

    @Override // android.app.Activity
    protected final void onNewIntent(Intent intent) {
        this.a.b();
        super.onNewIntent(intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.a.a.e.t(menu);
            i = 0;
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected final void onPause() {
        super.onPause();
        this.c = false;
        this.a.a.e.v();
        this.e.c(zl.ON_PAUSE);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        this.a.a.e.w(z);
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.e.c(zl.ON_RESUME);
        this.a.a.e.x();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? super.onPreparePanel(0, view, menu) | this.a.a.e.Q(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // defpackage.tk, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.a.b();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    protected final void onResume() {
        this.a.b();
        super.onResume();
        this.c = true;
        this.a.c();
    }

    @Override // android.app.Activity
    protected void onStart() {
        this.a.b();
        super.onStart();
        this.d = false;
        if (!this.b) {
            this.b = true;
            this.a.a.e.n();
        }
        this.a.c();
        this.e.c(zl.ON_START);
        this.a.a.e.y();
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.a.b();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.d = true;
        aS();
        this.a.a.e.A();
        this.e.c(zl.ON_STOP);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View b = b(null, str, context, attributeSet);
        return b == null ? super.onCreateView(str, context, attributeSet) : b;
    }
}
