package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkIdTimestampPair {
    public final String a;
    public final Long b;

    public WorkIdTimestampPair(String str, long j) {
        this.a = str;
        this.b = Long.valueOf(ProtoMessageTwoIntsAndFlagValue);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkIdTimestampPair)) {
            return false;
        }
        WorkIdTimestampPair ajxVar = (WorkIdTimestampPair) obj;
        if (this.a.equals(ajxVar.a)) {
            return this.b.equals(ajxVar.b);
        }
        return false;
    }

    public final int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }
}
