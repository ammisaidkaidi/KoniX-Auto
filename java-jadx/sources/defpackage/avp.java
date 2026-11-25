package defpackage;

import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class avp {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/bluetooth/RfcommChannel");
    public final OutputStream b;
    final Thread c;
    public volatile boolean d;
    public final Executor e;
    public final Executor f;
    public final avu g;
    private final InputStream h;

    public avp(String str, avu avuVar, InputStream inputStream, OutputStream outputStream, Executor executor, Executor executor2) {
        this.g = avuVar;
        this.h = inputStream;
        this.b = outputStream;
        this.e = executor;
        this.f = executor2;
        this.c = new Thread(new avm(this, 1), str.length() != 0 ? "RFCOMM Channel ".concat(str) : new String("RFCOMM Channel "));
    }

    public final ByteBuffer a(int i) {
        ByteBuffer allocate = ByteBuffer.allocate(i);
        while (allocate.hasRemaining()) {
            int read = this.h.read(allocate.array(), allocate.position(), allocate.remaining());
            if (read == -1) {
                throw new EOFException("RFCOMM reached end of file");
            }
            allocate.position(allocate.position() + read);
        }
        allocate.position(0);
        return allocate;
    }
}
