package defpackage;

import java.io.OutputStream;
import java.io.Writer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EncodingOutputStream extends OutputStream {
    int a = 0;
    int b = 0;
    int c = 0;
    final /* synthetic */ Writer d;
    final /* synthetic */ BaseEncoding e;

    public EncodingOutputStream(BaseEncoding cxdVar, Writer writer) {
        this.e = cxdVar;
        this.d = writer;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.b;
        if (NavInstructionTypeEnum > 0) {
            int i2 = this.a;
            Base64Codec cwzVar = this.e.b;
            this.d.write(cwzVar.a((i2 << (cwzVar.d - i)) & cwzVar.c));
            this.c++;
            if (this.e.c != null) {
                while (true) {
                    int i3 = this.c;
                    BaseEncoding cxdVar = this.e;
                    if (i3 % cxdVar.b.e == 0) {
                        break;
                    }
                    this.d.write(cxdVar.c.charValue());
                    this.c++;
                }
            }
        }
        this.d.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        this.d.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.a = (NavInstructionTypeEnum & 255) | (this.SingleStringProtoMessage << 8);
        int i2 = this.b + 8;
        while (true) {
            this.b = i2;
            int i3 = this.b;
            Base64Codec cwzVar = this.e.b;
            int i4 = cwzVar.d;
            if (i3 < i4) {
                return;
            }
            this.d.write(cwzVar.a((this.a >> (i3 - i4)) & cwzVar.c));
            this.c++;
            i2 = this.b - this.e.b.d;
        }
    }
}
