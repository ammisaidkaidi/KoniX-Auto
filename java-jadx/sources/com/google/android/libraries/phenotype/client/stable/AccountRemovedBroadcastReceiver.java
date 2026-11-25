package com.google.android.libraries.phenotype.client.stable;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import defpackage.cdz;
import defpackage.cfp;
import defpackage.cfr;
import defpackage.czj;
import defpackage.hh;
import java.util.Map;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccountRemovedBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, Intent intent) {
        if ("android.accounts.action.ACCOUNT_REMOVED".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("accountType");
            if ("com.google".equals(stringExtra) || "com.google.work".equals(stringExtra) || "cn.google".equals(stringExtra) || "__logged_out_type".equals(stringExtra)) {
                final String string = intent.getExtras().getString("authAccount");
                final BroadcastReceiver.PendingResult goAsync = goAsync();
                cdz a = cdz.a(context);
                if (a == null) {
                    return;
                }
                hh.f(cfr.a(a).b(new cfp(string, 2), a.d()), a.d().submit(new Runnable() { // from class: cfc
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str = string;
                        SharedPreferences a2 = cfx.a(context2);
                        SharedPreferences.Editor editor = null;
                        for (Map.Entry<String, ?> entry : a2.getAll().entrySet()) {
                            if ((entry.getValue() instanceof String) && entry.getValue().equals(str)) {
                                if (editor == null) {
                                    editor = a2.edit();
                                }
                                editor.remove(entry.getKey());
                            }
                        }
                        if (editor != null) {
                            editor.commit();
                        }
                    }
                })).a(new Callable() { // from class: cfd
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        goAsync.finish();
                        return null;
                    }
                }, czj.a);
            }
        }
    }
}
