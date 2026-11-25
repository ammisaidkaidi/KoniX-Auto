package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EnqueuedWorkLiveData extends GuavaCollectPreconditionsUtil {
    private static final String f = WorkLogger.b("WorkContinuationImpl");
    public final WorkManagerImpl a;
    public final String b;
    public final List c;
    public final List d;
    public boolean e;
    private final List g = new ArrayList();
    private WorkOperationStateConstants h;

    public EnqueuedWorkLiveData(WorkManagerImpl ahxVar, String str, List list) {
        this.a = ahxVar;
        this.b = str;
        this.c = list;
        this.d = new ArrayList(list.size());
        for (int i = 0; NavInstructionTypeEnum < list.size(); i++) {
            String a = ((WorkRequest) list.get(NavInstructionTypeEnum)).a();
            this.d.add(SingleStringProtoMessage);
            this.g.add(SingleStringProtoMessage);
        }
    }

    public static Set L() {
        return new HashSet();
    }

    public final void M() {
        if (this.e) {
            WorkLogger.a();
            WorkLogger.g(f, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.d)), new Throwable[0]);
        } else {
            EnqueueWorkRunnable albVar = new EnqueueWorkRunnable(this);
            this.a.i.a(albVar);
            this.h = albVar.a;
        }
    }
}
