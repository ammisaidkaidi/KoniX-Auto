package defpackage;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bsp {
    public static final bsp a = new bsp();
    private final Object b = new Object();
    private final bso[] c;
    private volatile bss d;

    private bsp() {
        int[] a2 = dgi.a();
        int i = 0;
        for (int i2 = 0; i2 < 29; i2++) {
            int i3 = a2[i2];
            int i4 = i3 - 1;
            if (i3 == 0) {
                throw null;
            }
            i = Math.max(i, i4);
        }
        this.c = new bso[i + 1];
        int[] a3 = dgi.a();
        for (int i5 = 0; i5 < 29; i5++) {
            int i6 = a3[i5];
            int i7 = i6 - 1;
            if (i6 == 0) {
                throw null;
            }
            switch (i7) {
                case 12:
                case 13:
                case 14:
                case 15:
                case 17:
                case 19:
                case 20:
                case 21:
                case 27:
                    this.c[i7] = new bso();
                    this.c[i7].a = cqh.p();
                    break;
            }
        }
    }

    public final bsn a(int i, bsa bsaVar) {
        int i2 = i - 1;
        int i3 = 0;
        switch (i2) {
            case 0:
                return bsj.a;
            case 1:
                return bsj.b;
            case 2:
                if (bsaVar.c) {
                    try {
                        Account[] accountsByType = AccountManager.get(bsaVar.a).getAccountsByType("com.google");
                        int length = accountsByType.length;
                        while (i3 < length) {
                            Account account = accountsByType[i3];
                            if (account.name != null && account.type != null && account.name.endsWith("@google.com")) {
                                return bsj.b;
                            }
                            i3++;
                        }
                    } catch (SecurityException e) {
                    }
                }
                if (this.d == null) {
                    synchronized (this.b) {
                        if (this.d == null) {
                            bsr bsrVar = new bsr();
                            Context applicationContext = bsaVar.a.getApplicationContext();
                            applicationContext.getClass();
                            bsrVar.a = applicationContext;
                            dpx.l(bsrVar.a, Context.class);
                            this.d = new bss(bsrVar.a);
                        }
                    }
                }
                return (bsv) this.d.c.a();
            case 3:
                bst bstVar = new bst();
                bstVar.a = bsaVar;
                dpx.l(bstVar.a, bsa.class);
                return new bsj(2);
            case 4:
                return bsj.b;
            case 5:
                return bsj.b;
            case 6:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 25:
            default:
                bso bsoVar = this.c[i2];
                bsk bskVar = null;
                if (bsoVar != null) {
                    cqh cqhVar = bsoVar.a;
                    int i4 = ((crz) cqhVar).c;
                    while (i3 < i4) {
                        bsm bsmVar = (bsm) cqhVar.get(i3);
                        coc a2 = bsmVar.b().a();
                        if (!a2.d() || ((cqh) a2.a()).isEmpty()) {
                            bskVar = bsmVar.a();
                        } else {
                            i3++;
                        }
                    }
                }
                return bskVar != null ? bskVar : bsj.a;
            case 7:
                return bsj.b;
            case 8:
                return bsj.b;
            case 9:
                return bsj.b;
            case 10:
                return bsj.b;
            case 22:
                return bsj.b;
            case 23:
                return bsj.b;
            case 24:
                return bsj.b;
            case 26:
                return bsj.b;
        }
    }
}
