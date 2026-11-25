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
public final class PhenotypeFlagFactoryRegistry {
    public static final /* synthetic */ int a = 0;
    private static volatile Map b = null;
    private static final Object c = new Object();
    private static volatile DataStoreFactory d = null;
    private static final Object e = new Object();
    private static final MigratingProtoSerializer f = new MigratingProtoSerializer(cgw.h);

    static PhenotypeConfigSyncProto a(PhenotypeSyncMessage cemVar) {
        ProtoMsgHoldingMessageAndBool n = PhenotypeConfigSyncProto.h.n();
        if (cemVar == null) {
            return (PhenotypeConfigSyncProto) n.h();
        }
        for (PhenotypeSyncSubMessage cenVar : cemVar.e) {
            ProtoMsgHoldingMessageAndBool n2 = PhenotypeRegistrationSubMessage.e.n();
            String str = cenVar.d;
            if (n2.c) {
                n2.k();
                n2.c = false;
            }
            PhenotypeRegistrationSubMessage cgxVar = (PhenotypeRegistrationSubMessage) n2.b;
            str.getClass();
            cgxVar.a |= 1;
            cgxVar.d = str;
            int d2 = VectorPathDataNode.d(cenVar.b);
            int i = d2 - 1;
            if (d2 == 0) {
                throw null;
            }
            switch (NavInstructionTypeEnum) {
                case 0:
                    long longValue = cenVar.b == 1 ? ((Long) cenVar.c).longValue() : 0L;
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    PhenotypeRegistrationSubMessage cgxVar2 = (PhenotypeRegistrationSubMessage) n2.b;
                    cgxVar2.b = 2;
                    cgxVar2.c = Long.valueOf(longValue);
                    break;
                case 1:
                    boolean booleanValue = cenVar.b == 2 ? ((Boolean) cenVar.c).booleanValue() : false;
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    PhenotypeRegistrationSubMessage cgxVar3 = (PhenotypeRegistrationSubMessage) n2.b;
                    cgxVar3.b = 3;
                    cgxVar3.c = Boolean.valueOf(booleanValue);
                    break;
                case 2:
                    double doubleValue = cenVar.b == 3 ? ((Double) cenVar.c).doubleValue() : 0.0d;
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    PhenotypeRegistrationSubMessage cgxVar4 = (PhenotypeRegistrationSubMessage) n2.b;
                    cgxVar4.b = 4;
                    cgxVar4.c = Double.valueOf(doubleValue);
                    break;
                case 3:
                    String str2 = cenVar.b == 4 ? (String) cenVar.c : "";
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    PhenotypeRegistrationSubMessage cgxVar5 = (PhenotypeRegistrationSubMessage) n2.b;
                    str2.getClass();
                    cgxVar5.b = 5;
                    cgxVar5.c = str2;
                    break;
                case 4:
                    ByteString dclVar = cenVar.b == 5 ? (ByteString) cenVar.c : dcl.b;
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    PhenotypeRegistrationSubMessage cgxVar6 = (PhenotypeRegistrationSubMessage) n2.b;
                    dclVar.getClass();
                    cgxVar6.b = 6;
                    cgxVar6.c = dclVar;
                    break;
                default:
                    throw new IllegalStateException("No known flag type");
            }
            PhenotypeRegistrationSubMessage cgxVar7 = (PhenotypeRegistrationSubMessage) n2.h();
            if (n.c) {
                n.k();
                n.c = false;
            }
            PhenotypeConfigSyncProto cgwVar = (PhenotypeConfigSyncProto) n.b;
            cgxVar7.getClass();
            ProtobufList ddrVar = cgwVar.g;
            if (!ddrVar.c()) {
                cgwVar.g = GeneratedMessageLite.z(ddrVar);
            }
            cgwVar.g.add(cgxVar7);
        }
        String str3 = cemVar.d;
        if (n.c) {
            n.k();
            n.c = false;
        }
        PhenotypeConfigSyncProto cgwVar2 = (PhenotypeConfigSyncProto) n.b;
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
            ByteString dclVar2 = cemVar.c;
            dclVar2.getClass();
            cgwVar2.a = i4 | 2;
            cgwVar2.c = dclVar2;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (n.c) {
            n.k();
            n.c = false;
        }
        PhenotypeConfigSyncProto cgwVar3 = (PhenotypeConfigSyncProto) n.b;
        cgwVar3.a |= 16;
        cgwVar3.f = currentTimeMillis;
        return (PhenotypeConfigSyncProto) n.h();
    }

    static DataStoreFactory b(Context context, ListeningScheduledExecutorService daiVar) {
        DataStoreFactory civVar = d;
        if (civVar == null) {
            synchronized (ProtoFlagValueMessage) {
                civVar = d;
                if (civVar == null) {
                    MobStoreFileStorageRegistry chmVar = new MobStoreFileStorageRegistry(Collections.singletonList(new AndroidFileBackend(new AppContextModule(context, null), null)));
                    DataStoreRegistry ciwVar = new DataStoreRegistry();
                    ciwVar.a = daiVar;
                    ciwVar.b = chmVar;
                    AbstractDataStoreStorage cjrVar = cjd.a;
                    ex.o(!ciwVar.c.containsKey("singleproc"), "There is already a factory registered for the ID %s", "singleproc");
                    ciwVar.c.put("singleproc", cjrVar);
                    DataStoreFactory civVar2 = new DataStoreFactory(ciwVar.a, ciwVar.b, ciwVar.d, ciwVar.c);
                    d = civVar2;
                    civVar = civVar2;
                }
            }
        }
        return civVar;
    }

