package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkOperationFailureState extends GuavaMapEntryChecksUtil {
    public final Throwable a;

    public WorkOperationFailureState(Throwable th) {
        this.a = th;
    }

    public final String toString() {
        return String.format("FAILURE (%s)", this.a.getMessage());
    }
}
