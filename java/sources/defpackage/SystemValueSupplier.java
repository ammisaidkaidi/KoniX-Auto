package defpackage;

import java.nio.ByteBuffer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemValueSupplier extends CachingValueSupplier {
    public long b = 0;
    public long c = 0;
    public int d = 0;

    public static long h(long j) {
        long j2 = (ProtoMessageTwoIntsAndFlagValue ^ (ProtoMessageTwoIntsAndFlagValue >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    public static long i(long j) {
        return Long.rotateLeft(ProtoMessageTwoIntsAndFlagValue * (-8663945395140668459L), 31) * 5545529020109919103L;
    }

    public static long j(long j) {
        return Long.rotateLeft(ProtoMessageTwoIntsAndFlagValue * 5545529020109919103L, 33) * (-8663945395140668459L);
    }

    @Override // defpackage.CachingValueSupplier
    protected final void g(ByteBuffer byteBuffer) {
        long j = byteBuffer.getLong();
        long j2 = byteBuffer.getLong();
        long i = i(ProtoMessageTwoIntsAndFlagValue) ^ this.b;
        this.b = i;
        long rotateLeft = Long.rotateLeft(i, 27);
        long j3 = this.c;
        this.b = ((rotateLeft + j3) * 5) + 1390208809;
        long j4 = j(j2) ^ j3;
        this.c = j4;
        this.c = ((Long.rotateLeft(j4, 31) + this.b) * 5) + 944331445;
        this.d += 16;
    }
}
