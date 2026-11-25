package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ago extends ex {
    public final agk a = agk.a;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((ago) obj).a);
    }

    public final int hashCode() {
        return (ago.class.getName().hashCode() * 31) + this.a.hashCode();
    }

    public final String toString() {
        return "Failure {mOutputData=" + this.a + '}';
    }
}
