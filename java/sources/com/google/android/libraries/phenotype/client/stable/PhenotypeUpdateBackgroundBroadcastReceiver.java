package com.google.android.libraries.phenotype.client.stable;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import defpackage.PhenotypeContext;
import defpackage.PhenotypeFlagKey;
import defpackage.AccountFlagMapper;
import defpackage.PhenotypeAccountDataStore;
import defpackage.FlagSnapshotCommitFn;
import defpackage.PhenotypeSnapshotCleanupTask;
import defpackage.FlagLoadCallable;
import defpackage.PhenotypeFlagFactoryRegistry;
import defpackage.ImmutableList;
import defpackage.TransformFuture;
import defpackage.AbstractListenableFutureBase;
import defpackage.ListenableFuture;
import defpackage.ProjectionIntentHelper;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeUpdateBackgroundBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        PhenotypeContext a;
        final String stringExtra = intent.getStringExtra("com.google.android.gms.phenotype.PACKAGE_NAME");
        if (stringExtra == null || (a = PhenotypeContext.a(context)) == null) {
            return;
        }
        Map f = PhenotypeFlagFactoryRegistry.f(context);
        if (f.isEmpty()) {
            return;
        }
        PhenotypeFlagKey cfnVar = (PhenotypeFlagKey) f.get(stringExtra);
        if (cfnVar == null || cfnVar.f == 7) {
            final BroadcastReceiver.PendingResult goAsync = goAsync();
            final ListenableFuture a2 = cfnVar == null ? ProjectionIntentHelper.e(ImmutableList.r(PhenotypeAccountDataStore.a(a).b(new AccountFlagMapper(stringExtra, 3), a.d()), a.d().submit(new PhenotypeSnapshotCleanupTask(a, stringExtra, 0)))).a(cge.a, a.d()) : TransformFuture.p(AbstractListenableFutureBase.q(TransformFuture.o(AbstractListenableFutureBase.q(PhenotypeAccountDataStore.a(a).a()), new AccountFlagMapper(stringExtra, 1), a.d())), new FlagSnapshotCommitFn(cfnVar, stringExtra, a, 0), a.d());
            a2.aW(new Runnable() { // from class: cgd
                @Override // java.lang.Runnable
                public final void run() {
                    ListenableFuture dagVar = ListenableFuture.this;
                    String str = stringExtra;
                    BroadcastReceiver.PendingResult pendingResult = goAsync;
                    try {
                        try {
                            ProjectionIntentHelper.o(dagVar);
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
