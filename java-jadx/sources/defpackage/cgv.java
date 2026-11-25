package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cgv {
    public static final /* synthetic */ int a = 0;
    private static volatile Map b = null;
    private static final Object c = new Object();
    private static volatile civ d = null;
    private static final Object e = new Object();
    private static final cju f = new cju(cgw.h);

    static cgw a(cem cemVar) {
        ddf n = cgw.h.n();
        if (cemVar == null) {
            return (cgw) n.h();
        }
        for (cen cenVar : cemVar.e) {
            ddf n2 = cgx.e.n();
            String str = cenVar.d;
            if (n2.c) {
                n2.k();
                n2.c = false;
            }
            cgx cgxVar = (cgx) n2.b;
            str.getClass();
            cgxVar.a |= 1;
            cgxVar.d = str;
            int d2 = aga.d(cenVar.b);
            int i = d2 - 1;
            if (d2 == 0) {
                throw null;
            }
            switch (i) {
                case 0:
                    long longValue = cenVar.b == 1 ? ((Long) cenVar.c).longValue() : 0L;
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    cgx cgxVar2 = (cgx) n2.b;
                    cgxVar2.b = 2;
                    cgxVar2.c = Long.valueOf(longValue);
                    break;
                case 1:
                    boolean booleanValue = cenVar.b == 2 ? ((Boolean) cenVar.c).booleanValue() : false;
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    cgx cgxVar3 = (cgx) n2.b;
                    cgxVar3.b = 3;
                    cgxVar3.c = Boolean.valueOf(booleanValue);
                    break;
                case 2:
                    double doubleValue = cenVar.b == 3 ? ((Double) cenVar.c).doubleValue() : 0.0d;
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    cgx cgxVar4 = (cgx) n2.b;
                    cgxVar4.b = 4;
                    cgxVar4.c = Double.valueOf(doubleValue);
                    break;
                case 3:
                    String str2 = cenVar.b == 4 ? (String) cenVar.c : "";
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    cgx cgxVar5 = (cgx) n2.b;
                    str2.getClass();
                    cgxVar5.b = 5;
                    cgxVar5.c = str2;
                    break;
                case 4:
                    dcl dclVar = cenVar.b == 5 ? (dcl) cenVar.c : dcl.b;
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    cgx cgxVar6 = (cgx) n2.b;
                    dclVar.getClass();
                    cgxVar6.b = 6;
                    cgxVar6.c = dclVar;
                    break;
                default:
                    throw new IllegalStateException("No known flag type");
            }
            cgx cgxVar7 = (cgx) n2.h();
            if (n.c) {
                n.k();
                n.c = false;
            }
            cgw cgwVar = (cgw) n.b;
            cgxVar7.getClass();
            ddr ddrVar = cgwVar.g;
            if (!ddrVar.c()) {
                cgwVar.g = ddk.z(ddrVar);
            }
            cgwVar.g.add(cgxVar7);
        }
        String str3 = cemVar.d;
        if (n.c) {
            n.k();
            n.c = false;
        }
        cgw cgwVar2 = (cgw) n.b;
        str3.getClass();
        int i2 = 4 | cgwVar2.a;
        cgwVar2.a = i2;
        cgwVar2.d = str3;
        String str4 = cemVar.b;
        str4.getClass();
        int i3 = 1 | i2;
        cgwVar2.a = i3;
        cgwVar2.b = str4;
        long j = cemVar.h;
        int i4 = i3 | 8;
        cgwVar2.a = i4;
        cgwVar2.e = j;
        if ((cemVar.a & 2) != 0) {
            dcl dclVar2 = cemVar.c;
            dclVar2.getClass();
            cgwVar2.a = i4 | 2;
            cgwVar2.c = dclVar2;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (n.c) {
            n.k();
            n.c = false;
        }
        cgw cgwVar3 = (cgw) n.b;
        cgwVar3.a |= 16;
        cgwVar3.f = currentTimeMillis;
        return (cgw) n.h();
    }

    static civ b(Context context, dai daiVar) {
        civ civVar = d;
        if (civVar == null) {
            synchronized (e) {
                civVar = d;
                if (civVar == null) {
                    chm chmVar = new chm(Collections.singletonList(new cho(new dhq(context, null), null)));
                    ciw ciwVar = new ciw();
                    ciwVar.a = daiVar;
                    ciwVar.b = chmVar;
                    cjr cjrVar = cjd.a;
                    ex.o(!ciwVar.c.containsKey("singleproc"), "There is already a factory registered for the ID %s", "singleproc");
                    ciwVar.c.put("singleproc", cjrVar);
                    civ civVar2 = new civ(ciwVar.a, ciwVar.b, ciwVar.d, ciwVar.c);
                    d = civVar2;
                    civVar = civVar2;
                }
            }
        }
        return civVar;
    }

    static cqk c(cgw cgwVar) {
        int i;
        HashMap hashMap = new HashMap(fv.C(cgwVar.g.size() + 3));
        Iterator it = cgwVar.g.iterator();
        while (true) {
            if (!it.hasNext()) {
                hashMap.put("__phenotype_server_token", cgwVar.d);
                hashMap.put("__phenotype_snapshot_token", cgwVar.b);
                hashMap.put("__phenotype_configuration_version", Long.valueOf(cgwVar.e));
                Set<Map.Entry> entrySet = hashMap.entrySet();
                boolean z = entrySet instanceof Collection;
                cqi cqiVar = new cqi(z ? entrySet.size() : 4);
                if (z) {
                    cqiVar.e(cqiVar.b + entrySet.size());
                }
                for (Map.Entry entry : entrySet) {
                    cqiVar.f(entry.getKey(), entry.getValue());
                }
                return cqiVar.c();
            }
            cgx cgxVar = (cgx) it.next();
            int i2 = cgxVar.b;
            switch (i2) {
                case 0:
                    i = 6;
                    break;
                case 1:
                default:
                    i = 0;
                    break;
                case 2:
                    i = 1;
                    break;
                case 3:
                    i = 2;
                    break;
                case 4:
                    i = 3;
                    break;
                case 5:
                    i = 4;
                    break;
                case 6:
                    i = 5;
                    break;
            }
            int i3 = i - 1;
            if (i == 0) {
                throw null;
            }
            switch (i3) {
                case 0:
                    hashMap.put(cgxVar.d, Long.valueOf(i2 == 2 ? ((Long) cgxVar.c).longValue() : 0L));
                    break;
                case 1:
                    hashMap.put(cgxVar.d, Boolean.valueOf(i2 == 3 ? ((Boolean) cgxVar.c).booleanValue() : false));
                    break;
                case 2:
                    hashMap.put(cgxVar.d, Double.valueOf(i2 == 4 ? ((Double) cgxVar.c).doubleValue() : 0.0d));
                    break;
                case 3:
                    hashMap.put(cgxVar.d, i2 == 5 ? (String) cgxVar.c : "");
                    break;
                case 4:
                    hashMap.put(cgxVar.d, (i2 == 6 ? (dcl) cgxVar.c : dcl.b).C());
                    break;
            }
        }
    }

    static dag d(cdz cdzVar, String str, String str2) {
        return cyt.o(cdzVar.b().c(str, str2), cgt.a, cdzVar.d());
    }

    public static dag e(cdz cdzVar, final String str, String str2, final cgw cgwVar, boolean z, boolean z2) {
        if (str.indexOf(35) < 0 && !z2) {
            final int i = 1;
            final dag b2 = g(cdzVar, cdw.b(cdzVar.h, str), str2, z).b(new cny() { // from class: cgs
                @Override // defpackage.cny
                public final Object a(Object obj) {
                    switch (i) {
                        case 0:
                            cgw cgwVar2 = cgwVar;
                            int i2 = cgv.a;
                            return cgwVar2;
                        default:
                            cgw cgwVar3 = cgwVar;
                            int i3 = cgv.a;
                            return cgwVar3;
                    }
                }
            }, cdzVar.d());
            b2.aW(new Runnable() { // from class: cgu
                @Override // java.lang.Runnable
                public final void run() {
                    dag dagVar = dag.this;
                    String str3 = str;
                    int i2 = cgv.a;
                    try {
                        hh.o(dagVar);
                    } catch (ExecutionException e2) {
                        String.valueOf(str3).length();
                    }
                }
            }, cdzVar.d());
        }
        cjp g = g(cdzVar, str, str2, z);
        final int i2 = 0;
        return g.b(new cny() { // from class: cgs
            @Override // defpackage.cny
            public final Object a(Object obj) {
                switch (i2) {
                    case 0:
                        cgw cgwVar2 = cgwVar;
                        int i22 = cgv.a;
                        return cgwVar2;
                    default:
                        cgw cgwVar3 = cgwVar;
                        int i3 = cgv.a;
                        return cgwVar3;
                }
            }
        }, cdzVar.d());
    }

    public static Map f(Context context) {
        Map map = b;
        if (map == null) {
            synchronized (c) {
                map = b;
                if (map == null) {
                    cqi e2 = cqk.e();
                    try {
                        for (String str : context.getAssets().list("phenotype")) {
                            try {
                                AssetManager assets = context.getAssets();
                                String valueOf = String.valueOf(str);
                                InputStream open = assets.open(valueOf.length() != 0 ? "phenotype/".concat(valueOf) : new String("phenotype/"));
                                try {
                                    cfn cfnVar = new cfn(context, (cfo) ddk.q(cfo.g, open, dcz.b()));
                                    e2.f(cfnVar.a, cfnVar);
                                    if (open != null) {
                                        open.close();
                                    }
                                } catch (Throwable th) {
                                    if (open != null) {
                                        try {
                                            open.close();
                                        } catch (Throwable th2) {
                                        }
                                    }
                                    throw th;
                                }
                            } catch (ddu e3) {
                                String valueOf2 = String.valueOf(str);
                                Log.e("SnapshotHandler", valueOf2.length() != 0 ? "Unable to read Phenotype PackageMetadata for ".concat(valueOf2) : new String("Unable to read Phenotype PackageMetadata for "), e3);
                            }
                        }
                    } catch (IOException e4) {
                        Log.e("SnapshotHandler", "Unable to read Phenotype PackageMetadata from assets.", e4);
                    }
                    cqk c2 = e2.c();
                    b = c2;
                    map = c2;
                }
            }
        }
        return map;
    }

    static cjp g(cdz cdzVar, String str, String str2, boolean z) {
        cis a2 = cit.a();
        chp a3 = chq.a(cdzVar.h);
        a3.b();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(str2);
        sb.append(".pb");
        a3.c(sb.toString());
        if (z) {
            int i = btj.a;
            bvs.q(chq.d.contains("directboot-files"), "The only supported locations are %s: %s", chq.d, "directboot-files");
            a3.a = "directboot-files";
        }
        a2.e(a3.a());
        a2.d(cgw.h);
        a2.c(f);
        a2.b();
        return b(cdzVar.h, cdzVar.d()).a(a2.a());
    }
}
