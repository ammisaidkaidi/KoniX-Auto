package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkerResultSuccess extends GuavaPreconditionsSuppliersUtil {
    public final WorkData a;

    public WorkerResultSuccess() {
        this(agk.a);
    }

    public WorkerResultSuccess(WorkData agkVar) {
        this.a = agkVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((WorkerResultSuccess) obj).a);
    }

    public final int hashCode() {
        return (WorkerResultSuccess.class.getName().hashCode() * 31) + this.a.hashCode();
    }

    public final String toString() {
        return "Success {mOutputData=" + this.a + '}';
    }
}
