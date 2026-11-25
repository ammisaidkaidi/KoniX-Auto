package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class WorkerInstantiatorBase {
    private static final String a = WorkLogger.b("InputMerger");

    public static WorkerInstantiatorBase b(String str) {
        try {
            return (WorkerInstantiatorBase) Class.forName(str).newInstance();
        } catch (Exception e) {
            WorkLogger.a();
            WorkLogger.e(a, "Trouble instantiating + ".concat(String.valueOf(str)), e);
            return null;
        }
    }

    public abstract WorkData a(List list);
}
