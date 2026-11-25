package defpackage;

import androidx.work.impl.WorkDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkIdGenerator {
    public final WorkDatabase a;

    public WorkIdGenerator(WorkDatabase workDatabase) {
        this.a = workDatabase;
    }

    public final int a(String str) {
        this.a.f();
        try {
            Long b = this.a.t().b(str);
            int i = 0;
            int intValue = b != null ? b.intValue() : 0;
            if (intValue != Integer.MAX_VALUE) {
                i = intValue + 1;
            }
            b(str, i);
            this.a.h();
            return intValue;
        } finally {
            this.a.g();
        }
    }

    public final void b(String str, int i) {
        this.a.t().c(new WorkIdTimestampPair(str, i));
    }
}
