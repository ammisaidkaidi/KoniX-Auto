package com.google.android.gms.phenotype.core.common;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Users {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/gms/phenotype/core/common/Users");
    private static final ImmutableSet b = ImmutableSet.p("com.google", "com.google.work");
    private static final ImmutableSet c = ImmutableSet.o("cn.google");
    private static volatile Boolean d;

    public static boolean a(String str, Context context) {
        String[] strArr;
        try {
            if (ProtoMsgIntStringInt == null) {
                d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
            }
            ImmutableSet cqwVar = d.booleanValue() ? c : b;
            AccountManager accountManager = AccountManager.get(context);
            FutureCloseSignal f = ClosingScopeRegistry.f("AccountManager.getAccounts");
            try {
                Account[] accounts = accountManager.getAccounts();
                f.close();
                ArrayList arrayList = new ArrayList(accounts.length);
                for (Account account : accounts) {
                    if (cqwVar.contains(account.type)) {
                        arrayList.add(account.name);
                    }
                }
                strArr = (String[]) arrayList.toArray(new String[0]);
            } catch (Throwable th) {
                try {
                    f.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        } catch (SecurityException e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(ProtoFlagValueMessage)).h("com/google/android/gms/phenotype/core/common/Users", "getDeviceUsers", 38, "Users.java")).n("Failed to get device user accounts");
            strArr = new String[0];
        }
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }
}
