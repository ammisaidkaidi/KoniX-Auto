package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import defpackage.tk;
import defpackage.zl;
import defpackage.zq;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public class tk extends ActivityC0003do implements zq, aak, aex, to, tz {
    private aed ex;
    final aew g;
    public final tn h;
    public final AtomicInteger i;
    public final ty j;
    public final zn k;
    public final tp f = new tp();
    private final gs ew = new gs();

    public tk() {
        zn znVar = new zn(this);
        this.k = znVar;
        this.g = aew.a(this);
        this.h = new tn(new tg(this));
        this.i = new AtomicInteger();
        this.j = new ty(this);
        znVar.b(new zo() { // from class: androidx.activity.ComponentActivity$3
            @Override // defpackage.zo
            public final void a(zq zqVar, zl zlVar) {
                if (zlVar == zl.ON_STOP) {
                    Window window = tk.this.getWindow();
                    View peekDecorView = window != null ? window.peekDecorView() : null;
                    if (peekDecorView != null) {
                        peekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        znVar.b(new zo() { // from class: androidx.activity.ComponentActivity$4
            @Override // defpackage.zo
            public final void a(zq zqVar, zl zlVar) {
                if (zlVar == zl.ON_DESTROY) {
                    tk.this.f.b = null;
                    if (tk.this.isChangingConfigurations()) {
                        return;
                    }
                    tk.this.ai().b();
                }
            }
        });
        znVar.b(new zo() { // from class: androidx.activity.ComponentActivity$5
            @Override // defpackage.zo
            public final void a(zq zqVar, zl zlVar) {
                tk.this.k();
                tk.this.k.d(this);
            }
        });
        D().b("android:support:activity-result", new aeu() { // from class: tf
            @Override // defpackage.aeu
            public final Bundle a() {
                tk tkVar = tk.this;
                Bundle bundle = new Bundle();
                ty tyVar = tkVar.j;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(tyVar.c.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(tyVar.c.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(tyVar.e));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) tyVar.h.clone());
                bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", tyVar.a);
                return bundle;
            }
        });
        j(new tq() { // from class: te
            @Override // defpackage.tq
            public final void a() {
                tk tkVar = tk.this;
                Bundle a = tkVar.D().a("android:support:activity-result");
                if (a != null) {
                    ty tyVar = tkVar.j;
                    ArrayList<Integer> integerArrayList = a.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = a.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    tyVar.e = a.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    tyVar.a = (Random) a.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                    tyVar.h.putAll(a.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
                    for (int i = 0; i < stringArrayList.size(); i++) {
                        String str = stringArrayList.get(i);
                        if (tyVar.c.containsKey(str)) {
                            Integer num = (Integer) tyVar.c.remove(str);
                            if (!tyVar.h.containsKey(str)) {
                                tyVar.b.remove(num);
                            }
                        }
                        tyVar.b(integerArrayList.get(i).intValue(), stringArrayList.get(i));
                    }
                }
            }
        });
    }

    private void a() {
        xr.b(getWindow().getDecorView(), this);
        xs.b(getWindow().getDecorView(), this);
        ew.r(getWindow().getDecorView(), this);
    }

    @Override // defpackage.ActivityC0003do, defpackage.zq
    public final zn C() {
        return this.k;
    }

    @Override // defpackage.aex
    public final aev D() {
        return this.g.a;
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a();
        super.addContentView(view, layoutParams);
    }

    @Override // defpackage.aak
    public final aed ai() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        k();
        return this.ex;
    }

    public final void j(tq tqVar) {
        tp tpVar = this.f;
        if (tpVar.b != null) {
            Context context = tpVar.b;
            tqVar.a();
        }
        tpVar.a.add(tqVar);
    }

    public final void k() {
        if (this.ex == null) {
            tj tjVar = (tj) getLastNonConfigurationInstance();
            if (tjVar != null) {
                this.ex = tjVar.a;
            }
            if (this.ex == null) {
                this.ex = new aed(null);
            }
        }
    }

    @Override // android.app.Activity
    @Deprecated
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.j.e(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.h.a();
    }

    @Override // defpackage.ActivityC0003do, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.g.b(bundle);
        tp tpVar = this.f;
        tpVar.b = this;
        Iterator it = tpVar.a.iterator();
        while (it.hasNext()) {
            ((tq) it.next()).a();
        }
        super.onCreate(bundle);
        aac.b(this);
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        gs gsVar = this.ew;
        getMenuInflater();
        Iterator it = gsVar.a.iterator();
        while (it.hasNext()) {
            ((gt) it.next()).a();
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (super.onOptionsItemSelected(menuItem)) {
            return true;
        }
        Iterator it = this.ew.a.iterator();
        while (it.hasNext()) {
            if (((gt) it.next()).b()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.j.e(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        tj tjVar;
        aed aedVar = this.ex;
        if (aedVar == null && (tjVar = (tj) getLastNonConfigurationInstance()) != null) {
            aedVar = tjVar.a;
        }
        if (aedVar == null) {
            return null;
        }
        tj tjVar2 = new tj();
        tjVar2.a = aedVar;
        return tjVar2;
    }

    @Override // defpackage.ActivityC0003do, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        zn znVar = this.k;
        if (znVar instanceof zn) {
            znVar.e(zm.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.g.c(bundle);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        a();
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        a();
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a();
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            boolean z = false;
            if (Build.VERSION.SDK_INT >= 29) {
                z = afo.a();
            } else {
                try {
                    if (afo.b == null) {
                        afo.a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                        afo.b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                    }
                    z = ((Boolean) afo.b.invoke(null, Long.valueOf(afo.a))).booleanValue();
                } catch (Exception e) {
                    if (e instanceof InvocationTargetException) {
                        Throwable cause = e.getCause();
                        if (!(cause instanceof RuntimeException)) {
                            throw new RuntimeException(cause);
                        }
                        throw ((RuntimeException) cause);
                    }
                }
            }
            if (z) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
        } finally {
            Trace.endSection();
        }
    }
}
