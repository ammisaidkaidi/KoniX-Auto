package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.google.android.embedded.projection.R;
import com.google.android.libraries.social.licenses.LicenseActivity;
import com.google.android.libraries.social.licenses.LicenseMenuActivity;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class chf extends br implements aal {
    public ArrayAdapter a;
    public LicenseMenuActivity b;

    @Override // defpackage.br
    public final void J() {
        super.J();
        aam a = aam.a(x());
        if (a.b.c) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
        if (aam.b(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("destroyLoader in ");
            sb.append(a);
            sb.append(" of 54321");
        }
        aan b = a.b.b();
        if (b != null) {
            b.j();
            vj vjVar = a.b.b;
            int a2 = ve.a(vjVar.c, vjVar.e, 54321);
            if (a2 < 0 || vjVar.d[a2] == vj.a) {
                return;
            }
            vjVar.d[a2] = vj.a;
            vjVar.b = true;
        }
    }

    @Override // defpackage.br
    public final void M(View view, Bundle bundle) {
        bv x = x();
        this.a = new ArrayAdapter(x, R.layout.libraries_social_licenses_license, R.id.license, new ArrayList());
        aam a = aam.a(x);
        if (a.b.c) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        aan b = a.b.b();
        if (aam.b(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("initLoader in ");
            sb.append(a);
            sb.append(": args=");
            sb.append((Object) null);
        }
        if (b == null) {
            try {
                a.b.c = true;
                aas aasVar = new aas(x());
                if (aasVar.getClass().isMemberClass() && !Modifier.isStatic(aasVar.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + aasVar);
                }
                aan aanVar = new aan(aasVar);
                if (aam.b(3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("  Created new loader ");
                    sb2.append(aanVar);
                }
                a.b.b.g(54321, aanVar);
                a.b.a();
                aanVar.k(a.a, this);
            } catch (Throwable th) {
                a.b.a();
                throw th;
            }
        } else {
            if (aam.b(3)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("  Re-using existing loader ");
                sb3.append(b);
            }
            b.k(a.a, this);
        }
        ListView listView = (ListView) view.findViewById(R.id.license_list);
        listView.setAdapter((ListAdapter) this.a);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: che
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                chf chfVar = chf.this;
                chc chcVar = (chc) adapterView.getItemAtPosition(i);
                LicenseMenuActivity licenseMenuActivity = chfVar.b;
                if (licenseMenuActivity != null) {
                    Intent intent = new Intent(licenseMenuActivity, (Class<?>) LicenseActivity.class);
                    intent.putExtra("license", chcVar);
                    licenseMenuActivity.startActivity(intent);
                }
            }
        });
    }

    @Override // defpackage.br
    public final void aR(Context context) {
        super.aR(context);
        bv x = x();
        if (x instanceof LicenseMenuActivity) {
            this.b = (LicenseMenuActivity) x;
        }
    }

    @Override // defpackage.br
    public final View ag(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.libraries_social_licenses_license_menu_fragment, viewGroup, false);
    }

    @Override // defpackage.br
    public final void f() {
        super.f();
        this.b = null;
    }
}
