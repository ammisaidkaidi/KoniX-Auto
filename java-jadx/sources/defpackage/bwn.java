package defpackage;

import android.content.Context;
import android.text.TextUtils;
import androidx.preference.Preference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bwn {
    public final bwl a;
    public final dny b;
    public final ccd c;
    public final dny d;
    public final but e;
    private final bul f;
    private final Executor g;

    public bwn(bwl bwlVar, dny dnyVar, bul bulVar, cce cceVar, dny dnyVar2, but butVar, Executor executor, dgz dgzVar, dny dnyVar3) {
        this.a = bwlVar;
        this.f = bulVar;
        this.b = dnyVar;
        this.g = executor;
        this.d = new caw(dnyVar2, 1);
        Context a = ((dhr) cceVar.a).a();
        Executor executor2 = (Executor) cceVar.b.a();
        executor2.getClass();
        this.c = new ccd(a, executor2, (cch) cceVar.c.a(), dgzVar, ((Boolean) cceVar.d.a()).booleanValue(), dnyVar3);
        this.e = butVar;
    }

    public final long a(String str) {
        if (this.f.b) {
            return -1L;
        }
        ccd ccdVar = this.c;
        if (ccdVar.d.d()) {
            return -1L;
        }
        boolean z = ccdVar.c;
        cci cciVar = ccdVar.b;
        if (z) {
            return cciVar.a(str);
        }
        return -1L;
    }

    public final dag b(final bwj bwjVar) {
        return this.f.b ? hh.h() : hh.l(new Runnable() { // from class: bwm
            @Override // java.lang.Runnable
            public final void run() {
                dpy b;
                int i;
                cub[] cubVarArr;
                bwn bwnVar = bwn.this;
                bwj bwjVar2 = bwjVar;
                if (bwjVar2.g) {
                    ddf n = dpy.d.n();
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    dpy dpyVar = (dpy) n.b;
                    dpyVar.c = 2;
                    dpyVar.a |= 4;
                    b = (dpy) n.h();
                } else {
                    Long l = bwjVar2.f;
                    ccd ccdVar = bwnVar.c;
                    boolean z = ccdVar.c;
                    cci cciVar = ccdVar.b;
                    b = z ? cciVar.b(l) : cciVar.d();
                }
                if (b.b == -1) {
                    return;
                }
                bws bwsVar = (bws) bwnVar.b.a();
                dpz dpzVar = bwjVar2.c;
                ddf ddfVar = (ddf) dpzVar.E(5);
                ddfVar.n(dpzVar);
                ddf n2 = dpk.g.n();
                int i2 = bwsVar.h;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dpk dpkVar = (dpk) n2.b;
                dpkVar.d = i2 - 1;
                int i3 = dpkVar.a | 4;
                dpkVar.a = i3;
                String str = bwsVar.b;
                if (str != null) {
                    i3 |= 1;
                    dpkVar.a = i3;
                    dpkVar.b = str;
                }
                int i4 = i3 | 8;
                dpkVar.a = i4;
                dpkVar.e = 401601347L;
                String str2 = bwsVar.d;
                if (str2 != null) {
                    i4 |= 2;
                    dpkVar.a = i4;
                    dpkVar.c = str2;
                }
                String str3 = bwsVar.c;
                if (str3 != null) {
                    dpkVar.a = i4 | 16;
                    dpkVar.f = str3;
                }
                if (ddfVar.c) {
                    ddfVar.k();
                    ddfVar.c = false;
                }
                dpz dpzVar2 = (dpz) ddfVar.b;
                dpk dpkVar2 = (dpk) n2.h();
                dpz dpzVar3 = dpz.y;
                dpkVar2.getClass();
                dpzVar2.f = dpkVar2;
                dpzVar2.a |= 16;
                if (btj.c(bwsVar.a)) {
                    ddf n3 = dpo.d.n();
                    long freeSpace = bwsVar.e.a().getFreeSpace() / 1024;
                    if (n3.c) {
                        n3.k();
                        n3.c = false;
                    }
                    dpo dpoVar = (dpo) n3.b;
                    dpoVar.a |= 1;
                    dpoVar.b = freeSpace;
                    long longValue = ((Long) bwsVar.f.a()).longValue();
                    if (n3.c) {
                        n3.k();
                        n3.c = false;
                    }
                    dpo dpoVar2 = (dpo) n3.b;
                    dpoVar2.a = 2 | dpoVar2.a;
                    dpoVar2.c = longValue;
                    if (ddfVar.c) {
                        ddfVar.k();
                        ddfVar.c = false;
                    }
                    dpz dpzVar4 = (dpz) ddfVar.b;
                    dpo dpoVar3 = (dpo) n3.h();
                    dpoVar3.getClass();
                    dpzVar4.u = dpoVar3;
                    dpzVar4.a |= 2097152;
                }
                col colVar = bwsVar.g;
                String str4 = colVar == null ? null : ((btx) colVar.a()).a;
                if (!TextUtils.isEmpty(str4)) {
                    dpj dpjVar = dpzVar.p;
                    if (dpjVar == null) {
                        dpjVar = dpj.c;
                    }
                    ddf ddfVar2 = (ddf) dpjVar.E(5);
                    ddfVar2.n(dpjVar);
                    if (((dpj) ddfVar2.b).b.isEmpty()) {
                        if (ddfVar2.c) {
                            ddfVar2.k();
                            ddfVar2.c = false;
                        }
                        dpj dpjVar2 = (dpj) ddfVar2.b;
                        str4.getClass();
                        dpjVar2.a |= 1;
                        dpjVar2.b = str4;
                    } else {
                        String str5 = str4 + "::" + ((dpj) ddfVar2.b).b;
                        if (ddfVar2.c) {
                            ddfVar2.k();
                            ddfVar2.c = false;
                        }
                        dpj dpjVar3 = (dpj) ddfVar2.b;
                        dpjVar3.a |= 1;
                        dpjVar3.b = str5;
                    }
                    if (ddfVar.c) {
                        ddfVar.k();
                        ddfVar.c = false;
                    }
                    dpz dpzVar5 = (dpz) ddfVar.b;
                    dpj dpjVar4 = (dpj) ddfVar2.h();
                    dpjVar4.getClass();
                    dpzVar5.p = dpjVar4;
                    dpzVar5.a |= 524288;
                }
                dpz dpzVar6 = (dpz) ddfVar.h();
                ddf ddfVar3 = (ddf) dpzVar6.E(5);
                ddfVar3.n(dpzVar6);
                if (ddfVar3.c) {
                    ddfVar3.k();
                    ddfVar3.c = false;
                }
                dpz dpzVar7 = (dpz) ddfVar3.b;
                b.getClass();
                dpzVar7.v = b;
                dpzVar7.a |= 33554432;
                bus busVar = bwjVar2.h;
                if (busVar != null) {
                    ArrayList arrayList = new ArrayList();
                    int i5 = 0;
                    while (true) {
                        buv[] buvVarArr = busVar.b;
                        if (i5 >= buvVarArr.length) {
                            break;
                        }
                        buv buvVar = buvVarArr[i5];
                        int i6 = busVar.c[i5];
                        int max = Math.max(i6 - Math.min(100, 19), 0);
                        int i7 = i6 - max;
                        if (i7 <= 0) {
                            cubVarArr = new cub[0];
                        } else {
                            cub[] cubVarArr2 = new cub[i7];
                            for (int i8 = 0; i8 < i7; i8++) {
                                cubVarArr2[i8] = (cub) buvVar.a.get((i8 + max) % 20);
                            }
                            int i9 = buvVar.b;
                            if (i6 <= 0) {
                                i = -i6;
                            } else {
                                int i10 = buvVar.c;
                                i = (Preference.DEFAULT_ORDER - i6) - 27;
                            }
                            int i11 = (i - (20 - i7)) + 1;
                            if (i11 >= i7) {
                                cubVarArr = new cub[0];
                            } else if (i11 > 0) {
                                int i12 = i7 - i11;
                                cubVarArr = new cub[i12];
                                System.arraycopy(cubVarArr2, i11, cubVarArr, 0, i12);
                            } else {
                                cubVarArr = cubVarArr2;
                            }
                        }
                        for (cub cubVar : cubVarArr) {
                            arrayList.add(new bur(cubVar, i5));
                        }
                        i5++;
                    }
                    Collections.sort(arrayList, bup.a);
                    ddf n4 = dpn.d.n();
                    long j = 0;
                    for (int max2 = Math.max(arrayList.size() - 100, 0); max2 < arrayList.size(); max2++) {
                        bur burVar = (bur) arrayList.get(max2);
                        cub cubVar2 = burVar.a;
                        int i13 = burVar.b;
                        cti f = cubVar2.f();
                        String b2 = f.b();
                        String d = f.d();
                        int a = f.a();
                        StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 13 + d.length());
                        sb.append(b2);
                        sb.append(".");
                        sb.append(d);
                        sb.append(":");
                        sb.append(a);
                        Long a2 = dba.a(sb.toString());
                        if (a2 != null) {
                            long longValue2 = a2.longValue();
                            if (n4.c) {
                                n4.k();
                                n4.c = false;
                            }
                            dpn dpnVar = (dpn) n4.b;
                            ddq ddqVar = dpnVar.a;
                            if (!ddqVar.c()) {
                                dpnVar.a = ddk.x(ddqVar);
                            }
                            dpnVar.a.e(longValue2);
                            long e = cubVar2.e() / 1000000;
                            long j2 = e - j;
                            if (n4.c) {
                                n4.k();
                                n4.c = false;
                            }
                            dpn dpnVar2 = (dpn) n4.b;
                            ddq ddqVar2 = dpnVar2.b;
                            if (!ddqVar2.c()) {
                                dpnVar2.b = ddk.x(ddqVar2);
                            }
                            dpnVar2.b.e(j2);
                            if (n4.c) {
                                n4.k();
                                n4.c = false;
                            }
                            dpn dpnVar3 = (dpn) n4.b;
                            ddp ddpVar = dpnVar3.c;
                            if (!ddpVar.c()) {
                                dpnVar3.c = ddk.v(ddpVar);
                            }
                            dpnVar3.c.g(i13);
                            j = e;
                        }
                    }
                    dpn dpnVar4 = (dpn) n4.h();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    dpz dpzVar8 = (dpz) ddfVar3.b;
                    dpnVar4.getClass();
                    dpzVar8.w = dpnVar4;
                    dpzVar8.a |= 67108864;
                }
                String str6 = bwjVar2.a;
                if (bwjVar2.b) {
                    if (str6 != null) {
                        dpz dpzVar9 = (dpz) ddfVar3.b;
                        dpzVar9.a |= 32768;
                        dpzVar9.o = str6;
                    } else {
                        dpz dpzVar10 = (dpz) ddfVar3.b;
                        dpzVar10.a &= -32769;
                        dpzVar10.o = dpz.y.o;
                    }
                } else if (str6 != null) {
                    dpz dpzVar11 = (dpz) ddfVar3.b;
                    dpzVar11.a |= 4;
                    dpzVar11.d = str6;
                } else {
                    dpz dpzVar12 = (dpz) ddfVar3.b;
                    dpzVar12.a &= -5;
                    dpzVar12.d = dpz.y.d;
                }
                Object a3 = bwnVar.d.a();
                dot dotVar = bwjVar2.d;
                if (a3 != null || dotVar != null) {
                    if (a3 != null && dotVar != null) {
                        ddk ddkVar = (ddk) a3;
                        ddf ddfVar4 = (ddf) ddkVar.E(5);
                        ddfVar4.n(ddkVar);
                        ddh ddhVar = (ddh) ddfVar4;
                        ddhVar.n(dotVar);
                        a3 = (dot) ddhVar.h();
                    } else if (a3 == null) {
                        dotVar.getClass();
                        a3 = dotVar;
                    }
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    dpz dpzVar13 = (dpz) ddfVar3.b;
                    a3.getClass();
                    dpzVar13.m = (dot) a3;
                    dpzVar13.a |= 8192;
                }
                String str7 = bwjVar2.e;
                if (str7 != null) {
                    ddf n5 = dpj.c.n();
                    if (n5.c) {
                        n5.k();
                        n5.c = false;
                    }
                    dpj dpjVar5 = (dpj) n5.b;
                    dpjVar5.a |= 1;
                    dpjVar5.b = str7;
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    dpz dpzVar14 = (dpz) ddfVar3.b;
                    dpj dpjVar6 = (dpj) n5.h();
                    dpjVar6.getClass();
                    dpzVar14.p = dpjVar6;
                    dpzVar14.a |= 524288;
                }
                bwl bwlVar = bwnVar.a;
                dpz dpzVar15 = (dpz) ddfVar3.h();
                cqh cqhVar = (cqh) bwlVar.b.a();
                int size = cqhVar.size();
                RuntimeException runtimeException = null;
                for (int i14 = 0; i14 < size; i14++) {
                    try {
                        ((ccw) cqhVar.get(i14)).b(dpzVar15);
                    } catch (RuntimeException e2) {
                        ((csx) ((csx) bwl.a.c().g(e2)).h("com/google/android/libraries/performance/primes/metrics/core/MetricDispatcher", "dispatch", 58, "MetricDispatcher.java")).n("One transmitter failed to send message");
                        if (runtimeException == null) {
                            runtimeException = e2;
                        }
                    }
                }
                if (runtimeException != null) {
                    throw runtimeException;
                }
                bwnVar.c.d.c();
            }
        }, this.g);
    }

    public final boolean c(String str) {
        return a(str) != -1;
    }

    public final boolean d() {
        ccd ccdVar = this.c;
        return ccdVar.c && ccdVar.b.c();
    }
}
