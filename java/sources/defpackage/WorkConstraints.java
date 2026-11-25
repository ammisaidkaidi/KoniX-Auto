package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkConstraints {
    public static final WorkConstraints a = new WorkConstraints(new WorkConstraintsBuilder());
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    public long f;
    public long g;
    public ContentUriTriggerSet h;
    public int i;

    public WorkConstraints() {
        this.i = 1;
        this.f = -1L;
        this.g = -1L;
        this.h = new ContentUriTriggerSet();
    }

    public final boolean a() {
        return this.h.a() > 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WorkConstraints aghVar = (WorkConstraints) obj;
        if (this.b == aghVar.b && this.c == aghVar.c && this.d == aghVar.d && this.e == aghVar.e && this.f == aghVar.f && this.g == aghVar.g && this.i == aghVar.i) {
            return this.h.equals(aghVar.h);
        }
        return false;
    }

    public WorkConstraints(WorkConstraintsBuilder aggVar) {
        this.i = 1;
        this.f = -1L;
        this.g = -1L;
        this.h = new ContentUriTriggerSet();
        this.b = false;
        this.c = false;
        this.i = 1;
        this.d = false;
        this.e = false;
        this.h = aggVar.a;
        this.f = -1L;
        this.g = -1L;
    }

    public final int hashCode() {
        int i = this.i;
        if (NavInstructionTypeEnum == 0) {
            throw null;
        }
        boolean z = this.b;
        boolean z2 = this.c;
        boolean z3 = this.d;
        boolean z4 = this.e;
        long j = this.f;
        long j2 = this.g;
        return (((((((((((((NavInstructionTypeEnum * 31) + (IcuMessageFormat ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + ((int) ((ProtoMessageTwoIntsAndFlagValue >>> 32) ^ j))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + this.h.hashCode();
    }

    public WorkConstraints(WorkConstraints aghVar) {
        this.i = 1;
        this.f = -1L;
        this.g = -1L;
        this.h = new ContentUriTriggerSet();
        this.b = aghVar.b;
        this.c = aghVar.c;
        this.i = aghVar.i;
        this.d = aghVar.d;
        this.e = aghVar.e;
        this.h = aghVar.h;
    }
}
