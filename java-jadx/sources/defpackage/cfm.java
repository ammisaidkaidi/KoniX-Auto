package defpackage;

import android.os.StrictMode;
import android.util.Log;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cfm {
    public static final cfl a = new cfl();
    final cdz b;
    final String c;
    public final boolean g;
    public final boolean h;
    private volatile String i;
    public final boolean f = false;
    final String d = "";
    final cgh e = new cgh(new cfk(this, 1));

    protected cfm(cdz cdzVar, String str, boolean z, boolean z2) {
        this.b = cdzVar;
        this.c = str;
        this.g = z;
        this.h = z2;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, java.util.Map] */
    final Object a(String str) {
        Object obj;
        cgh cghVar = this.e;
        Map map = cghVar.b;
        if (map != null) {
            return map.get(str);
        }
        synchronized (cghVar.a) {
            Map map2 = cghVar.b;
            Map map3 = map2;
            if (map2 == null) {
                ?? a2 = cghVar.c.a();
                cghVar.b = a2;
                cghVar.c = null;
                map3 = a2;
            }
            obj = map3.get(str);
        }
        return obj;
    }

    protected final dag b() {
        return this.i.isEmpty() ? dad.a : cyb.e(this.b.b().a(this.i), cep.class, new cgp(this, 1), this.b.d());
    }

    protected final Map c() {
        cgw cgwVar;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            try {
                cgwVar = (cgw) hi.j(cgv.g(this.b, this.c, this.d, this.g).a());
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskWrites);
            }
        } catch (CancellationException | ExecutionException e) {
            String str = this.c;
            StringBuilder sb = new StringBuilder(str.length() + 51);
            sb.append("Unable to retrieve flag snapshot for ");
            sb.append(str);
            sb.append(" from storage.");
            Log.w("ProtoDataStoreFlagStore", sb.toString(), e);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            cgwVar = null;
        }
        if (cgwVar != null && !cgwVar.b.isEmpty()) {
            this.i = cgwVar.b;
            final int i = 1;
            this.b.d().execute(new Runnable(this) { // from class: cgq
                public final /* synthetic */ cfm a;

                {
                    this.a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i) {
                        case 0:
                            this.a.d();
                            break;
                        case 1:
                            this.a.b();
                            break;
                        default:
                            cfm cfmVar = this.a;
                            cdz cdzVar = cfmVar.b;
                            final String str2 = cfmVar.c;
                            dag b = cfr.a(cdzVar).b(new cny() { // from class: cfq
                                public final /* synthetic */ String b = "";

                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // defpackage.cny
                                public final Object a(Object obj) {
                                    String str3 = str2;
                                    String str4 = this.b;
                                    cff cffVar = (cff) obj;
                                    cej cejVar = cfr.a;
                                    cfb cfbVar = cfb.d;
                                    dem demVar = cffVar.a;
                                    if (demVar.containsKey(str3)) {
                                        cfbVar = (cfb) demVar.get(str3);
                                    }
                                    ddf ddfVar = (ddf) cfbVar.E(5);
                                    ddfVar.n(cfbVar);
                                    if (!Collections.unmodifiableList(((cfb) ddfVar.b).b).contains(str4)) {
                                        ddfVar.q(str4);
                                    }
                                    ddf ddfVar2 = (ddf) cffVar.E(5);
                                    ddfVar2.n(cffVar);
                                    if (ddfVar.c) {
                                        ddfVar.k();
                                        ddfVar.c = false;
                                    }
                                    cfb cfbVar2 = (cfb) ddfVar.b;
                                    cfbVar2.a |= 1;
                                    cfbVar2.c = str4;
                                    ddfVar2.r(str3, (cfb) ddfVar.h());
                                    return (cff) ddfVar2.h();
                                }
                            }, cdzVar.d());
                            b.aW(new cgr(cfmVar, b, 0), cfmVar.b.d());
                            break;
                    }
                }
            });
            final int i2 = 2;
            this.b.d().execute(new Runnable(this) { // from class: cgq
                public final /* synthetic */ cfm a;

                {
                    this.a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i2) {
                        case 0:
                            this.a.d();
                            break;
                        case 1:
                            this.a.b();
                            break;
                        default:
                            cfm cfmVar = this.a;
                            cdz cdzVar = cfmVar.b;
                            final String str2 = cfmVar.c;
                            dag b = cfr.a(cdzVar).b(new cny() { // from class: cfq
                                public final /* synthetic */ String b = "";

                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // defpackage.cny
                                public final Object a(Object obj) {
                                    String str3 = str2;
                                    String str4 = this.b;
                                    cff cffVar = (cff) obj;
                                    cej cejVar = cfr.a;
                                    cfb cfbVar = cfb.d;
                                    dem demVar = cffVar.a;
                                    if (demVar.containsKey(str3)) {
                                        cfbVar = (cfb) demVar.get(str3);
                                    }
                                    ddf ddfVar = (ddf) cfbVar.E(5);
                                    ddfVar.n(cfbVar);
                                    if (!Collections.unmodifiableList(((cfb) ddfVar.b).b).contains(str4)) {
                                        ddfVar.q(str4);
                                    }
                                    ddf ddfVar2 = (ddf) cffVar.E(5);
                                    ddfVar2.n(cffVar);
                                    if (ddfVar.c) {
                                        ddfVar.k();
                                        ddfVar.c = false;
                                    }
                                    cfb cfbVar2 = (cfb) ddfVar.b;
                                    cfbVar2.a |= 1;
                                    cfbVar2.c = str4;
                                    ddfVar2.r(str3, (cfb) ddfVar.h());
                                    return (cff) ddfVar2.h();
                                }
                            }, cdzVar.d());
                            b.aW(new cgr(cfmVar, b, 0), cfmVar.b.d());
                            break;
                    }
                }
            });
            return cgv.c(cgwVar);
        }
        final int i3 = 0;
        this.b.d().execute(new Runnable(this) { // from class: cgq
            public final /* synthetic */ cfm a;

            {
                this.a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i3) {
                    case 0:
                        this.a.d();
                        break;
                    case 1:
                        this.a.b();
                        break;
                    default:
                        cfm cfmVar = this.a;
                        cdz cdzVar = cfmVar.b;
                        final String str2 = cfmVar.c;
                        dag b = cfr.a(cdzVar).b(new cny() { // from class: cfq
                            public final /* synthetic */ String b = "";

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // defpackage.cny
                            public final Object a(Object obj) {
                                String str3 = str2;
                                String str4 = this.b;
                                cff cffVar = (cff) obj;
                                cej cejVar = cfr.a;
                                cfb cfbVar = cfb.d;
                                dem demVar = cffVar.a;
                                if (demVar.containsKey(str3)) {
                                    cfbVar = (cfb) demVar.get(str3);
                                }
                                ddf ddfVar = (ddf) cfbVar.E(5);
                                ddfVar.n(cfbVar);
                                if (!Collections.unmodifiableList(((cfb) ddfVar.b).b).contains(str4)) {
                                    ddfVar.q(str4);
                                }
                                ddf ddfVar2 = (ddf) cffVar.E(5);
                                ddfVar2.n(cffVar);
                                if (ddfVar.c) {
                                    ddfVar.k();
                                    ddfVar.c = false;
                                }
                                cfb cfbVar2 = (cfb) ddfVar.b;
                                cfbVar2.a |= 1;
                                cfbVar2.c = str4;
                                ddfVar2.r(str3, (cfb) ddfVar.h());
                                return (cff) ddfVar2.h();
                            }
                        }, cdzVar.d());
                        b.aW(new cgr(cfmVar, b, 0), cfmVar.b.d());
                        break;
                }
            }
        });
        String str2 = this.c;
        StringBuilder sb2 = new StringBuilder(str2.length() + 54);
        sb2.append("Unable to retrieve flag snapshot for ");
        sb2.append(str2);
        sb2.append(", using defaults.");
        Log.w("ProtoDataStoreFlagStore", sb2.toString());
        return cse.a;
    }

    protected final void d() {
        dag d = cgv.d(this.b, this.c, this.d);
        cyt.p(d, new cgp(this, 0), this.b.d()).aW(new cgr(this, d, 1), this.b.d());
    }

    public final /* synthetic */ void e(dag dagVar) {
        try {
            cqk c = cgv.c((cgw) hh.o(dagVar));
            cgh cghVar = this.e;
            synchronized (cghVar.a) {
                if (cghVar.b == null) {
                    cghVar.b = c;
                    cghVar.c = null;
                    return;
                }
                boolean equals = cghVar.b.equals(c);
                if (equals) {
                    return;
                }
                this.b.c();
                this.b.c().a();
            }
        } catch (CancellationException | ExecutionException e) {
            String str = this.c;
            StringBuilder sb = new StringBuilder(str.length() + 64);
            sb.append("Unable to update local snapshot for ");
            sb.append(str);
            sb.append(", may result in stale flags.");
            Log.w("ProtoDataStoreFlagStore", sb.toString(), e);
        }
    }
}
