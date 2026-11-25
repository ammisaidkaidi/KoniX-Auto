package defpackage;

import java.nio.ByteBuffer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VideoFrameBuffer {
    public ByteBuffer a;
    public final int b;
    public final long c;

    public VideoFrameBuffer(int i, long j, ByteBuffer byteBuffer) {
        this.a = byteBuffer;
        this.b = i;
        this.c = j;
    }
}
