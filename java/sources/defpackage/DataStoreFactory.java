package defpackage;

import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DataStoreFactory {
    private final Map a = new HashMap();
    private final Map b = new HashMap();
    private final Executor c;
    private final MobStoreFileStorageRegistry d;
    private final AsyncFunctionInterface e;
    private final Map f;
    private final DataStoreOk g;

    public DataStoreFactory(Executor executor, MobStoreFileStorageRegistry chmVar, DataStoreOk cjvVar, Map map) {
        executor.getClass();
        this.c = executor;
        chmVar.getClass();
        this.d = chmVar;
        this.g = cjvVar;
        this.f = map;
        ex.l(!map.isEmpty());
        this.e = ciu.a;
    }

    public final synchronized ProtoDataStoreImpl a(ProtoDataStoreConfig citVar) {
        ProtoDataStoreImpl cjpVar;
        Uri uri = citVar.a;
        cjpVar = (ProtoDataStoreImpl) this.a.get(uri);
        if (cjpVar == null) {
            Uri uri2 = citVar.a;
            ex.o(uri2.isHierarchical(), "Uri must be hierarchical: %s", uri2);
            String c = GuavaPlatformUtils.c(uri2.getLastPathSegment());
            int lastIndexOf = c.lastIndexOf(46);
            boolean z = true;
            ex.o((lastIndexOf == -1 ? "" : c.substring(lastIndexOf + 1)).equals("pb"), "Uri extension must be .pb: %s", uri2);
            ex.m(citVar.b != null, "Proto schema cannot be null");
            ex.m(citVar.c != null, "Handler cannot be null");
            AbstractDataStoreStorage cjrVar = (AbstractDataStoreStorage) this.f.get("singleproc");
            if (cjrVar == null) {
                z = false;
            }
            ex.o(z, "No XDataStoreVariantFactory registered for ID %s", "singleproc");
            String c2 = GuavaPlatformUtils.c(citVar.a.getLastPathSegment());
            int lastIndexOf2 = c2.lastIndexOf(46);
            if (lastIndexOf2 != -1) {
                c2 = c2.substring(0, lastIndexOf2);
            }
            ProtoDataStoreImpl cjpVar2 = new ProtoDataStoreImpl(cjrVar.a(citVar, c2, this.c, this.d), TransformFuture.p(ProjectionIntentHelper.j(citVar.a), this.e, czj.a), citVar.f);
            ImmutableList cqhVar = citVar.d;
            if (!cqhVar.isEmpty()) {
                cjpVar2.c(new ProtoDataStoreReader(cqhVar, this.c));
            }
            this.a.put(uri, cjpVar2);
            this.b.put(uri, citVar);
            cjpVar = cjpVar2;
        } else {
            ex.o(citVar.equals((ProtoDataStoreConfig) this.b.get(uri)), "Arguments must match previous call for Uri: %s", uri);
        }
        return cjpVar;
    }
}
