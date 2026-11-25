package com.google.android.projection.common;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class BufferPool {
    public static BufferPool a = new BufferPool();
    private final List b = new ArrayList(10);
    private final List c = new ArrayList(20);
    private final List d = new ArrayList(120);

    private BufferPool() {
        for (int i = 0; i < 5; i++) {
            this.b.add(ByteBuffer.allocateDirect(262144));
        }
        for (int i2 = 0; i2 < 10; i2++) {
            this.c.add(ByteBuffer.allocateDirect(16384));
        }
        for (int i3 = 0; i3 < 60; i3++) {
            this.d.add(ByteBuffer.allocateDirect(512));
        }
    }

    public static ByteBuffer getBuffer(int i) {
        ByteBuffer byteBuffer;
        List a2 = a.a(i);
        synchronized (a2) {
            byteBuffer = null;
            if (!a2.isEmpty()) {
                int size = a2.size() - 1;
                ByteBuffer byteBuffer2 = (ByteBuffer) a2.remove(size);
                if (byteBuffer2.capacity() >= i) {
                    byteBuffer = byteBuffer2;
                } else {
                    int i2 = size - 1;
                    while (true) {
                        if (i2 < 0) {
                            break;
                        }
                        if (((ByteBuffer) a2.get(i2)).capacity() >= i) {
                            byteBuffer = (ByteBuffer) a2.get(i2);
                            a2.set(i2, byteBuffer2);
                            break;
                        }
                        i2--;
                    }
                    if (byteBuffer == null) {
                        a2.add(byteBuffer2);
                    }
                }
            }
            if (byteBuffer == null) {
                byteBuffer = ByteBuffer.allocateDirect(i);
            }
        }
        return byteBuffer;
    }

    public final List a(int i) {
        return i <= 512 ? this.d : i <= 16384 ? this.c : this.b;
    }
}