    static ImmutableMapBase c(PhenotypeConfigSyncProto cgwVar) {
        int i;
        HashMap hashMap = new HashMap(GuavaCollectPreconditionsUtil.C(cgwVar.g.size() + 3));
        Iterator it = cgwVar.g.iterator();
        while (true) {
            if (!it.hasNext()) {
                hashMap.put("__phenotype_server_token", cgwVar.d);
                hashMap.put("__phenotype_snapshot_token", cgwVar.b);
                hashMap.put("__phenotype_configuration_version", Long.valueOf(cgwVar.e));
                Set<Map.Entry> entrySet = hashMap.entrySet();
                boolean z = entrySet instanceof Collection;
                ImmutableMapBuilder cqiVar = new ImmutableMapBuilder(IcuMessageFormat ? entrySet.size() : 4);
                if (IcuMessageFormat) {
                    cqiVar.e(cqiVar.b + entrySet.size());
                }
                for (Map.Entry entry : entrySet) {
                    cqiVar.f(entry.getKey(), entry.getValue());
                }
                return cqiVar.c();
            }
            PhenotypeRegistrationSubMessage cgxVar = (PhenotypeRegistrationSubMessage) it.next();
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
            if (NavInstructionTypeEnum == 0) {
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
                    hashMap.put(cgxVar.d, (i2 == 6 ? (ByteString) cgxVar.c : dcl.b).C());
                    break;
            }
        }
    }

    static ListenableFuture d(PhenotypeContext cdzVar, String str, String str2) {
        return TransformFuture.o(cdzVar.b().c(str, str2), cgt.a, cdzVar.d());
    }

    public static ListenableFuture e(PhenotypeContext cdzVar, final String str, String str2, final PhenotypeConfigSyncProto cgwVar, boolean z, boolean z2) {
        if (str.indexOf(35) < 0 && !z2) {
            final int i = 1;
            final ListenableFuture b2 = g(cdzVar, PhenotypeUriBuilder.b(cdzVar.h, str), str2, z).b(new GuavaFunction() { // from class: cgs
                @Override // defpackage.GuavaFunction
                public final Object a(Object obj) {
                    switch (NavInstructionTypeEnum) {
                        case 0:
                            PhenotypeConfigSyncProto cgwVar2 = cgwVar;
                            int i2 = cgv.a;
                            return cgwVar2;
                        default:
                            PhenotypeConfigSyncProto cgwVar3 = cgwVar;
                            int i3 = cgv.a;
                            return cgwVar3;
                    }
                }
            }, cdzVar.d());
            b2.aW(new Runnable() { // from class: cgu
                @Override // java.lang.Runnable
                public final void run() {
                    ListenableFuture dagVar = ListenableFuture.this;
                    String str3 = str;
                    int i2 = cgv.a;
                    try {
                        ProjectionIntentHelper.o(dagVar);
                    } catch (ExecutionException e2) {
                        String.valueOf(str3).length();
                    }
                }
            }, cdzVar.d());
        }
        ProtoDataStoreImpl g = g(cdzVar, str, str2, z);
        final int i2 = 0;
        return g.b(new GuavaFunction() { // from class: cgs
            @Override // defpackage.GuavaFunction
            public final Object a(Object obj) {
                switch (i2) {
                    case 0:
                        PhenotypeConfigSyncProto cgwVar2 = cgwVar;
                        int i22 = cgv.a;
                        return cgwVar2;
                    default:
                        PhenotypeConfigSyncProto cgwVar3 = cgwVar;
                        int i3 = cgv.a;
                        return cgwVar3;
                }
            }
        }, cdzVar.d());
    }

    public static Map f(Context context) {
        Map map = b;
        if (map == null) {
            synchronized (PhenotypeFlagMessage) {
                map = b;
                if (map == null) {
                    ImmutableMapBuilder e2 = ImmutableMapBase.e();
                    try {
                        for (String str : context.getAssets().list("phenotype")) {
                            try {
                                AssetManager assets = context.getAssets();
                                String valueOf = String.valueOf(str);
                                InputStream open = assets.open(valueOf.length() != 0 ? "phenotype/".concat(valueOf) : new String("phenotype/"));
                                try {
                                    PhenotypeFlagKey cfnVar = new PhenotypeFlagKey(context, (StickyAccountProto) GeneratedMessageLite.q(cfo.g, open, ExtensionRegistryLite.b()));
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
                            } catch (InvalidProtocolBufferException e3) {
                                String valueOf2 = String.valueOf(str);
                                Log.e("SnapshotHandler", valueOf2.length() != 0 ? "Unable to read Phenotype PackageMetadata for ".concat(valueOf2) : new String("Unable to read Phenotype PackageMetadata for "), e3);
                            }
                        }
                    } catch (IOException e4) {
                        Log.e("SnapshotHandler", "Unable to read Phenotype PackageMetadata from assets.", e4);
                    }
                    ImmutableMapBase c2 = e2.c();
                    b = c2;
                    map = c2;
                }
            }
        }
        return map;
    }

    static ProtoDataStoreImpl g(PhenotypeContext cdzVar, String str, String str2, boolean z) {
        ProtoDataStoreConfigBuilder a2 = ProtoDataStoreConfig.a();
        MobStorePathBuilder a3 = FileKeyFactory.a(cdzVar.h);
        a3.b();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(str2);
        StaggeredGridLayoutParams.append(".pb");
        a3.c(StaggeredGridLayoutParams.toString());
        if (IcuMessageFormat) {
            int i = btj.a;
            PrimesMetricExtensionUtils.q(FileKeyFactory.d.contains("directboot-files"), "The only supported locations are %s: %s", chq.d, "directboot-files");
            a3.a = "directboot-files";
        }
        a2.e(a3.a());
        a2.d(cgw.h);
        a2.c(NavManeuverTypeEnum);
        a2.b();
        return b(cdzVar.h, cdzVar.d()).a(a2.a());
    }
}
