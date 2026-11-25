package defpackage;

import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class nf {
    final qw e;
    private final ge f = new ge(30);
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public int d = 0;
    final qj c = new qj(this);

    public nf(qw qwVar, byte[] bArr) {
        this.e = qwVar;
    }

    private final int m(int i, int i2) {
        int size = this.b.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            ne neVar = (ne) this.b.get(size);
            int i3 = neVar.a;
            if (i3 == 8) {
                int i4 = neVar.b;
                int i5 = neVar.d;
                int i6 = i4 < i5 ? i5 : i4;
                int i7 = i4 < i5 ? i4 : i5;
                if (i < i7 || i > i6) {
                    if (i < i4) {
                        if (i2 == 1) {
                            neVar.b = i4 + 1;
                            neVar.d = i5 + 1;
                        } else if (i2 == 2) {
                            neVar.b = i4 - 1;
                            neVar.d = i5 - 1;
                        }
                    }
                } else if (i7 == i4) {
                    if (i2 == 1) {
                        neVar.d = i5 + 1;
                    } else if (i2 == 2) {
                        neVar.d = i5 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        neVar.b = i4 + 1;
                    } else if (i2 == 2) {
                        neVar.b = i4 - 1;
                    }
                    i--;
                }
            } else {
                int i8 = neVar.b;
                if (i8 <= i) {
                    if (i3 == 1) {
                        i -= neVar.d;
                    } else if (i3 == 2) {
                        i += neVar.d;
                    }
                } else if (i2 == 1) {
                    neVar.b = i8 + 1;
                } else if (i2 == 2) {
                    neVar.b = i8 - 1;
                }
            }
        }
        for (int size2 = this.b.size() - 1; size2 >= 0; size2--) {
            ne neVar2 = (ne) this.b.get(size2);
            if (neVar2.a == 8) {
                int i9 = neVar2.d;
                if (i9 == neVar2.b || i9 < 0) {
                    this.b.remove(size2);
                    h(neVar2);
                }
            } else if (neVar2.d <= 0) {
                this.b.remove(size2);
                h(neVar2);
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
    
        if (r7 == (r0 + 1)) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0055, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
    
        if (r9 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0051, code lost:
    
        if (r7 == r0) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void n(ne neVar) {
        int i;
        int i2 = neVar.a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m = m(neVar.b, i2);
        int i3 = neVar.b;
        switch (neVar.a) {
            case 2:
                i = 0;
                break;
            case 3:
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("op should be remove or update.");
                sb.append(neVar);
                throw new IllegalArgumentException("op should be remove or update.".concat(String.valueOf(neVar)));
            case 4:
                i = 1;
                break;
        }
        int i4 = 1;
        for (int i5 = 1; i5 < neVar.d; i5++) {
            int m2 = m(neVar.b + (i * i5), neVar.a);
            int i6 = neVar.a;
            switch (i6) {
                case 2:
                    break;
                case 3:
                default:
                    ne c = c(i6, m, i4, neVar.c);
                    f(c, i3);
                    h(c);
                    if (neVar.a == 4) {
                        i3 += i4;
                    }
                    m = m2;
                    i4 = 1;
                    break;
                case 4:
                    break;
            }
        }
        Object obj = neVar.c;
        h(neVar);
        if (i4 > 0) {
            ne c2 = c(neVar.a, m, i4, obj);
            f(c2, i3);
            h(c2);
        }
    }

    private final void o(ne neVar) {
        this.b.add(neVar);
        switch (neVar.a) {
            case 1:
                this.e.d(neVar.b, neVar.d);
                return;
            case 2:
                qw qwVar = this.e;
                qwVar.a.L(neVar.b, neVar.d, false);
                qwVar.a.I = true;
                return;
            case 4:
                this.e.c(neVar.b, neVar.d, neVar.c);
                return;
            case 8:
                this.e.e(neVar.b, neVar.d);
                return;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("Unknown update op type for ");
                sb.append(neVar);
                throw new IllegalArgumentException("Unknown update op type for ".concat(String.valueOf(neVar)));
        }
    }

    private final boolean p(int i) {
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ne neVar = (ne) this.b.get(i2);
            int i3 = neVar.a;
            if (i3 == 8) {
                if (b(neVar.d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = neVar.b;
                int i5 = neVar.d + i4;
                while (i4 < i5) {
                    if (b(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    final int a(int i) {
        return b(i, 0);
    }

    final int b(int i, int i2) {
        int size = this.b.size();
        while (i2 < size) {
            ne neVar = (ne) this.b.get(i2);
            int i3 = neVar.a;
            if (i3 == 8) {
                int i4 = neVar.b;
                if (i4 == i) {
                    i = neVar.d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (neVar.d <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = neVar.b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = neVar.d;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += neVar.d;
                }
            }
            i2++;
        }
        return i;
    }

    public final ne c(int i, int i2, int i3, Object obj) {
        ne neVar = (ne) this.f.a();
        if (neVar == null) {
            return new ne(i, i2, i3, obj);
        }
        neVar.a = i;
        neVar.b = i2;
        neVar.d = i3;
        neVar.c = obj;
        return neVar;
    }

    public final void d() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            this.e.b((ne) this.b.get(i));
        }
        i(this.b);
        this.d = 0;
    }

    public final void e() {
        d();
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            ne neVar = (ne) this.a.get(i);
            switch (neVar.a) {
                case 1:
                    this.e.b(neVar);
                    this.e.d(neVar.b, neVar.d);
                    break;
                case 2:
                    this.e.b(neVar);
                    this.e.f(neVar.b, neVar.d);
                    break;
                case 4:
                    this.e.b(neVar);
                    this.e.c(neVar.b, neVar.d, neVar.c);
                    break;
                case 8:
                    this.e.b(neVar);
                    this.e.e(neVar.b, neVar.d);
                    break;
            }
        }
        i(this.a);
        this.d = 0;
    }

    final void f(ne neVar, int i) {
        this.e.b(neVar);
        switch (neVar.a) {
            case 2:
                this.e.f(i, neVar.d);
                return;
            case 3:
            default:
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            case 4:
                this.e.c(i, neVar.d, neVar.c);
                return;
        }
    }

    public final void g() {
        boolean z;
        char c;
        boolean z2;
        ne neVar;
        qj qjVar = this.c;
        ArrayList arrayList = this.a;
        while (true) {
            int size = arrayList.size() - 1;
            boolean z3 = false;
            boolean z4 = false;
            while (true) {
                if (size >= 0) {
                    if (((ne) arrayList.get(size)).a != 8) {
                        z4 = true;
                    } else if (!z4) {
                        z4 = false;
                    }
                    size--;
                } else {
                    size = -1;
                }
            }
            ne neVar2 = null;
            if (size == -1) {
                int size2 = this.a.size();
                for (int i = 0; i < size2; i++) {
                    ne neVar3 = (ne) this.a.get(i);
                    switch (neVar3.a) {
                        case 1:
                            o(neVar3);
                            break;
                        case 2:
                            int i2 = neVar3.b;
                            int i3 = neVar3.d + i2;
                            int i4 = i2;
                            int i5 = 0;
                            char c2 = 65535;
                            while (i4 < i3) {
                                if (this.e.a(i4) != null || p(i4)) {
                                    if (c2 == 0) {
                                        n(c(2, i2, i5, null));
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    c = 1;
                                } else {
                                    if (c2 == 1) {
                                        o(c(2, i2, i5, null));
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    c = 0;
                                }
                                if (z) {
                                    i4 -= i5;
                                    i3 -= i5;
                                    i5 = 1;
                                } else {
                                    i5++;
                                }
                                i4++;
                                c2 = c;
                            }
                            if (i5 != neVar3.d) {
                                h(neVar3);
                                neVar3 = c(2, i2, i5, null);
                            }
                            if (c2 == 0) {
                                n(neVar3);
                                break;
                            } else {
                                o(neVar3);
                                break;
                            }
                        case 4:
                            int i6 = neVar3.b;
                            int i7 = neVar3.d + i6;
                            int i8 = i6;
                            int i9 = 0;
                            char c3 = 65535;
                            while (i6 < i7) {
                                if (this.e.a(i6) != null || p(i6)) {
                                    if (c3 == 0) {
                                        n(c(4, i8, i9, neVar3.c));
                                        i8 = i6;
                                        i9 = 0;
                                    }
                                    c3 = 1;
                                } else {
                                    if (c3 == 1) {
                                        o(c(4, i8, i9, neVar3.c));
                                        i8 = i6;
                                        i9 = 0;
                                    }
                                    c3 = 0;
                                }
                                i9++;
                                i6++;
                            }
                            if (i9 != neVar3.d) {
                                Object obj = neVar3.c;
                                h(neVar3);
                                neVar3 = c(4, i8, i9, obj);
                            }
                            if (c3 == 0) {
                                n(neVar3);
                                break;
                            } else {
                                o(neVar3);
                                break;
                            }
                            break;
                        case 8:
                            o(neVar3);
                            break;
                    }
                }
                this.a.clear();
                return;
            }
            int i10 = size + 1;
            ne neVar4 = (ne) arrayList.get(size);
            ne neVar5 = (ne) arrayList.get(i10);
            switch (neVar5.a) {
                case 1:
                    int i11 = neVar4.d;
                    int i12 = neVar5.b;
                    int i13 = i11 >= i12 ? 0 : -1;
                    int i14 = neVar4.b;
                    if (i14 < i12) {
                        i13++;
                    }
                    if (i12 <= i14) {
                        neVar4.b = i14 + neVar5.d;
                    }
                    int i15 = neVar5.b;
                    if (i15 <= i11) {
                        neVar4.d = i11 + neVar5.d;
                    }
                    neVar5.b = i15 + i13;
                    arrayList.set(size, neVar5);
                    arrayList.set(i10, neVar4);
                    break;
                case 2:
                    int i16 = neVar4.b;
                    int i17 = neVar4.d;
                    if (i16 < i17) {
                        if (neVar5.b == i16 && neVar5.d == i17 - i16) {
                            z2 = false;
                            z3 = true;
                        } else {
                            z2 = false;
                        }
                    } else if (neVar5.b == i17 + 1 && neVar5.d == i16 - i17) {
                        z2 = true;
                        z3 = true;
                    } else {
                        z2 = true;
                    }
                    int i18 = neVar5.b;
                    if (i17 < i18) {
                        i18--;
                        neVar5.b = i18;
                    } else {
                        int i19 = neVar5.d;
                        if (i17 < i18 + i19) {
                            neVar5.d = i19 - 1;
                            neVar4.a = 2;
                            neVar4.d = 1;
                            if (neVar5.d == 0) {
                                arrayList.remove(i10);
                                qjVar.a.h(neVar5);
                                break;
                            } else {
                                break;
                            }
                        }
                    }
                    int i20 = neVar4.b;
                    if (i20 <= i18) {
                        neVar5.b = i18 + 1;
                    } else {
                        int i21 = i18 + neVar5.d;
                        if (i20 < i21) {
                            neVar2 = qjVar.a.c(2, i20 + 1, i21 - i20, null);
                            neVar5.d = neVar4.b - neVar5.b;
                        }
                    }
                    if (z3) {
                        arrayList.set(size, neVar5);
                        arrayList.remove(i10);
                        qjVar.a.h(neVar4);
                        break;
                    } else {
                        if (z2) {
                            if (neVar2 != null) {
                                int i22 = neVar4.b;
                                if (i22 > neVar2.b) {
                                    neVar4.b = i22 - neVar2.d;
                                }
                                int i23 = neVar4.d;
                                if (i23 > neVar2.b) {
                                    neVar4.d = i23 - neVar2.d;
                                }
                            }
                            int i24 = neVar4.b;
                            if (i24 > neVar5.b) {
                                neVar4.b = i24 - neVar5.d;
                            }
                            int i25 = neVar4.d;
                            if (i25 > neVar5.b) {
                                neVar4.d = i25 - neVar5.d;
                            }
                        } else {
                            if (neVar2 != null) {
                                int i26 = neVar4.b;
                                if (i26 >= neVar2.b) {
                                    neVar4.b = i26 - neVar2.d;
                                }
                                int i27 = neVar4.d;
                                if (i27 >= neVar2.b) {
                                    neVar4.d = i27 - neVar2.d;
                                }
                            }
                            int i28 = neVar4.b;
                            if (i28 >= neVar5.b) {
                                neVar4.b = i28 - neVar5.d;
                            }
                            int i29 = neVar4.d;
                            if (i29 >= neVar5.b) {
                                neVar4.d = i29 - neVar5.d;
                            }
                        }
                        arrayList.set(size, neVar5);
                        if (neVar4.b != neVar4.d) {
                            arrayList.set(i10, neVar4);
                        } else {
                            arrayList.remove(i10);
                        }
                        if (neVar2 != null) {
                            arrayList.add(size, neVar2);
                            break;
                        } else {
                            break;
                        }
                    }
                case 4:
                    int i30 = neVar4.d;
                    int i31 = neVar5.b;
                    if (i30 < i31) {
                        neVar5.b = i31 - 1;
                        neVar = null;
                    } else {
                        int i32 = neVar5.d;
                        if (i30 < i31 + i32) {
                            neVar5.d = i32 - 1;
                            neVar = qjVar.a.c(4, neVar4.b, 1, neVar5.c);
                        } else {
                            neVar = null;
                        }
                    }
                    int i33 = neVar4.b;
                    int i34 = neVar5.b;
                    if (i33 <= i34) {
                        neVar5.b = i34 + 1;
                    } else {
                        int i35 = i34 + neVar5.d;
                        if (i33 < i35) {
                            int i36 = i35 - i33;
                            neVar2 = qjVar.a.c(4, i33 + 1, i36, neVar5.c);
                            neVar5.d -= i36;
                        }
                    }
                    arrayList.set(i10, neVar4);
                    if (neVar5.d > 0) {
                        arrayList.set(size, neVar5);
                    } else {
                        arrayList.remove(size);
                        qjVar.a.h(neVar5);
                    }
                    if (neVar != null) {
                        arrayList.add(size, neVar);
                    }
                    if (neVar2 != null) {
                        arrayList.add(size, neVar2);
                        break;
                    } else {
                        break;
                    }
            }
        }
    }

    public final void h(ne neVar) {
        neVar.c = null;
        this.f.b(neVar);
    }

    final void i(List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            h((ne) list.get(i));
        }
        list.clear();
    }

    public final void j() {
        i(this.a);
        i(this.b);
        this.d = 0;
    }

    public final boolean k(int i) {
        return (i & this.d) != 0;
    }

    public final boolean l() {
        return this.a.size() > 0;
    }
}
