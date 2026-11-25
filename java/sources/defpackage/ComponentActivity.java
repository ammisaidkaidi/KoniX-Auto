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
import defpackage.ComponentActivity;
import defpackage.LifecycleEvent;
import defpackage.LifecycleOwner;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ComponentActivity extends ComponentActivityBase implements LifecycleOwner, aak, aex, to, tz {
    private ViewModelStoreWithMigrationMap ex;
    final SavedStateRegistryController g;
    public final ActivityLifecycleEventQueue h;
    public final AtomicInteger i;
    public final ActivityResultRegistry j;
    public final LifecycleRegistry k;
    public final OnBackPressedCallbackSet f = new OnBackPressedCallbackSet();
    private final CopyOnWriteListenerRegistry ew = new CopyOnWriteListenerRegistry();

    public ComponentActivity() {
        LifecycleRegistry znVar = new LifecycleRegistry(this);
        this.k = znVar;
        this.g = SavedStateRegistryController.a(this);
        this.h = new ActivityLifecycleEventQueue(new ActivityStateSavedRunnable(this));
        this.i = new AtomicInteger();
        this.j = new ActivityResultRegistry(this);
        znVar.b(new DefaultLifecycleObserverInterface() { // from class: androidx.activity.ComponentActivity$3
            @Override // defpackage.DefaultLifecycleObserverInterface
            public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
                if (zlVar == zl.ON_STOP) {
                    Window window = tk.this.getWindow();
                    View peekDecorView = window != null ? window.peekDecorView() : null;
                    if (peekDecorView != null) {
                        peekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        znVar.b(new DefaultLifecycleObserverInterface() { // from class: androidx.activity.ComponentActivity$4
            @Override // defpackage.DefaultLifecycleObserverInterface
            public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
                if (zlVar == zl.ON_DESTROY) {
                    tk.this.f.b = null;
                    if (tk.this.isChangingConfigurations()) {
                        return;
                    }
                    tk.this.ai().b();
                }
            }
        });
        znVar.b(new DefaultLifecycleObserverInterface() { // from class: androidx.activity.ComponentActivity$5
            @Override // defpackage.DefaultLifecycleObserverInterface
            public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
                tk.this.k();
                tk.this.k.d(this);
            }
        });
        D().b("android:support:activity-result", new SavedStateProviderInterface() { // from class: tf
            @Override // defpackage.SavedStateProviderInterface
            public final Bundle a() {
                ComponentActivity tkVar = tk.this;
                Bundle bundle = new Bundle();
                ActivityResultRegistry tyVar = tkVar.j;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(tyVar.c.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(tyVar.c.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(tyVar.e));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) tyVar.h.clone());
                bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", tyVar.a);
                return bundle;
            }
        });
        j(new ActivityResultLauncherCallback() { // from class: te
            @Override // defpackage.ActivityResultLauncherCallback
            public final void a() {
                ComponentActivity tkVar = tk.this;
                Bundle a = tkVar.D().a("android:support:activity-result");
                if (SingleStringProtoMessage != null) {
                    ActivityResultRegistry tyVar = tkVar.j;
                    ArrayList<Integer> integerArrayList = a.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = a.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    tyVar.e = a.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    tyVar.a = (Random) a.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                    tyVar.h.putAll(a.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
                    for (int i = 0; NavInstructionTypeEnum < stringArrayList.size(); i++) {
                        String str = stringArrayList.get(NavInstructionTypeEnum);
                        if (tyVar.c.containsKey(str)) {
                            Integer num = (Integer) tyVar.c.remove(str);
                            if (!tyVar.h.containsKey(str)) {
                                tyVar.b.remove(num);
                            }
                        }
                        tyVar.b(integerArrayList.get(NavInstructionTypeEnum).intValue(), stringArrayList.get(NavInstructionTypeEnum));
                    }
                }
            }
        });
    }

    private void a() {
        PrimesDebugEventsHelper.b(getWindow().getDecorView(), this);
        PrimesMetricTransmitter.b(getWindow().getDecorView(), this);
        ew.r(getWindow().getDecorView(), this);
    }

    @Override // defpackage.ComponentActivityBase, defpackage.LifecycleOwner
    public final LifecycleRegistry C() {
        return this.k;
    }

    @Override // defpackage.SavedStateRegistryOwner
    public final SavedStateRegistry D() {
        return this.g.a;
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a();
        super.addContentView(view, layoutParams);
    }

    @Override // defpackage.ViewModelStoreOwner
    public final ViewModelStoreWithMigrationMap ai() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        k();
        return this.ex;
    }

    public final void j(ActivityResultLauncherCallback tqVar) {
        OnBackPressedCallbackSet tpVar = this.f;
        if (tpVar.b != null) {
            Context context = tpVar.b;
            tqVar.a();
        }
        tpVar.a.add(tqVar);
    }

    public final void k() {
        if (this.ex == null) {
            ActivityResultMarker tjVar = (ActivityResultMarker) getLastNonConfigurationInstance();
            if (tjVar != null) {
                this.ex = tjVar.a;
            }
            if (this.ex == null) {
                this.ex = new ViewModelStoreWithMigrationMap(null);
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

    @Override // defpackage.ComponentActivityBase, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.g.b(bundle);
        OnBackPressedCallbackSet tpVar = this.f;
        tpVar.b = this;
        Iterator it = tpVar.a.iterator();
        while (it.hasNext()) {
            ((ActivityResultLauncherCallback) it.next()).a();
        }
        super.onCreate(bundle);
        LifecycleReportFragment.b(this);
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        CopyOnWriteListenerRegistry gsVar = this.ew;
        getMenuInflater();
        Iterator it = gsVar.a.iterator();
        while (it.hasNext()) {
            ((SimpleInterfaceGt) it.next()).a();
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
            if (((SimpleInterfaceGt) it.next()).b()) {
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
        ActivityResultMarker tjVar;
        ViewModelStoreWithMigrationMap aedVar = this.ex;
        if (aedVar == null && (tjVar = (ActivityResultMarker) getLastNonConfigurationInstance()) != null) {
            aedVar = tjVar.a;
        }
        if (aedVar == null) {
            return null;
        }
        ActivityResultMarker tjVar2 = new ActivityResultMarker();
        tjVar2.a = aedVar;
        return tjVar2;
    }

    @Override // defpackage.ComponentActivityBase, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        LifecycleRegistry znVar = this.k;
        if (znVar instanceof LifecycleRegistry) {
            znVar.e(zm.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.g.c(bundle);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        a();
        super.setContentView(NavInstructionTypeEnum);
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
                z = PhenotypeFlagStringMatcher.a();
            } else {
                try {
                    if (afo.b == null) {
                        afo.a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                        afo.b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                    }
                    z = ((Boolean) PhenotypeFlagStringMatcher.b.invoke(null, Long.valueOf(afo.a))).booleanValue();
                } catch (Exception e) {
                    if (ProtoFlagValueMessage instanceof InvocationTargetException) {
                        Throwable cause = e.getCause();
                        if (!(cause instanceof RuntimeException)) {
                            throw new RuntimeException(cause);
                        }
                        throw ((RuntimeException) cause);
                    }
                }
            }
            if (IcuMessageFormat) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
        } finally {
            Trace.endSection();
        }
    }
}
