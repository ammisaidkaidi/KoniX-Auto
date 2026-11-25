package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StackTraceSnapshot {
    public static final StackTraceSnapshot a = new StackTraceSnapshot(new ThreadStateSampleBuffer[0]);
    public final ThreadStateSampleBuffer[] b;
    public final int[] c;

    public StackTraceSnapshot(ThreadStateSampleBuffer[] buvVarArr) {
        this.b = buvVarArr;
        this.c = new int[buvVarArr.length];
        for (int i = 0; NavInstructionTypeEnum < buvVarArr.length; i++) {
            int[] iArr = this.c;
            int i2 = buvVarArr[i].b;
            iArr[i] = 0;
        }
    }
}
