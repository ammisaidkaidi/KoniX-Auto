package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cws extends cwr {
    public final ByteBuffer a;

    protected cws() {
        ex.l(true);
        this.a = ByteBuffer.allocate(23).order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // defpackage.cwr, defpackage.cwv
    public final void a(long j) {
        this.a.putLong(j);
        f();
    }

    @Override // defpackage.cwr
    public final void d(byte[] bArr, int i) {
        ByteBuffer order = ByteBuffer.wrap(bArr, 0, i).order(ByteOrder.LITTLE_ENDIAN);
        if (order.remaining() <= this.a.remaining()) {
            this.a.put(order);
            f();
            return;
        }
        int position = 16 - this.a.position();
        for (int i2 = 0; i2 < position; i2++) {
            this.a.put(order.get());
        }
        e();
        while (order.remaining() >= 16) {
            g(order);
        }
        this.a.put(order);
    }

    public final void e() {
        this.a.flip();
        while (this.a.remaining() >= 16) {
            g(this.a);
        }
        this.a.compact();
    }

    public final void f() {
        if (this.a.remaining() < 8) {
            e();
        }
    }

    protected abstract void g(ByteBuffer byteBuffer);
}
