package defpackage;

import android.car.CarAppFocusManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.projection.protocol.GalReceiver;
import j$.util.Optional;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Deque;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class axc {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager");
    public final Deque b = new ArrayDeque();
    public GalReceiver c;
    public final Context d;
    public WeakReference e;
    final CarAppFocusManager.OnAppFocusOwnershipCallback f;
    private final PackageManager g;
    private final CarAppFocusManager h;
    private final CarAppFocusManager.OnAppFocusChangedListener i;

    public axc(Context context, PackageManager packageManager, CarAppFocusManager carAppFocusManager) {
        CarAppFocusManager.OnAppFocusChangedListener onAppFocusChangedListener = new CarAppFocusManager.OnAppFocusChangedListener() { // from class: axa
            @Override // android.car.CarAppFocusManager.OnAppFocusChangedListener
            public final void onAppFocusChanged(int i, boolean z) {
                axc axcVar = axc.this;
                synchronized (axcVar) {
                    if (!axcVar.f()) {
                        ((csx) axc.a.c().h("com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager", "handleAppFocusChange", 153, "NavigationAppFocusManager.java")).n("handleAppFocusChange called on uninitialized object");
                    }
                }
            }
        };
        this.i = onAppFocusChangedListener;
        this.e = null;
        this.d = context;
        packageManager.getClass();
        this.g = packageManager;
        carAppFocusManager.getClass();
        this.h = carAppFocusManager;
        carAppFocusManager.addFocusListener(onAppFocusChangedListener, 1);
        this.f = new axb(this);
    }

    private final synchronized void g() {
        this.h.abandonAppFocus(this.f, 1);
        this.b.pollFirst();
        this.c.nativeSetNavFocus(GalReceiver.a);
        c();
    }

    private final synchronized void h() {
        if (this.h.requestAppFocus(1, this.f) == 0) {
            ((csx) a.c().h("com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager", "requestNavFocus", 166, "NavigationAppFocusManager.java")).n("Failed to set nav app focus");
            this.c.nativeSetNavFocus(GalReceiver.a);
        }
    }

    public final synchronized void a(GalReceiver galReceiver) {
        if (f()) {
            ((csx) a.c().h("com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager", "initialize", 79, "NavigationAppFocusManager.java")).n("initialize called twice on the object");
        }
        galReceiver.getClass();
        this.c = galReceiver;
    }

    public final synchronized void b(int i) {
        WeakReference weakReference;
        awk awkVar;
        if (!f()) {
            ((csx) a.c().h("com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager", "onNavigationFocusRequest", 100, "NavigationAppFocusManager.java")).n("onNavigationFocusRequest called on uninitialized object");
            return;
        }
        ckh b = ckh.b(i);
        if (b == null) {
            return;
        }
        if (dkp.c() && ckh.NAV_FOCUS_NATIVE.equals(b) && (weakReference = this.e) != null && (awkVar = (awk) weakReference.get()) != null) {
            awn awnVar = awkVar.a;
            Bundle bundle = new Bundle();
            synchronized (awnVar.e) {
                awnVar.j = k.e.n();
                awnVar.f = Optional.empty();
                bundle.putByteArray("navstate2", ((k) awnVar.j.h()).h());
            }
            awnVar.c(bundle);
        }
        if (djl.a.a().a()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("geo:0,0"));
            if (intent.resolveActivity(this.g) == null) {
                b = ckh.NAV_FOCUS_PROJECTED;
            }
        }
        if (!this.b.isEmpty()) {
            this.b.addLast(b);
        } else {
            this.b.addLast(b);
            c();
        }
    }

    public final void c() {
        if (this.b.isEmpty()) {
            return;
        }
        if (ckh.NAV_FOCUS_PROJECTED.equals(this.b.getFirst())) {
            h();
        } else {
            g();
        }
    }

    public final synchronized void d() {
        this.h.abandonAppFocus(this.f);
        this.h.removeFocusListener(this.i);
    }

    public final synchronized boolean e() {
        return this.h.isOwningFocus(this.f, 1);
    }

    public final synchronized boolean f() {
        return this.c != null;
    }
}
