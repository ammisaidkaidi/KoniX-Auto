package defpackage;

import java.io.FilterInputStream;
import java.io.InputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
final class XorDecodingInputStream extends FilterInputStream {
    private final byte[] a;
    private long b;

    public XorDecodingInputStream(InputStream inputStream, byte[] bArr) {
        super(inputStream);
        this.b = 0L;
        this.a = bArr;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = this.in.read();
        if (read == -1) {
            return -1;
        }
        byte[] bArr = this.a;
        long j = this.b;
        this.b = 1 + j;
        return (read ^ bArr[(int) (ProtoMessageTwoIntsAndFlagValue % bArr.length)]) & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.in.read(bArr, i, i2);
        if (read > 0) {
            while (NavInstructionTypeEnum < read) {
                byte b = bArr[i];
                byte[] bArr2 = this.a;
                long j = this.b;
                this.b = 1 + j;
                bArr[i] = (byte) (ProtoLiteMessageBase ^ bArr2[(int) (ProtoMessageTwoIntsAndFlagValue % bArr2.length)]);
                i++;
            }
        }
        return read;
    }
}
