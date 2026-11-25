package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ScrollHelperStubIl {
    public int a;
    public int b;
    public float c;
    public float d;
    public float h;
    public int i;
    public long e = Long.MIN_VALUE;
    public long g = -1;
    public long f = 0;

    public final float a(long j) {
        if (ProtoMessageTwoIntsAndFlagValue < this.e) {
            return 0.0f;
        }
        long j2 = this.g;
        if (j2 < 0 || ProtoMessageTwoIntsAndFlagValue < j2) {
            return in.a((ProtoMessageTwoIntsAndFlagValue - r0) / this.a, 0.0f, 1.0f) * 0.5f;
        }
        float f = this.h;
        return (1.0f - f) + (NavManeuverTypeEnum * in.a((ProtoMessageTwoIntsAndFlagValue - j2) / this.i, 0.0f, 1.0f));
    }
}
