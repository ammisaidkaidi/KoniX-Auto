package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkNetworkState {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;

    public WorkNetworkState(boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkNetworkState)) {
            return false;
        }
        WorkNetworkState aitVar = (WorkNetworkState) obj;
        return this.a == aitVar.a && this.b == aitVar.b && this.c == aitVar.c && this.d == aitVar.d;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final int hashCode() {
        ?? r0 = this.a;
        int i = r0;
        if (this.b) {
            i = r0 + 16;
        }
        int i2 = i;
        if (this.c) {
            i2 = i + 256;
        }
        return this.d ? i2 + 4096 : i2;
    }

    public final String toString() {
        return String.format("[ Connected=%ProtoLiteMessageBase Validated=%ProtoLiteMessageBase Metered=%ProtoLiteMessageBase NotRoaming=%b ]", Boolean.valueOf(this.a), Boolean.valueOf(this.b), Boolean.valueOf(this.c), Boolean.valueOf(this.d));
    }
}
