package com.google.android.libraries.social.licenses;

import android.os.Bundle;
import android.view.MenuItem;
import com.google.android.embedded.projection.R;
import defpackage.chf;
import defpackage.cr;
import defpackage.da;
import defpackage.jf;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LicenseMenuActivity extends jf {
    @Override // defpackage.bv, defpackage.tk, defpackage.ActivityC0003do, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.libraries_social_licenses_license_menu_activity);
        if (f() != null) {
            f().d(true);
        }
        cr aI = aI();
        if (aI.c(R.id.license_menu_fragment_container) instanceof chf) {
            return;
        }
        chf chfVar = new chf();
        da h = aI.h();
        h.j(R.id.license_menu_fragment_container, chfVar);
        h.b();
    }

    @Override // defpackage.tk, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }
}
