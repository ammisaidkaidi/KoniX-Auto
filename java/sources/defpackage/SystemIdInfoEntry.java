package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemIdInfoEntry {
    public String a;
    public int b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SystemIdInfoEntry)) {
            return false;
        }
        SystemIdInfoEntry akjVar = (SystemIdInfoEntry) obj;
        if (this.b != akjVar.b) {
            return false;
        }
        return this.a.equals(akjVar.a);
    }

    public final int hashCode() {
        int hashCode = this.a.hashCode();
        int i = this.b;
        GuavaCollectPreconditionsUtil.B(NavInstructionTypeEnum);
        return (hashCode * 31) + i;
    }
}
