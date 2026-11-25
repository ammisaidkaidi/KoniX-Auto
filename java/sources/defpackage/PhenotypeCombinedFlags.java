package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.util.Log;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeCombinedFlags implements StopwatchTicker {
    public static final /* synthetic */ int a = 0;
    private static volatile FlagStoreInitializer b = new FlagStoreInitializer(cgi.a);
    private final String c;
    private final String d;
    private final Object e;
    private final FlagConverterMarker f;
    private final Object g = new Object();
    private final Map h = new HashMap();

    public PhenotypeCombinedFlags(String str, String str2, Object obj, FlagConverterMarker cfhVar) {
        obj.getClass();
        this.c = str;
        this.d = str2;
        this.e = obj;
        this.f = cfhVar;
    }

    private final Object c(final PhenotypeContext cdzVar) {
        Object obj;
        Object obj2;
        GuavaOptional cocVar;
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
                FlagConverterMarker cfhVar = this.f;
                String str = this.c;
                String str2 = this.d;
                final String b2 = ((FlagTypeConverter) cfhVar).b ? PhenotypeUriBuilder.b(cdzVar.h, str) : str;
                if (((FlagTypeConverter) cfhVar).c) {
                    ex.u(true, "DirectBoot aware package %s can not access account-scoped flags.", b2);
                }
                ListItemBase.e(cdzVar.d().submit(new PhenotypeSnapshotCleanupTask(cdzVar, b2, i)));
                FlagStoreCache cflVar = cfm.a;
                final boolean z = ((FlagTypeConverter) cfhVar).c;
                final boolean z2 = ((FlagTypeConverter) cfhVar).b;
                StopwatchTicker colVar = new StopwatchTicker() { // from class: cfj
                    @Override // defpackage.StopwatchTicker
                    public final Object a() {
                        return new ProtoDataStoreFlagStore(PhenotypeContext.this, b2, z, z2);
                    }
                };
                GuavaPair a2 = GuavaPair.a(b2, "");
                Object obj4 = (ProtoDataStoreFlagStore) cflVar.a.get(a2);
                if (obj4 == null) {
                    obj4 = colVar.a();
                    ProtoDataStoreFlagStore cfmVar = (ProtoDataStoreFlagStore) cflVar.a.putIfAbsent(a2, obj4);
                    if (cfmVar == null) {
                        Context context = cdzVar.h;
                        PhenotypePackageChangeReceiver.c.putIfAbsent(a2, new FlagStoreSnapshotLambda((ProtoDataStoreFlagStore) obj4));
                        if (!cgf.b) {
                            synchronized (cgf.a) {
                                if (!cgf.b) {
                                    context.registerReceiver(new PhenotypePackageChangeReceiver(), new IntentFilter("com.google.android.gms.phenotype.UPDATE"));
                                    cgf.b = true;
                                }
                            }
                        }
                        PhenotypeAccountDataStore.a.putIfAbsent(a2, new FlagStoreValueSupplier((ProtoDataStoreFlagStore) obj4, 0));
                    } else {
                        obj4 = cfmVar;
                    }
                }
                boolean z3 = ((ProtoDataStoreFlagStore) obj4).f;
                ex.o(true, "Package %s cannot be registered both with and without stickyAccountSupport", b2);
                Object a3 = ((ProtoDataStoreFlagStore) obj4).a(str2);
                if (a3 == null) {
                    obj = null;
                } else {
                    try {
                        obj = ((FlagTypeConverter) cfhVar).e.a(a3);
                    } catch (IOException | ClassCastException e) {
                        Log.e("PhenotypeCombinedFlags", str2.length() != 0 ? "Invalid Phenotype flag value for flag ".concat(str2) : new String("Invalid Phenotype flag value for flag "), e);
                        obj = null;
                    }
                }
                Context context2 = cdzVar.h;
                GuavaOptional cocVar2 = cfg.a;
                if (cocVar2 == null) {
                    synchronized (FlagTypeConverter.class) {
                        if (cfg.a == null) {
                            cfg.a = PhenotypeFlagStringMatcher.c(context2);
                        }
                        cocVar = cfg.a;
                    }
                    cocVar2 = cocVar;
                }
                if (cocVar2.d()) {
                    String a4 = ((PhenotypeFlagUriResolver) cocVar2.a()).a(PhenotypeUriBuilder.a(str), null, null, str2);
                    if (a4 == null) {
                        obj2 = null;
                    } else {
                        try {
                            obj2 = ((FlagTypeConverter) cfhVar).d.a(a4);
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

    @Override // defpackage.StopwatchTicker
    public final Object a() {
        PhenotypeContext a2;
        cdz.d = true;
        Context context = cdz.b;
        if (context != null) {
            a2 = PhenotypeContext.a(context);
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
        return c(PhenotypeContext.a(applicationContext));
    }
}
