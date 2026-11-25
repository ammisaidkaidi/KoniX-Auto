package com.google.android.libraries.social.licenses;

import android.os.Bundle;
import android.view.MenuItem;
import com.google.android.embedded.projection.R;
import defpackage.LoaderManagerImpl_chf;
import defpackage.FragmentManagerImpl;
import defpackage.FragmentTransaction;
import defpackage.AppCompatActivityBase_jf;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LicenseMenuActivity extends AppCompatActivityBase_jf {
    @Override // defpackage.FragmentHostCallbacksImpl, defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.libraries_social_licenses_license_menu_activity);
        if (f() != null) {
            f().d(true);
        }
        FragmentManagerImpl aI = aI();
        if (aI.c(R.id.license_menu_fragment_container) instanceof LoaderManagerImpl_chf) {
            return;
        }
        LoaderManagerImpl_chf chfVar = new LoaderManagerImpl_chf();
        FragmentTransaction h = aI.h();
        h.j(R.id.license_menu_fragment_container, chfVar);
        h.b();
    }

    @Override // defpackage.ComponentActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }
}
