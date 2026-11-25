package defpackage;

import androidx.preference.Preference;
import j$.util.Iterator;
import j$.util.function.Consumer;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SplittingIterator implements Iterator, j$.util.Iterator {
    public int a;
    final CharSequence b;
    final boolean c;
    int d;
    int e;
    final /* synthetic */ SplitterStrategy f;
    private Object g;

    /* JADX WARN: 'this' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public SplittingIterator(SplitterStrategy cogVar, GuavaSplitter coiVar, CharSequence charSequence) {
        this(coiVar, charSequence);
        this.f = cogVar;
    }

    protected SplittingIterator(GuavaSplitter coiVar, CharSequence charSequence) {
        this.a = 2;
        this.d = 0;
        this.c = coiVar.a;
        this.e = Preference.DEFAULT_ORDER;
        this.b = charSequence;
    }

    public static int b(int i) {
        return i + 1;
    }

    public final int a(int i) {
        TypedBundlePutHelper ewVar = this.f.a;
        CharSequence charSequence = this.b;
        int length = charSequence.length();
        ex.w(i, length);
        while (NavInstructionTypeEnum < length) {
            if (charSequence.charAt(NavInstructionTypeEnum) == ((PrecomputedCharMatcher) ewVar).a) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        r5 = r9.e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0066, code lost:
    
        if (r5 != 1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0068, code lost:
    
        r1 = r9.b.length();
        r9.d = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        if (r1 <= r0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0072, code lost:
    
        r9.b.charAt(r1 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007d, code lost:
    
        r5 = r9.b.subSequence(r0, r1).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007a, code lost:
    
        r9.e = r5 - 1;
     */
    @Override // java.util.Iterator, j$.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean hasNext() {
        int b;
        ex.r(this.a != 4);
        int i = this.a;
        int i2 = i - 1;
        String str = null;
        if (NavInstructionTypeEnum == 0) {
            throw null;
        }
        switch (i2) {
            case 0:
                return true;
            case 1:
            default:
                this.a = 4;
                int i3 = this.d;
                while (true) {
                    int i4 = this.d;
                    if (i4 != -1) {
                        int a = a(i4);
                        if (SingleStringProtoMessage == -1) {
                            a = this.b.length();
                            this.d = -1;
                            b = -1;
                        } else {
                            b = b(SingleStringProtoMessage);
                            this.d = b;
                        }
                        if (ProtoLiteMessageBase == i3) {
                            int i5 = b + 1;
                            this.d = i5;
                            if (i5 > this.b.length()) {
                                this.d = -1;
                            }
                        } else {
                            if (i3 < a) {
                                this.b.charAt(i3);
                            }
                            if (i3 < a) {
                                this.b.charAt(SingleStringProtoMessage - 1);
                            }
                            if (this.c && i3 == a) {
                                i3 = this.d;
                            }
                        }
                    } else {
                        this.a = 3;
                    }
                }
                this.g = str;
                if (this.a == 3) {
                    return false;
                }
                this.a = 1;
                return true;
            case 2:
                return false;
        }
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.a = 2;
        Object obj = this.g;
        this.g = null;
        return obj;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
