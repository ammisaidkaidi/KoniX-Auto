package defpackage;

import android.content.Context;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cdc implements cct {
    public final String a;
    public final String b;
    public final boolean c;
    private final ccl d;
    private final cco e;
    private final ccz f;

    public cdc(Context context, coc cocVar, coc cocVar2, coc cocVar3, coc cocVar4) {
        String packageName = context.getPackageName();
        ccl cclVar = (ccl) cocVar.b(ccl.b);
        cco ccoVar = (cco) cocVar2.b(cco.b);
        ccz cczVar = (ccz) cocVar3.b(ccz.b);
        boolean booleanValue = ((Boolean) cocVar4.b(false)).booleanValue();
        this.b = "AARECEIVER_ANDROID_PRIMES";
        this.d = cclVar;
        this.e = ccoVar;
        this.f = cczVar;
        this.c = booleanValue;
        String valueOf = String.valueOf(packageName);
        this.a = valueOf.length() != 0 ? "com.google.android.libraries.performance.primes#".concat(valueOf) : new String("com.google.android.libraries.performance.primes#");
    }

    @Override // defpackage.cct
    public final dag a() {
        final dag a = this.d.a();
        final dag a2 = this.e.a();
        final dag a3 = this.f.a();
        return hh.f(a, a2, a3).a(new Callable() { // from class: cdb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                cdc cdcVar = cdc.this;
                dag dagVar = a;
                dag dagVar2 = a2;
                dag dagVar3 = a3;
                ddf n = cda.h.n();
                String str = cdcVar.b;
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cda cdaVar = (cda) n.b;
                int i = cdaVar.a | 1;
                cdaVar.a = i;
                cdaVar.b = str;
                String str2 = cdcVar.a;
                str2.getClass();
                int i2 = i | 2;
                cdaVar.a = i2;
                cdaVar.c = str2;
                boolean z = cdcVar.c;
                cdaVar.a = i2 | 4;
                cdaVar.d = z;
                try {
                    coc cocVar = (coc) hh.o(dagVar);
                    if (cocVar.d()) {
                        String str3 = (String) cocVar.a();
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        cda cdaVar2 = (cda) n.b;
                        cdaVar2.a |= 16;
                        cdaVar2.f = str3;
                    }
                } catch (Exception e) {
                }
                try {
                    List list = (List) hh.o(dagVar2);
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    cda cdaVar3 = (cda) n.b;
                    ddp ddpVar = cdaVar3.g;
                    if (!ddpVar.c()) {
                        cdaVar3.g = ddk.v(ddpVar);
                    }
                    dbu.d(list, cdaVar3.g);
                } catch (Exception e2) {
                }
                try {
                    coc cocVar2 = (coc) hh.o(dagVar3);
                    if (cocVar2.d()) {
                        String str4 = (String) cocVar2.a();
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        cda cdaVar4 = (cda) n.b;
                        cdaVar4.a |= 8;
                        cdaVar4.e = str4;
                    }
                } catch (Exception e3) {
                }
                ddh ddhVar = (ddh) ccs.c.n();
                dcx dcxVar = cda.i;
                Object obj = (cda) n.h();
                if (dcxVar.a != ddhVar.a) {
                    throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
                }
                if (ddhVar.c) {
                    ddhVar.k();
                    ddhVar.c = false;
                }
                ddb ddbVar = ((ddi) ddhVar.b).d;
                if (ddbVar.c) {
                    ddbVar = ddbVar.clone();
                    ((ddi) ddhVar.b).d = ddbVar;
                }
                ddj ddjVar = dcxVar.d;
                if (ddjVar.a() == dgd.ENUM) {
                    obj = Integer.valueOf(((ddm) obj).a());
                }
                ddbVar.l(ddjVar, obj);
                return (ccs) ddhVar.h();
            }
        }, czj.a);
    }
}
