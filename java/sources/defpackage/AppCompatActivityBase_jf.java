package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.embedded.projection.R;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AppCompatActivityBase_jf extends FragmentHostCallbacksImpl implements AppCompatCallbackInterface {
    private AppCompatDelegate l;

    public AppCompatActivityBase_jf() {
        D().b("androidx:appcompat", new AeuCallbackStub(this));
        j(new AppCompatServiceStub(this));
    }

    private final void l() {
        PrimesDebugEventsHelper.b(getWindow().getDecorView(), this);
        PrimesMetricTransmitter.b(getWindow().getDecorView(), this);
        ew.r(getWindow().getDecorView(), this);
    }

    @Override // defpackage.AppCompatCallbackInterface
    public final Intent a() {
        return r.q(this);
    }

    @Override // defpackage.ComponentActivity, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l();
        g().c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected final void attachBaseContext(Context context) {
        AppCompatDelegateImpl jwVar = (AppCompatDelegateImpl) g();
        jwVar.y = true;
        int p = jwVar.p(context, jwVar.o());
        Configuration configuration = null;
        if (jw.d && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(jwVar.r(context, p, null));
            } catch (IllegalStateException e) {
            }
            super.attachBaseContext(context);
        }
        if (context instanceof OverrideConfigurationContextWrapper) {
            try {
                ((OverrideConfigurationContextWrapper) context).a(jwVar.r(context, p, null));
            } catch (IllegalStateException e2) {
            }
            super.attachBaseContext(context);
        }
        if (jw.c) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration4 != null && configuration3.diff(configuration4) != 0) {
                    if (configuration3.fontScale != configuration4.fontScale) {
                        configuration.fontScale = configuration4.fontScale;
                    }
                    if (configuration3.mcc != configuration4.mcc) {
                        configuration.mcc = configuration4.mcc;
                    }
                    if (configuration3.mnc != configuration4.mnc) {
                        configuration.mnc = configuration4.mnc;
                    }
                    LocaleList locales = configuration3.getLocales();
                    LocaleList locales2 = configuration4.getLocales();
                    if (!locales.equals(locales2)) {
                        configuration.setLocales(locales2);
                        configuration.locale = configuration4.locale;
                    }
                    if (configuration3.touchscreen != configuration4.touchscreen) {
                        configuration.touchscreen = configuration4.touchscreen;
                    }
                    if (configuration3.keyboard != configuration4.keyboard) {
                        configuration.keyboard = configuration4.keyboard;
                    }
                    if (configuration3.keyboardHidden != configuration4.keyboardHidden) {
                        configuration.keyboardHidden = configuration4.keyboardHidden;
                    }
                    if (configuration3.navigation != configuration4.navigation) {
                        configuration.navigation = configuration4.navigation;
                    }
                    if (configuration3.navigationHidden != configuration4.navigationHidden) {
                        configuration.navigationHidden = configuration4.navigationHidden;
                    }
                    if (configuration3.orientation != configuration4.orientation) {
                        configuration.orientation = configuration4.orientation;
                    }
                    if ((configuration3.screenLayout & 15) != (configuration4.screenLayout & 15)) {
                        configuration.screenLayout |= configuration4.screenLayout & 15;
                    }
                    if ((configuration3.screenLayout & 192) != (configuration4.screenLayout & 192)) {
                        configuration.screenLayout |= configuration4.screenLayout & 192;
                    }
                    if ((configuration3.screenLayout & 48) != (configuration4.screenLayout & 48)) {
                        configuration.screenLayout |= configuration4.screenLayout & 48;
                    }
                    if ((configuration3.screenLayout & 768) != (configuration4.screenLayout & 768)) {
                        configuration.screenLayout |= configuration4.screenLayout & 768;
                    }
                    if ((configuration3.colorMode & 3) != (configuration4.colorMode & 3)) {
                        configuration.colorMode |= configuration4.colorMode & 3;
                    }
                    if ((configuration3.colorMode & 12) != (configuration4.colorMode & 12)) {
                        configuration.colorMode |= configuration4.colorMode & 12;
                    }
                    if ((configuration3.uiMode & 15) != (configuration4.uiMode & 15)) {
                        configuration.uiMode |= configuration4.uiMode & 15;
                    }
                    if ((configuration3.uiMode & 48) != (configuration4.uiMode & 48)) {
                        configuration.uiMode |= configuration4.uiMode & 48;
                    }
                    if (configuration3.screenWidthDp != configuration4.screenWidthDp) {
                        configuration.screenWidthDp = configuration4.screenWidthDp;
                    }
                    if (configuration3.screenHeightDp != configuration4.screenHeightDp) {
                        configuration.screenHeightDp = configuration4.screenHeightDp;
                    }
                    if (configuration3.smallestScreenWidthDp != configuration4.smallestScreenWidthDp) {
                        configuration.smallestScreenWidthDp = configuration4.smallestScreenWidthDp;
                    }
                    if (configuration3.densityDpi != configuration4.densityDpi) {
                        configuration.densityDpi = configuration4.densityDpi;
                    }
                }
            }
            Configuration r = jwVar.r(context, p, configuration);
            OverrideConfigurationContextWrapper ueVar = new OverrideConfigurationContextWrapper(context, R.style.Theme_AppCompat_Empty);
            ueVar.a(IcuMessagePattern);
            try {
                if (context.getTheme() != null) {
                    Resources.Theme theme = ueVar.getTheme();
                    if (Build.VERSION.SDK_INT >= 29) {
                        ThemeRebaseDirectHelper.a(theme);
                    } else {
                        ThemeRebaseReflectionHelper.a(theme);
                    }
                }
            } catch (NullPointerException e3) {
            }
            context = ueVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        f();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // defpackage.FragmentHostCallbacksImpl
    public final void d() {
        g().e();
    }

    @Override // defpackage.ComponentActivityBase, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        f();
        return super.dispatchKeyEvent(keyEvent);
    }

    public final ActionBarBaseClass f() {
        return g().a();
    }

    @Override // android.app.Activity
    public final View findViewById(int i) {
        return g().b(NavInstructionTypeEnum);
    }

    public final AppCompatDelegate g() {
        if (this.l == null) {
            this.l = new AppCompatDelegateImpl(this, null, this);
        }
        return this.l;
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        AppCompatDelegateImpl jwVar = (AppCompatDelegateImpl) g();
        if (jwVar.i == null) {
            jwVar.B();
            ActionBarBaseClass ivVar = jwVar.h;
            jwVar.i = new SupportMenuInflater(ivVar != null ? ivVar.a() : jwVar.f);
        }
        return jwVar.i;
    }

    public boolean h() {
        Intent q = r.q(this);
        if (IcuResourceBundleAction == null) {
            return false;
        }
        if (!shouldUpRecreateTask(IcuResourceBundleAction)) {
            navigateUpTo(IcuResourceBundleAction);
            return true;
        }
        ContextualArrayListIterable dqVar = new ContextualArrayListIterable(this);
        Intent a = a();
        if (SingleStringProtoMessage == null) {
            a = r.q(this);
        }
        if (SingleStringProtoMessage != null) {
            ComponentName component = a.getComponent();
            if (component == null) {
                component = a.resolveActivity(dqVar.b.getPackageManager());
            }
            int size = dqVar.a.size();
            try {
                for (Intent r = r.r(dqVar.b, component); r != null; r = r.r(dqVar.b, r.getComponent())) {
                    dqVar.a.add(size, r);
                }
                dqVar.a.add(SingleStringProtoMessage);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(ProtoFlagValueMessage);
            }
        }
        if (dqVar.a.isEmpty()) {
            throw new IllegalStateException("No intents added ComponentActivityLifecycleInterface TaskStackBuilder; cannot startActivities");
        }
        ArrayList arrayList = dqVar.a;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        PrimesEventStoreQuery.a(dqVar.b, intentArr, null);
        try {
            finishAffinity();
            return true;
        } catch (IllegalStateException e2) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        g().e();
    }

    @Override // defpackage.FragmentHostCallbacksImpl, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        ActionBarBaseClass a;
        super.onConfigurationChanged(configuration);
        AppCompatDelegateImpl jwVar = (AppCompatDelegateImpl) g();
        if (jwVar.s && jwVar.p && (SingleStringProtoMessage = jwVar.a()) != null) {
            DecorToolbarActionBar khVar = (DecorToolbarActionBar) a;
            khVar.i(ViewCompatCore.k(khVar.a));
        }
        VectorDrawableStateCache.d().e(jwVar.f);
        jwVar.K(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // defpackage.FragmentHostCallbacksImpl, android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        g().f();
    }

    @Override // defpackage.FragmentHostCallbacksImpl, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        ActionBarBaseClass f = f();
        if (menuItem.getItemId() != 16908332 || f == null || (((DecorToolbarActionBar) f).d.a() & 4) == 0) {
            return false;
        }
        return h();
    }

    @Override // android.app.Activity
    protected final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((AppCompatDelegateImpl) g()).A();
    }

    @Override // defpackage.FragmentHostCallbacksImpl, android.app.Activity
    protected final void onPostResume() {
        super.onPostResume();
        ActionBarBaseClass a = ((AppCompatDelegateImpl) g()).a();
        if (SingleStringProtoMessage != null) {
            a.e(true);
        }
    }

    @Override // defpackage.FragmentHostCallbacksImpl, android.app.Activity
    protected final void onStart() {
        super.onStart();
        AppCompatDelegateImpl jwVar = (AppCompatDelegateImpl) g();
        jwVar.z = true;
        jwVar.G();
    }

    @Override // defpackage.FragmentHostCallbacksImpl, android.app.Activity
    protected final void onStop() {
        super.onStop();
        g().g();
    }

    @Override // android.app.Activity
    protected final void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        g().l(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        f();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    @Override // defpackage.ComponentActivity, android.app.Activity
    public final void setContentView(int i) {
        l();
        g().i(NavInstructionTypeEnum);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        super.setTheme(NavInstructionTypeEnum);
        ((AppCompatDelegateImpl) g()).B = i;
    }

    @Override // defpackage.ComponentActivity, android.app.Activity
    public final void setContentView(View view) {
        l();
        g().j(view);
    }

    @Override // defpackage.ComponentActivity, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l();
        g().k(view, layoutParams);
    }
}
