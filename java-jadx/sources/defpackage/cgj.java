package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.util.Log;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cgj implements col {
    public static final /* synthetic */ int a = 0;
    private static volatile cez b = new cez(cgi.a);
    private final String c;
    private final String d;
    private final Object e;
    private final cfh f;
    private final Object g = new Object();
    private final Map h = new HashMap();

    public cgj(String str, String str2, Object obj, cfh cfhVar) {
        obj.getClass();
        this.c = str;
        this.d = str2;
        this.e = obj;
        this.f = cfhVar;
    }

    private final Object c(final cdz cdzVar) {
        Object obj;
        Object obj2;
        coc cocVar;
        Object obj3 = this.h.get("");
        if (obj3 != null) {
            return obj3;
        }
        synchronized (this.g) {
            int i = 1;
            cdz.f = true;
            if (cdz.b == null && !cdz.c && cdz.g == null) {
                cdz.g = new Exception();
            }
            if (cdz.c) {
                obj2 = this.e;
            } else {
                cfh cfhVar = this.f;
                String str = this.c;
                String str2 = this.d;
                final String b2 = ((cfg) cfhVar).b ? cdw.b(cdzVar.h, str) : str;
                if (((cfg) cfhVar).c) {
                    ex.u(true, "DirectBoot aware package %s can not access account-scoped flags.", b2);
                }
                aoj.e(cdzVar.d().submit(new cgc(cdzVar, b2, i)));
                cfl cflVar = cfm.a;
                final boolean z = ((cfg) cfhVar).c;
                final boolean z2 = ((cfg) cfhVar).b;
                col colVar = new col() { // from class: cfj
                    @Override // defpackage.col
                    public final Object a() {
                        return new cfm(cdz.this, b2, z, z2);
                    }
                };
                cod a2 = cod.a(b2, "");
                Object obj4 = (cfm) cflVar.a.get(a2);
                if (obj4 == null) {
                    obj4 = colVar.a();
                    cfm cfmVar = (cfm) cflVar.a.putIfAbsent(a2, obj4);
                    if (cfmVar == null) {
                        Context context = cdzVar.h;
                        cgf.c.putIfAbsent(a2, new cfi((cfm) obj4));
                        if (!cgf.b) {
                            synchronized (cgf.a) {
                                if (!cgf.b) {
                                    context.registerReceiver(new cgf(), new IntentFilter("com.google.android.gms.phenotype.UPDATE"));
                                    cgf.b = true;
                                }
                            }
                        }
                        cfr.a.putIfAbsent(a2, new cfk((cfm) obj4, 0));
                    } else {
                        obj4 = cfmVar;
                    }
                }
                boolean z3 = ((cfm) obj4).f;
                ex.o(true, "Package %s cannot be registered both with and without stickyAccountSupport", b2);
                Object a3 = ((cfm) obj4).a(str2);
                if (a3 == null) {
                    obj = null;
                } else {
                    try {
                        obj = ((cfg) cfhVar).e.a(a3);
                    } catch (IOException | ClassCastException e) {
                        Log.e("PhenotypeCombinedFlags", str2.length() != 0 ? "Invalid Phenotype flag value for flag ".concat(str2) : new String("Invalid Phenotype flag value for flag "), e);
                        obj = null;
                    }
                }
                Context context2 = cdzVar.h;
                coc cocVar2 = cfg.a;
                if (cocVar2 == null) {
                    synchronized (cfg.class) {
                        if (cfg.a == null) {
                            cfg.a = afo.c(context2);
                        }
                        cocVar = cfg.a;
                    }
                    cocVar2 = cocVar;
                }
                if (cocVar2.d()) {
                    String a4 = ((cqo) cocVar2.a()).a(cdw.a(str), null, null, str2);
                    if (a4 == null) {
                        obj2 = null;
                    } else {
                        try {
                            obj2 = ((cfg) cfhVar).d.a(a4);
                        } catch (IOException | IllegalArgumentException e2) {
                            Log.e("PhenotypeCombinedFlags", str2.length() != 0 ? "Invalid Phenotype flag value for flag ".concat(str2) : new String("Invalid Phenotype flag value for flag "), e2);
                            obj2 = null;
                        }
                    }
                } else {
                    obj2 = obj;
                }
                if (obj2 == null) {
                    obj2 = this.e;
                }
            }
            this.h.put("", obj2);
        }
        return obj2;
    }

    @Override // defpackage.col
    public final Object a() {
        cdz a2;
        cdz.d = true;
        Context context = cdz.b;
        if (context != null) {
            a2 = cdz.a(context);
        } else {
            if (!cdz.c) {
                if (cdz.e == null) {
                    cdz.e = new Exception();
                }
                throw new IllegalStateException("Must call PhenotypeContext.setContext() first");
            }
            a2 = null;
        }
        return c(a2);
    }

    public final Object b(Context context) {
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        return c(cdz.a(applicationContext));
    }
}
