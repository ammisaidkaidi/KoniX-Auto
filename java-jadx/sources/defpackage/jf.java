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
public class jf extends bv implements dp {
    private jg l;

    public jf() {
        D().b("androidx:appcompat", new jd(this));
        j(new je(this));
    }

    private final void l() {
        xr.b(getWindow().getDecorView(), this);
        xs.b(getWindow().getDecorView(), this);
        ew.r(getWindow().getDecorView(), this);
    }

    @Override // defpackage.dp
    public final Intent a() {
        return r.q(this);
    }

    @Override // defpackage.tk, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l();
        g().c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected final void attachBaseContext(Context context) {
        jw jwVar = (jw) g();
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
        if (context instanceof ue) {
            try {
                ((ue) context).a(jwVar.r(context, p, null));
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
            ue ueVar = new ue(context, R.style.Theme_AppCompat_Empty);
            ueVar.a(r);
            try {
                if (context.getTheme() != null) {
                    Resources.Theme theme = ueVar.getTheme();
                    if (Build.VERSION.SDK_INT >= 29) {
                        ed.a(theme);
                    } else {
                        ec.a(theme);
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

    @Override // defpackage.bv
    public final void d() {
        g().e();
    }

    @Override // defpackage.ActivityC0003do, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        f();
        return super.dispatchKeyEvent(keyEvent);
    }

    public final iv f() {
        return g().a();
    }

    @Override // android.app.Activity
    public final View findViewById(int i) {
        return g().b(i);
    }

    public final jg g() {
        if (this.l == null) {
            this.l = new jw(this, null, this);
        }
        return this.l;
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        jw jwVar = (jw) g();
        if (jwVar.i == null) {
            jwVar.B();
            iv ivVar = jwVar.h;
            jwVar.i = new ku(ivVar != null ? ivVar.a() : jwVar.f);
        }
        return jwVar.i;
    }

    public boolean h() {
        Intent q = r.q(this);
        if (q == null) {
            return false;
        }
        if (!shouldUpRecreateTask(q)) {
            navigateUpTo(q);
            return true;
        }
        dq dqVar = new dq(this);
        Intent a = a();
        if (a == null) {
            a = r.q(this);
        }
        if (a != null) {
            ComponentName component = a.getComponent();
            if (component == null) {
                component = a.resolveActivity(dqVar.b.getPackageManager());
            }
            int size = dqVar.a.size();
            try {
                for (Intent r = r.r(dqVar.b, component); r != null; r = r.r(dqVar.b, r.getComponent())) {
                    dqVar.a.add(size, r);
                }
                dqVar.a.add(a);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e);
            }
        }
        if (dqVar.a.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        ArrayList arrayList = dqVar.a;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        xq.a(dqVar.b, intentArr, null);
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

    @Override // defpackage.bv, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        iv a;
        super.onConfigurationChanged(configuration);
        jw jwVar = (jw) g();
        if (jwVar.s && jwVar.p && (a = jwVar.a()) != null) {
            kh khVar = (kh) a;
            khVar.i(hl.k(khVar.a));
        }
        nn.d().e(jwVar.f);
        jwVar.K(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // defpackage.bv, android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        g().f();
    }

    @Override // defpackage.bv, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        iv f = f();
        if (menuItem.getItemId() != 16908332 || f == null || (((kh) f).d.a() & 4) == 0) {
            return false;
        }
        return h();
    }

    @Override // android.app.Activity
    protected final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((jw) g()).A();
    }

    @Override // defpackage.bv, android.app.Activity
    protected final void onPostResume() {
        super.onPostResume();
        iv a = ((jw) g()).a();
        if (a != null) {
            a.e(true);
        }
    }

    @Override // defpackage.bv, android.app.Activity
    protected final void onStart() {
        super.onStart();
        jw jwVar = (jw) g();
        jwVar.z = true;
        jwVar.G();
    }

    @Override // defpackage.bv, android.app.Activity
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

    @Override // defpackage.tk, android.app.Activity
    public final void setContentView(int i) {
        l();
        g().i(i);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        super.setTheme(i);
        ((jw) g()).B = i;
    }

    @Override // defpackage.tk, android.app.Activity
    public final void setContentView(View view) {
        l();
        g().j(view);
    }

    @Override // defpackage.tk, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l();
        g().k(view, layoutParams);
    }
}
