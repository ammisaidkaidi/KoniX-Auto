package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class agq extends ex {
    public final agk a;

    public agq() {
        this(agk.a);
    }

    public agq(agk agkVar) {
        this.a = agkVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((agq) obj).a);
    }

    public final int hashCode() {
        return (agq.class.getName().hashCode() * 31) + this.a.hashCode();
    }

    public final String toString() {
        return "Success {mOutputData=" + this.a + '}';
    }
}
