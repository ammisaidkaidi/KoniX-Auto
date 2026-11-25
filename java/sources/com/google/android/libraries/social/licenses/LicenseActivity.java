package com.google.android.libraries.social.licenses;

import android.os.Bundle;
import android.text.Layout;
import android.view.MenuItem;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.embedded.projection.R;
import com.google.android.libraries.social.licenses.LicenseActivity;
import defpackage.GoogleSignatureVerifier;
import defpackage.ConfigPackageVersion;
import defpackage.ActionBarBaseClass;
import defpackage.AppCompatActivityBase_jf;
import defpackage.DecorToolbarActionBar;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LicenseActivity extends AppCompatActivityBase_jf {
    @Override // defpackage.FragmentHostCallbacksImpl, defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        setContentView(R.layout.libraries_social_licenses_license_activity);
        ConfigPackageVersion chcVar = (ConfigPackageVersion) getIntent().getParcelableExtra("license");
        if (f() != null) {
            ActionBarBaseClass f = f();
            ((DecorToolbarActionBar) f).d.l(chcVar.a);
            ((DecorToolbarActionBar) f()).h(2, 2);
            f().d(true);
            ((DecorToolbarActionBar) f()).d.i(null);
        }
        TextView textView = (TextView) findViewById(R.id.license_activity_textview);
        long j = chcVar.b;
        int i = chcVar.c;
        String str2 = chcVar.d;
        if (!str2.isEmpty()) {
            try {
                String i2 = GoogleSignatureVerifier.i(new BufferedInputStream(new FileInputStream(str2)), j, i);
                if (i2 != null) {
                    if (!i2.isEmpty()) {
                        str = i2;
                    }
                }
            } catch (FileNotFoundException e) {
            }
            String.valueOf(str2).length();
            throw new RuntimeException(String.valueOf(str2).concat(" does not contain res/raw/third_party_licenses"));
        }
        str = GoogleSignatureVerifier.j(this, "third_party_licenses", j, i);
        if (str == null) {
            finish();
        } else {
            textView.setText(str);
        }
    }

    @Override // defpackage.ComponentActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    @Override // android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        final ScrollView scrollView = (ScrollView) findViewById(R.id.license_activity_scrollview);
        final int i = bundle.getInt("scroll_pos");
        if (i != 0) {
            scrollView.post(new Runnable() { // from class: chd
                @Override // java.lang.Runnable
                public final void run() {
                    LicenseActivity licenseActivity = LicenseActivity.this;
                    int i2 = i;
                    ScrollView scrollView2 = scrollView;
                    Layout layout = ((TextView) licenseActivity.findViewById(R.id.license_activity_textview)).getLayout();
                    if (layout != null) {
                        scrollView2.scrollTo(0, layout.getLineTop(layout.getLineForOffset(i2)));
                    }
                }
            });
        }
    }

    @Override // defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ScrollView scrollView = (ScrollView) findViewById(R.id.license_activity_scrollview);
        Layout layout = ((TextView) findViewById(R.id.license_activity_textview)).getLayout();
        if (layout != null) {
            bundle.putInt("scroll_pos", layout.getLineStart(layout.getLineForVertical(scrollView.getScrollY())));
        }
    }
}
