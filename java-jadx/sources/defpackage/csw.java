package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class csw extends ctf implements ctq, csx {
    final /* synthetic */ csz a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public csw(csz cszVar, Level level) {
        super(level);
        this.a = cszVar;
    }

    @Override // defpackage.ctf
    protected final cwj a() {
        return cwh.a;
    }

    @Override // defpackage.ctf
    protected final boolean b(ctj ctjVar) {
        int a;
        int i;
        cug i2 = i();
        int b = i2.b();
        int i3 = 0;
        while (true) {
            if (i3 >= b) {
                break;
            }
            if (i2.c(i3).a != "eye3tag") {
                i3++;
            } else if (i2.d(ctd.a) == null && i2.d(ctd.g) == null) {
                m(ctd.g, ctv.SMALL);
            }
        }
        cte cteVar = this.c;
        if (cteVar == null) {
            return true;
        }
        if (ctjVar != null) {
            Integer num = (Integer) cteVar.d(ctd.b);
            ctn ctnVar = (ctn) this.c.d(ctd.c);
            cte cteVar2 = this.c;
            ctl ctlVar = cto.a;
            Object obj = ctlVar.a.get(ctjVar);
            if (obj == null) {
                obj = new cto();
                Object putIfAbsent = ctlVar.a.putIfAbsent(ctjVar, obj);
                if (putIfAbsent != null) {
                    obj = putIfAbsent;
                } else {
                    int i4 = cteVar2.b;
                    ctk ctkVar = null;
                    for (int i5 = 0; i5 < i4; i5++) {
                        if (ctd.d.equals(cteVar2.c(i5))) {
                            Object e = cteVar2.e(i5);
                            if (e instanceof ctr) {
                                if (ctkVar == null) {
                                    ctkVar = new ctk(ctlVar, ctjVar);
                                }
                                ((ctr) e).a();
                            }
                        }
                    }
                }
            }
            cto ctoVar = (cto) obj;
            if (num != null) {
                if (ctoVar.b.getAndIncrement() % num.intValue() != 0) {
                    return false;
                }
            }
            if (ctnVar != null) {
                ctoVar.c.get();
                throw null;
            }
        }
        ctv ctvVar = (ctv) this.c.d(ctd.g);
        if (ctvVar != null) {
            ctt cttVar = ctd.g;
            cte cteVar3 = this.c;
            if (cteVar3 != null && (a = cteVar3.a(cttVar)) >= 0) {
                int i6 = a + a;
                int i7 = i6 + 2;
                while (true) {
                    i = cteVar3.b;
                    if (i7 >= i + i) {
                        break;
                    }
                    Object obj2 = cteVar3.a[i7];
                    if (!obj2.equals(cttVar)) {
                        Object[] objArr = cteVar3.a;
                        objArr[i6] = obj2;
                        objArr[i6 + 1] = objArr[i7 + 1];
                        i6 += 2;
                    }
                    i7 += 2;
                }
                cteVar3.b = i - ((i7 - i6) >> 1);
                while (i6 < i7) {
                    cteVar3.a[i6] = null;
                    i6++;
                }
            }
            m(ctd.a, new ctm((Throwable) i().d(ctd.a), ctvVar, cwm.b(ctf.class, ctvVar.f)));
        }
        return true;
    }

    @Override // defpackage.ctf
    protected final /* synthetic */ csv c() {
        return this.a;
    }

    @Override // defpackage.ctf
    protected final /* bridge */ /* synthetic */ ctq d() {
        return this;
    }
}
