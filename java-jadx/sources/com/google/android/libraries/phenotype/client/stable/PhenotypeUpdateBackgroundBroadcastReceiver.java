package com.google.android.libraries.phenotype.client.stable;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import defpackage.cdz;
import defpackage.cfn;
import defpackage.cfp;
import defpackage.cfr;
import defpackage.cfz;
import defpackage.cgc;
import defpackage.cge;
import defpackage.cgv;
import defpackage.cqh;
import defpackage.cyt;
import defpackage.dab;
import defpackage.dag;
import defpackage.hh;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeUpdateBackgroundBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        cdz a;
        final String stringExtra = intent.getStringExtra("com.google.android.gms.phenotype.PACKAGE_NAME");
        if (stringExtra == null || (a = cdz.a(context)) == null) {
            return;
        }
        Map f = cgv.f(context);
        if (f.isEmpty()) {
            return;
        }
        cfn cfnVar = (cfn) f.get(stringExtra);
        if (cfnVar == null || cfnVar.f == 7) {
            final BroadcastReceiver.PendingResult goAsync = goAsync();
            final dag a2 = cfnVar == null ? hh.e(cqh.r(cfr.a(a).b(new cfp(stringExtra, 3), a.d()), a.d().submit(new cgc(a, stringExtra, 0)))).a(cge.a, a.d()) : cyt.p(dab.q(cyt.o(dab.q(cfr.a(a).a()), new cfp(stringExtra, 1), a.d())), new cfz(cfnVar, stringExtra, a, 0), a.d());
            a2.aW(new Runnable() { // from class: cgd
                @Override // java.lang.Runnable
                public final void run() {
                    dag dagVar = dag.this;
                    String str = stringExtra;
                    BroadcastReceiver.PendingResult pendingResult = goAsync;
                    try {
                        try {
                            hh.o(dagVar);
                            if (str.length() != 0) {
                                "Successfully updated snapshot for ".concat(str);
                            }
                        } catch (ExecutionException e) {
                            Log.w("PhenotypeBackgroundRecv", str.length() != 0 ? "Failed to update local snapshot for ".concat(str) : new String("Failed to update local snapshot for "), e);
                        }
                    } finally {
                        pendingResult.finish();
                    }
                }
            }, a.d());
        }
    }
}
