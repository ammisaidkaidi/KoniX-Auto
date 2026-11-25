package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkerResultFailure extends GuavaPreconditionsSuppliersUtil {
    public final WorkData a = agk.a;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((WorkerResultFailure) obj).a);
    }

    public final int hashCode() {
        return (WorkerResultFailure.class.getName().hashCode() * 31) + this.a.hashCode();
    }

    public final String toString() {
        return "Failure {mOutputData=" + this.a + '}';
    }
}
