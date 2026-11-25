package defpackage;

import androidx.preference.Preference;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RopeByteString extends ByteString {
    public static final int[] a = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Preference.DEFAULT_ORDER};
    private static final long serialVersionUID = 1;
    public final int d;
    public final ByteString e;
    public final ByteString f;
    public final int g;
    private final int h;

    public RopeByteString(ByteString dclVar, ByteString dclVar2) {
        this.e = dclVar;
        this.f = dclVar2;
        int d = dclVar.d();
        this.h = d;
        this.d = d + dclVar2.d();
        this.g = Math.max(dclVar.f(), dclVar2.f()) + 1;
    }

    public static int c(int i) {
        int[] iArr = a;
        int length = iArr.length;
        return i >= 47 ? Preference.DEFAULT_ORDER : iArr[i];
    }

    public static ByteString g(ByteString dclVar, ByteString dclVar2) {
        int d = dclVar.d();
        int d2 = dclVar2.d();
        byte[] bArr = new byte[d + d2];
        dclVar.D(bArr, 0, d);
        dclVar2.D(bArr, d, d2);
        return ByteString.x(bArr);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override // defpackage.ByteString
    public final byte a(int i) {
        A(i, this.d);
        return b(NavInstructionTypeEnum);
    }

    @Override // defpackage.ByteString
    public final byte b(int i) {
        int i2 = this.h;
        return NavInstructionTypeEnum < i2 ? this.e.b(NavInstructionTypeEnum) : this.f.b(NavInstructionTypeEnum - i2);
    }

    @Override // defpackage.ByteString
    public final int d() {
        return this.d;
    }

    @Override // defpackage.ByteString
    protected final void e(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.h;
        if (NavInstructionTypeEnum + i3 <= i4) {
            this.e.e(bArr, i, i2, i3);
        } else {
            if (NavInstructionTypeEnum >= i4) {
                this.f.e(bArr, i - i4, i2, i3);
                return;
            }
            int i5 = i4 - i;
            this.e.e(bArr, i, i2, i5);
            this.f.e(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    @Override // defpackage.ByteString
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString dclVar = (ByteString) obj;
        if (this.d != dclVar.d()) {
            return false;
        }
        if (this.d == 0) {
            return true;
        }
        int i = this.c;
        int i2 = dclVar.c;
        if (NavInstructionTypeEnum != 0 && i2 != 0 && i != i2) {
            return false;
        }
        ByteStringLeafIterator dfeVar = new ByteStringLeafIterator(this);
        AbstractByteString next = dfeVar.next();
        ByteStringLeafIterator dfeVar2 = new ByteStringLeafIterator(dclVar);
        AbstractByteString next2 = dfeVar2.next();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int d = next.d() - i3;
            int d2 = next2.d() - i4;
            int min = Math.min(d, d2);
            if (!(i3 == 0 ? next.g(next2, i4, min) : next2.g(next, i3, min))) {
                return false;
            }
            i5 += min;
            int i6 = this.d;
            if (i5 >= i6) {
                if (i5 == i6) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == d) {
                i3 = 0;
                next = dfeVar.next();
            } else {
                i3 += min;
                next = next;
            }
            if (min == d2) {
                next2 = dfeVar2.next();
                i4 = 0;
            } else {
                i4 += min;
            }
        }
    }

    @Override // defpackage.ByteString
    protected final int f() {
        return this.g;
    }

    @Override // defpackage.ByteString
    public final boolean h() {
        return this.d >= c(this.g);
    }

    @Override // defpackage.ByteString
    protected final int i(int i, int i2, int i3) {
        int i4 = this.h;
        if (i2 + i3 <= i4) {
            return this.e.i(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f.i(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f.i(this.e.i(i, i2, i5), 0, i3 - i5);
    }

    @Override // defpackage.ByteString, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // defpackage.ByteString
    protected final int j(int i, int i2, int i3) {
        int i4 = this.h;
        if (i2 + i3 <= i4) {
            return this.e.j(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f.j(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f.j(this.e.j(i, i2, i5), 0, i3 - i5);
    }

    @Override // defpackage.ByteString
    public final ByteString k(int i, int i2) {
        int r = r(i, i2, this.d);
        if (IcuMessagePattern == 0) {
            return dcl.b;
        }
        if (IcuMessagePattern == this.d) {
            return this;
        }
        int i3 = this.h;
        if (i2 <= i3) {
            return this.e.k(i, i2);
        }
        if (NavInstructionTypeEnum >= i3) {
            return this.f.k(NavInstructionTypeEnum - i3, i2 - i3);
        }
        ByteString dclVar = this.e;
        return new RopeByteString(dclVar.k(i, dclVar.d()), this.f.k(0, i2 - this.h));
    }

    @Override // defpackage.ByteString
    public final CodedInputStreamReaderBase l() {
        ArrayList<ByteBuffer> arrayList = new ArrayList();
        ByteStringLeafIterator dfeVar = new ByteStringLeafIterator(this);
        while (dfeVar.hasNext()) {
            arrayList.add(dfeVar.next().n());
        }
        int i = dcp.d;
        int i2 = 0;
        int i3 = 0;
        for (ByteBuffer byteBuffer : arrayList) {
            i3 += byteBuffer.remaining();
            i2 = byteBuffer.hasArray() ? i2 | 1 : byteBuffer.isDirect() ? i2 | 2 : i2 | 4;
        }
        return i2 == 2 ? new CodedInputStreamStreamReader(arrayList, i3) : CodedInputStreamReaderBase.H(new ByteStringInputStream(arrayList));
    }

    @Override // defpackage.ByteString
    protected final String m(Charset charset) {
        return new String(C(), charset);
    }

    @Override // defpackage.ByteString
    public final ByteBuffer n() {
        throw null;
    }

    @Override // defpackage.ByteString
    public final void o(ByteOutputSink dceVar) {
        this.e.o(dceVar);
        this.f.o(dceVar);
    }

    @Override // defpackage.ByteString
    public final void p(OutputStream outputStream) {
        this.e.p(outputStream);
        this.f.p(outputStream);
    }

    @Override // defpackage.ByteString
    public final boolean q() {
        int j = this.e.j(0, 0, this.h);
        ByteString dclVar = this.f;
        return dclVar.j(j, 0, dclVar.d()) == 0;
    }

    @Override // defpackage.ByteString
    /* renamed from: s */
    public final ByteStringIterator iterator() {
        return new RopeByteStringIterator(this);
    }

    Object writeReplace() {
        return ByteString.x(C());
    }
}
