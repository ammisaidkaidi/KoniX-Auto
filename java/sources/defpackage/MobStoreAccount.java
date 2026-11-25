package defpackage;

import android.accounts.Account;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MobStoreAccount {
    public static final Account a = new Account("shared", "mobstore");

    public static Account a(String str) {
        if ("shared".equals(str)) {
            return a;
        }
        int indexOf = str.indexOf(58);
        PrimesMetricExtensionUtils.q(indexOf >= 0, "Malformed account", new Object[0]);
        return new Account(str.substring(indexOf + 1), str.substring(0, indexOf));
    }

    public static String b(Account account) {
        PrimesMetricExtensionUtils.q(account.type.indexOf(58) == -1, "Account type contains ':'.", new Object[0]);
        PrimesMetricExtensionUtils.q(account.type.indexOf(47) == -1, "Account type contains '/'.", new Object[0]);
        PrimesMetricExtensionUtils.q(account.name.indexOf(47) == -1, "Account name contains '/'.", new Object[0]);
        if (c(account)) {
            return "shared";
        }
        String str = account.type;
        String str2 = account.name;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(":");
        StaggeredGridLayoutParams.append(str2);
        return StaggeredGridLayoutParams.toString();
    }

    static boolean c(Account account) {
        return a.equals(account);
    }
}
