package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.os.NetworkOnMainThreadException;
import android.os.Parcel;
import android.os.TransactionTooLargeException;
import android.util.Log;
import android.util.LruCache;
import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bir extends bku {
    final /* synthetic */ bkc a;
    private final bih k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bir(bkc bkcVar, bih bihVar, bkf bkfVar) {
        super(bkfVar);
        this.a = bkcVar;
        bjy bjyVar = bik.a;
        this.k = bihVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0670, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0605, code lost:
    
        r1 = r13.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x03fe, code lost:
    
        if (defpackage.dlk.c() == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0400, code lost:
    
        r0 = r15.b(8);
        r0.A(r11);
        r15.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x040c, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0589, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x04f9, code lost:
    
        if (defpackage.dlk.c() == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x04fb, code lost:
    
        r0 = r15.b(9);
        r1 = defpackage.coe.c(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0507, code lost:
    
        if (r0.c == false) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x0509, code lost:
    
        r0.k();
        r0.c = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x050f, code lost:
    
        r2 = (defpackage.dgn) r0.b;
        r4 = defpackage.dgn.m;
        r2.a |= 32;
        r2.g = r1;
        r15.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0520, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0025, code lost:
    
        r4 = defpackage.bik.c.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x002f, code lost:
    
        if (r4.hasNext() == false) goto L463;
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x0031, code lost:
    
        r0 = ((defpackage.big) r4.next()).a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x003b, code lost:
    
        if (r0 != null) goto L464;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x003d, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x003f, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x074f  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0765  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x05fd  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0617 A[Catch: IOException -> 0x0689, TryCatch #11 {IOException -> 0x0689, blocks: (B:203:0x0605, B:179:0x0611, B:181:0x0617, B:197:0x061f, B:199:0x0625, B:183:0x062f, B:192:0x0635, B:194:0x063b, B:185:0x0645, B:187:0x0661, B:177:0x060a, B:322:0x05b8, B:324:0x05be, B:327:0x05c4, B:329:0x05ca, B:331:0x05d9, B:333:0x05ea, B:337:0x05f1, B:339:0x05f6, B:344:0x0595, B:346:0x059b, B:349:0x05a3, B:351:0x05a9, B:356:0x0681, B:357:0x0688), top: B:202:0x0605 }] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x06ba  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0742  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x042e A[Catch: IOException -> 0x068b, TryCatch #9 {IOException -> 0x068b, blocks: (B:168:0x03f1, B:221:0x03fa, B:223:0x0400, B:226:0x040f, B:228:0x0417, B:235:0x042e, B:242:0x0450, B:244:0x0458, B:246:0x045e, B:319:0x0439), top: B:167:0x03f1 }] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x05ea A[Catch: IOException -> 0x0689, TryCatch #11 {IOException -> 0x0689, blocks: (B:203:0x0605, B:179:0x0611, B:181:0x0617, B:197:0x061f, B:199:0x0625, B:183:0x062f, B:192:0x0635, B:194:0x063b, B:185:0x0645, B:187:0x0661, B:177:0x060a, B:322:0x05b8, B:324:0x05be, B:327:0x05c4, B:329:0x05ca, B:331:0x05d9, B:333:0x05ea, B:337:0x05f1, B:339:0x05f6, B:344:0x0595, B:346:0x059b, B:349:0x05a3, B:351:0x05a9, B:356:0x0681, B:357:0x0688), top: B:202:0x0605 }] */
    /* JADX WARN: Removed duplicated region for block: B:340:0x05e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0593  */
    @Override // defpackage.bku
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(bis bisVar) {
        bih bihVar;
        List<dgu> list;
        ArrayList arrayList;
        int i;
        biq biqVar;
        bih bihVar2;
        bin binVar;
        btc btcVar;
        bsa bsaVar;
        byte[] bArr;
        bsc bscVar;
        dcp I;
        ArrayDeque arrayDeque;
        btg btgVar;
        dqg a;
        int a2;
        int b;
        Map unmodifiableMap;
        bsa bsaVar2;
        long j;
        Long valueOf;
        boolean z;
        dqd d;
        String str;
        int i2;
        bsa bsaVar3;
        Integer num;
        int d2;
        int i3;
        Integer num2;
        int i4;
        boolean z2;
        long longValue;
        long d3;
        bir birVar = this;
        biq biqVar2 = new biq(birVar);
        try {
            bih bihVar3 = birVar.k;
            Iterator it = bihVar3.a.i.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                bihVar3 = ((big) it.next()).a();
                if (bihVar3 == null) {
                    bihVar = null;
                    break;
                }
            }
            if (bihVar == null) {
                biqVar2.c(Status.a);
                return;
            }
            bii biiVar = bihVar.a.h;
            String str2 = bihVar.f;
            int i5 = ((dgt) bihVar.j.b).e;
            if (str2 == null) {
                str2 = null;
            } else if (str2.isEmpty()) {
                str2 = null;
            }
            if (str2 == null) {
                arrayList = new ArrayList();
            } else {
                if (((biv) biiVar).f == null) {
                    list = Collections.emptyList();
                } else {
                    cei ceiVar = (cei) biv.c.get(str2);
                    if (ceiVar == null) {
                        ceiVar = biv.b.d(str2, dgv.b, bpu.b);
                        cei ceiVar2 = (cei) biv.c.putIfAbsent(str2, ceiVar);
                        if (ceiVar2 != null) {
                            ceiVar = ceiVar2;
                        }
                    }
                    list = ((dgv) ceiVar.c()).a;
                }
                ArrayList arrayList2 = new ArrayList();
                for (dgu dguVar : list) {
                    if ((dguVar.a & 1) == 0 || (i = dguVar.b) == 0 || i == i5) {
                        arrayList2.add(dguVar);
                    }
                }
                arrayList = arrayList2;
            }
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    try {
                        bik bikVar = bihVar.a;
                        String str3 = bikVar.f;
                        Context context = bikVar.e;
                        if (bik.d == -1) {
                            synchronized (bik.class) {
                                if (bik.d == -1) {
                                    try {
                                        bik.d = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                                    } catch (PackageManager.NameNotFoundException e) {
                                        Log.wtf("ClearcutLogger", "This can't happen.", e);
                                    }
                                }
                            }
                        }
                        biw biwVar = new biw(str3, bik.d, bihVar.f, bihVar.e, bihVar.h, bihVar.a.g);
                        dgt dgtVar = (dgt) bihVar.j.h();
                        bie bieVar = bihVar.g;
                        int[] d4 = bik.d(null);
                        ArrayList arrayList3 = bihVar.c;
                        bin binVar2 = new bin(biwVar, dgtVar, bieVar, d4, arrayList3 != null ? (String[]) arrayList3.toArray(bik.b) : null, bik.d(bihVar.d));
                        dgt dgtVar2 = binVar2.j;
                        dgtVar2.getClass();
                        ddf ddfVar = (ddf) dgtVar2.E(5);
                        ddfVar.n(dgtVar2);
                        ddh ddhVar = (ddh) ddfVar;
                        if (binVar2.k != null && dgtVar2.f.d() == 0) {
                            dcl e2 = binVar2.k.a.e();
                            if (ddhVar.c) {
                                ddhVar.k();
                                ddhVar.c = false;
                            }
                            dgt dgtVar3 = (dgt) ddhVar.b;
                            dgtVar3.a |= 1024;
                            dgtVar3.f = e2;
                        }
                        binVar2.j = (dgt) ddhVar.h();
                        binVar2.c = binVar2.j.h();
                        btc btcVar2 = bihVar.i;
                        if (btcVar2 != null) {
                            dgt dgtVar4 = binVar2.j;
                            dgtVar4.getClass();
                            dcl dclVar = dgtVar4.f;
                            bsa bsaVar4 = btcVar2.a;
                            byte[] C = dclVar.C();
                            bse bseVar = bsd.a;
                            if (Looper.getMainLooper().equals(Looper.myLooper())) {
                                throw new NetworkOnMainThreadException();
                            }
                            bsz bszVar = ((bsf) bseVar).f;
                            Context context2 = bsaVar4.a;
                            bta btaVar = bsf.c;
                            if (!bsz.b) {
                                synchronized (bsz.c) {
                                    if (!bsz.b) {
                                        bsz.b = true;
                                        cdz.e(context2);
                                        cei.f(context2);
                                        if (!"com.google.android.gms".equals(context2.getPackageName())) {
                                            final bkc a3 = bos.a(context2);
                                            String valueOf2 = String.valueOf(context2.getPackageName());
                                            final String concat = valueOf2.length() != 0 ? "com.google.android.libraries.consentverifier#".concat(valueOf2) : new String("com.google.android.libraries.consentverifier#");
                                            a3.f(concat, btaVar.a(context2), bsz.a, null).e(new brc() { // from class: bsx
                                                @Override // defpackage.brc
                                                public final void a(brh brhVar) {
                                                    bkc bkcVar = bkc.this;
                                                    String str4 = concat;
                                                    String[] strArr = bsz.a;
                                                    if (brhVar.d()) {
                                                        new Thread(new bsy(new box(bkcVar, str4)), "CBVerifier").start();
                                                    } else {
                                                        Log.w("CBVerifier", String.format("Registering phenotype for %s failed", str4));
                                                    }
                                                }
                                            });
                                        }
                                    }
                                }
                            }
                            if (dlk.a.a().d()) {
                                Context context3 = bsaVar4.a;
                                bta btaVar2 = bsf.c;
                                if (bte.a == null || bte.c != bte.a(context3, btaVar2)) {
                                    synchronized (bte.b) {
                                        boolean a4 = bte.a(context3, btaVar2);
                                        if (bte.a == null || bte.c != a4) {
                                            if (a4) {
                                                bte.a = new btb(new bik(context3, "COLLECTION_BASIS_VERIFIER"));
                                            } else {
                                                bte.a = new bth();
                                            }
                                            bte.c = a4;
                                        }
                                    }
                                }
                                coc e3 = coc.e(bte.a);
                                try {
                                    bscVar = new bsc(bsaVar4.a, ((bsf) bseVar).d, ((bsf) bseVar).e);
                                    btd btdVar = (btd) ((cof) e3).a;
                                    I = dcp.I(C);
                                    arrayDeque = new ArrayDeque();
                                    btgVar = new btg(bsf.c, bsf.b, btdVar, bsaVar4, C.length, arrayDeque);
                                    a = bscVar.a(2065731759);
                                } catch (IOException e4) {
                                    biqVar = biqVar2;
                                    bihVar2 = bihVar;
                                }
                                if (a == null) {
                                    if (dlk.c()) {
                                        btgVar.a(btgVar.b(7));
                                    }
                                    biqVar = biqVar2;
                                    bihVar2 = bihVar;
                                    binVar = binVar2;
                                    btcVar = btcVar2;
                                } else if (I.C() || bsf.c(bsaVar4, bsf.e(a), btgVar, cns.a)) {
                                    boolean a5 = bsf.a(bsf.e(a));
                                    dqg dqgVar = a;
                                    int i6 = 2065731759;
                                    String str4 = null;
                                    Integer num3 = null;
                                    int i7 = 0;
                                    while (true) {
                                        if (I.C()) {
                                            biqVar = biqVar2;
                                            bihVar2 = bihVar;
                                            binVar = binVar2;
                                            btcVar = btcVar2;
                                            r10 = true;
                                            break;
                                        }
                                        int m = I.m();
                                        bihVar2 = bihVar;
                                        try {
                                            a2 = dge.a(m);
                                            binVar = binVar2;
                                            try {
                                                b = dge.b(m);
                                                biqVar = biqVar2;
                                            } catch (IOException e5) {
                                                biqVar = biqVar2;
                                            }
                                        } catch (IOException e6) {
                                            biqVar = biqVar2;
                                            binVar = binVar2;
                                            btcVar = btcVar2;
                                            bsaVar = bsaVar4;
                                            bArr = C;
                                            if (dlk.c()) {
                                            }
                                            if (!dlk.a.a().f()) {
                                            }
                                            biu biuVar = (biu) bisVar.w();
                                            Parcel a6 = biuVar.a();
                                            asr.c(a6, biqVar);
                                            asr.b(a6, binVar);
                                            biuVar.d(1, a6);
                                            return;
                                        }
                                        try {
                                            unmodifiableMap = Collections.unmodifiableMap(dqgVar.b);
                                            bsaVar2 = bsaVar4;
                                            bArr = C;
                                            j = a2;
                                            try {
                                                valueOf = Long.valueOf(j);
                                                btcVar = btcVar2;
                                            } catch (IOException e7) {
                                                btcVar = btcVar2;
                                            }
                                        } catch (IOException e8) {
                                            btcVar = btcVar2;
                                            bsaVar = bsaVar4;
                                            bArr = C;
                                            if (dlk.c()) {
                                            }
                                            if (!dlk.a.a().f()) {
                                            }
                                            biu biuVar2 = (biu) bisVar.w();
                                            Parcel a62 = biuVar2.a();
                                            asr.c(a62, biqVar);
                                            asr.b(a62, binVar);
                                            biuVar2.d(1, a62);
                                            return;
                                        }
                                        if (unmodifiableMap.containsKey(valueOf)) {
                                            dem demVar = dqgVar.b;
                                            if (!demVar.containsKey(valueOf)) {
                                                throw new IllegalArgumentException();
                                            }
                                            dqc dqcVar = (dqc) demVar.get(valueOf);
                                            if (b != 2 && b != 3) {
                                                if (b != 4) {
                                                    z = true;
                                                    if (z) {
                                                        if ((dqcVar.a & 2) == 0) {
                                                            if (str4 == null) {
                                                                bsaVar = bsaVar2;
                                                            } else if (!bsf.b(i6, a2)) {
                                                                bsaVar = bsaVar2;
                                                            }
                                                            d = bsf.d(dqcVar);
                                                            if (a5 && !bsf.a(d)) {
                                                                if (dlk.c()) {
                                                                    ddf b2 = btgVar.b(8);
                                                                    b2.A(j);
                                                                    btgVar.a(b2);
                                                                }
                                                                r10 = false;
                                                            } else {
                                                                if (bsf.c(bsaVar, d, btgVar, coc.e(Integer.valueOf(a2)))) {
                                                                    r10 = false;
                                                                    break;
                                                                }
                                                                if (i6 == bsf.a && a2 == 1) {
                                                                    str = I.x();
                                                                } else {
                                                                    I.E(m);
                                                                    str = null;
                                                                }
                                                                str4 = str;
                                                                if (num3 == null) {
                                                                    bsaVar4 = bsaVar;
                                                                    bihVar = bihVar2;
                                                                    binVar2 = binVar;
                                                                    biqVar2 = biqVar;
                                                                    C = bArr;
                                                                    btcVar2 = btcVar;
                                                                }
                                                                d2 = i7 + num3.intValue();
                                                                while (true) {
                                                                    if (I.d() < d2) {
                                                                        break;
                                                                    }
                                                                    a5 = z2;
                                                                    i6 = i3;
                                                                    num3 = num2;
                                                                    i7 = i4;
                                                                    d2 = num2.intValue() + i4;
                                                                }
                                                            }
                                                        }
                                                        if (b == 2) {
                                                            i2 = b;
                                                        } else if (b == 3) {
                                                            b = 3;
                                                            i2 = 3;
                                                        } else {
                                                            bsaVar = bsaVar2;
                                                            if (num3 == null) {
                                                            }
                                                            d2 = i7 + num3.intValue();
                                                            while (true) {
                                                                if (I.d() < d2) {
                                                                    break;
                                                                }
                                                                a5 = z2;
                                                                i6 = i3;
                                                                num3 = num2;
                                                                i7 = i4;
                                                                d2 = num2.intValue() + i4;
                                                            }
                                                        }
                                                        if (bscVar.d(dqcVar.b) || bsf.b(i6, a2)) {
                                                            bsaVar3 = bsaVar2;
                                                            arrayDeque.push(new bsg(i6, num3, i7, a5, a2));
                                                            if (bsf.b(i6, a2)) {
                                                                if (str4 == null) {
                                                                    num = null;
                                                                } else if (str4.startsWith("type.googleapis.com/")) {
                                                                    int g = r.g(str4.substring(20));
                                                                    try {
                                                                        LruCache lruCache = bscVar.a;
                                                                        Integer valueOf3 = Integer.valueOf(g);
                                                                        Integer num4 = (Integer) lruCache.get(valueOf3);
                                                                        if (num4 == null) {
                                                                            if (bscVar.b == null) {
                                                                                bscVar.b = bscVar.c();
                                                                            }
                                                                            dem demVar2 = bscVar.b.b;
                                                                            if (!demVar2.containsKey(valueOf3)) {
                                                                                throw new IllegalArgumentException();
                                                                            }
                                                                            num4 = Integer.valueOf(((Integer) demVar2.get(valueOf3)).intValue());
                                                                            bscVar.a.put(valueOf3, num4);
                                                                        }
                                                                        num = Integer.valueOf(num4.intValue());
                                                                    } catch (IllegalArgumentException e9) {
                                                                        num = null;
                                                                    }
                                                                } else {
                                                                    num = null;
                                                                }
                                                                if (num == null) {
                                                                    break;
                                                                } else {
                                                                    i6 = num.intValue();
                                                                }
                                                            } else {
                                                                i6 = dqcVar.b;
                                                            }
                                                            Integer valueOf4 = i2 == 3 ? null : Integer.valueOf(I.j());
                                                            i7 = I.d();
                                                            dqgVar = bscVar.b(i6);
                                                            boolean z3 = (a5 || bsf.a(bsf.d(dqcVar))) ? true : bsf.a(bsf.e(dqgVar));
                                                            if (valueOf4 != null) {
                                                                if (valueOf4.intValue() > 0) {
                                                                }
                                                                num3 = valueOf4;
                                                                a5 = z3;
                                                                b = i2;
                                                                bsaVar = bsaVar3;
                                                                str4 = null;
                                                                if (num3 == null) {
                                                                }
                                                                d2 = i7 + num3.intValue();
                                                                while (true) {
                                                                    if (I.d() < d2) {
                                                                        break;
                                                                    }
                                                                    a5 = z2;
                                                                    i6 = i3;
                                                                    num3 = num2;
                                                                    i7 = i4;
                                                                    d2 = num2.intValue() + i4;
                                                                }
                                                            }
                                                            if (!bsf.c(bsaVar3, bsf.d(dqcVar), btgVar, coc.e(Integer.valueOf(a2))) || !bsf.c(bsaVar3, bsf.e(dqgVar), btgVar, cns.a)) {
                                                                break;
                                                            }
                                                            num3 = valueOf4;
                                                            a5 = z3;
                                                            b = i2;
                                                            bsaVar = bsaVar3;
                                                            str4 = null;
                                                            if (num3 == null) {
                                                            }
                                                            d2 = i7 + num3.intValue();
                                                            while (true) {
                                                                if (I.d() < d2) {
                                                                    break;
                                                                }
                                                                a5 = z2;
                                                                i6 = i3;
                                                                num3 = num2;
                                                                i7 = i4;
                                                                d2 = num2.intValue() + i4;
                                                            }
                                                        } else {
                                                            bsaVar3 = bsaVar2;
                                                            try {
                                                                if (!bsf.c(bsaVar3, bsf.d(dqcVar), btgVar, coc.e(Integer.valueOf(a2)))) {
                                                                    r10 = false;
                                                                    break;
                                                                }
                                                                I.E(m);
                                                                bsaVar = bsaVar3;
                                                                if (num3 == null) {
                                                                }
                                                                d2 = i7 + num3.intValue();
                                                                while (true) {
                                                                    if (I.d() < d2) {
                                                                        break;
                                                                    }
                                                                    a5 = z2;
                                                                    i6 = i3;
                                                                    num3 = num2;
                                                                    i7 = i4;
                                                                    d2 = num2.intValue() + i4;
                                                                }
                                                            } catch (IOException e10) {
                                                                bsaVar = bsaVar3;
                                                            }
                                                        }
                                                    } else {
                                                        bsaVar = bsaVar2;
                                                        if ((dqcVar.a & 2) != 0 && bscVar.d(dqcVar.b)) {
                                                            if (dlk.c()) {
                                                                ddf b3 = btgVar.b(10);
                                                                b3.A(j);
                                                                btgVar.a(b3);
                                                            }
                                                            r10 = false;
                                                        }
                                                        d = bsf.d(dqcVar);
                                                        if (a5) {
                                                        }
                                                        if (bsf.c(bsaVar, d, btgVar, coc.e(Integer.valueOf(a2)))) {
                                                        }
                                                    }
                                                } else {
                                                    b = 4;
                                                }
                                            }
                                            z = false;
                                            if (z) {
                                            }
                                        } else {
                                            if (!a5) {
                                                break;
                                            }
                                            try {
                                                I.E(m);
                                                bsaVar = bsaVar2;
                                                a5 = true;
                                                if (num3 == null && b != 4) {
                                                    bsaVar4 = bsaVar;
                                                    bihVar = bihVar2;
                                                    binVar2 = binVar;
                                                    biqVar2 = biqVar;
                                                    C = bArr;
                                                    btcVar2 = btcVar;
                                                }
                                                d2 = i7 + num3.intValue();
                                                while (true) {
                                                    if (I.d() < d2) {
                                                        break;
                                                    }
                                                    if (I.d() > d2) {
                                                        if (dlk.c()) {
                                                            btgVar.a(btgVar.b(11));
                                                        }
                                                        r10 = false;
                                                    } else if (arrayDeque.isEmpty()) {
                                                        if (dlk.c()) {
                                                            btgVar.a(btgVar.b(11));
                                                        }
                                                        r10 = false;
                                                    } else {
                                                        bsg bsgVar = (bsg) arrayDeque.pop();
                                                        i3 = bsgVar.a;
                                                        num2 = bsgVar.b;
                                                        i4 = bsgVar.c;
                                                        z2 = bsgVar.d;
                                                        dqgVar = bscVar.b(i3);
                                                        if (num2 == null) {
                                                            a5 = z2;
                                                            i6 = i3;
                                                            num3 = num2;
                                                            i7 = i4;
                                                            break;
                                                        }
                                                        a5 = z2;
                                                        i6 = i3;
                                                        num3 = num2;
                                                        i7 = i4;
                                                        d2 = num2.intValue() + i4;
                                                    }
                                                }
                                            } catch (IOException e11) {
                                            }
                                            bsaVar = bsaVar2;
                                            if (dlk.c()) {
                                                ddf n = dgn.m.n();
                                                String packageName = bsaVar.a.getPackageName();
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                dgn dgnVar = (dgn) n.b;
                                                packageName.getClass();
                                                dgnVar.a |= 1;
                                                dgnVar.b = packageName;
                                                int a7 = bsf.c.a(bsaVar.a);
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                dgn dgnVar2 = (dgn) n.b;
                                                dgnVar2.a |= 2;
                                                dgnVar2.c = a7;
                                                dgn.k(dgnVar2);
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                dgn dgnVar3 = (dgn) n.b;
                                                int i8 = dgnVar3.a | 8;
                                                dgnVar3.a = i8;
                                                dgnVar3.e = -2032180703L;
                                                int length = bArr.length;
                                                dgnVar3.a = i8 | 16;
                                                dgnVar3.f = length;
                                                dgnVar3.h = dpx.u(5);
                                                dgnVar3.a |= 64;
                                                ((btd) ((cof) e3).a).a((dgn) n.h());
                                                r10 = false;
                                            } else {
                                                r10 = false;
                                            }
                                        }
                                    }
                                } else {
                                    biqVar = biqVar2;
                                    bihVar2 = bihVar;
                                    binVar = binVar2;
                                    btcVar = btcVar2;
                                    r10 = false;
                                }
                            } else {
                                biqVar = biqVar2;
                                bihVar2 = bihVar;
                                binVar = binVar2;
                                btcVar = btcVar2;
                                r10 = true;
                            }
                            if (!dlk.a.a().f()) {
                                birVar = this;
                            } else {
                                if (!r10) {
                                    j(new Status(10, btcVar.toString()));
                                    return;
                                }
                                birVar = this;
                            }
                        } else {
                            biqVar = biqVar2;
                            bihVar2 = bihVar;
                            binVar = binVar2;
                        }
                        try {
                            biu biuVar22 = (biu) bisVar.w();
                            Parcel a622 = biuVar22.a();
                            asr.c(a622, biqVar);
                            asr.b(a622, binVar);
                            biuVar22.d(1, a622);
                            return;
                        } catch (TransactionTooLargeException e12) {
                            Log.e("ClearcutLoggerApiImpl", "Log event caused a TransactionTooLargeException", e12);
                            bim bimVar = new bim(bihVar2.f, 31004, 1);
                            bkc bkcVar = birVar.a;
                            final bid bidVar = new bid(Arrays.asList(bimVar));
                            bmb a8 = bmc.a();
                            a8.a = new blx() { // from class: bio
                                @Override // defpackage.blx
                                public final void a(Object obj, Object obj2) {
                                    bid bidVar2 = bid.this;
                                    bip bipVar = new bip((brk) obj2);
                                    biu biuVar3 = (biu) ((bis) obj).w();
                                    Parcel a9 = biuVar3.a();
                                    asr.c(a9, bipVar);
                                    asr.b(a9, bidVar2);
                                    biuVar3.d(8, a9);
                                }
                            };
                            a8.b = new bjb[]{bil.a};
                            a8.b();
                            bkcVar.i(a8.a());
                            return;
                        }
                    } catch (RuntimeException e13) {
                        Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e13);
                        birVar.j(new Status(10, "MessageProducer"));
                        return;
                    }
                }
                dgu dguVar2 = (dgu) it2.next();
                String str5 = dguVar2.c;
                Context context4 = ((biv) biiVar).f;
                if (btj.b(context4)) {
                    longValue = 0;
                } else {
                    if (biv.e == null) {
                        if (context4 != null) {
                            if (biv.d == null) {
                                biv.d = Boolean.valueOf(boc.b(context4).a.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
                            }
                            if (biv.d.booleanValue()) {
                                biv.e = Long.valueOf(brr.a(context4.getContentResolver()));
                            } else {
                                biv.e = 0L;
                            }
                        } else {
                            longValue = 0;
                        }
                    }
                    longValue = biv.e.longValue();
                }
                if (str5 == null || str5.isEmpty()) {
                    d3 = hn.d(ByteBuffer.allocate(8).putLong(longValue).array());
                } else {
                    byte[] bytes = str5.getBytes(biv.a);
                    ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
                    allocate.put(bytes);
                    allocate.putLong(longValue);
                    d3 = hn.d(allocate.array());
                }
                long j2 = dguVar2.d;
                long j3 = dguVar2.e;
                if (j2 >= 0 && j3 > 0) {
                    if ((d3 >= 0 ? d3 % j3 : (((Long.MAX_VALUE % j3) + 1) + ((d3 & Long.MAX_VALUE) % j3)) % j3) >= j2) {
                        birVar.n(Status.a);
                        return;
                    }
                }
            }
        } catch (RuntimeException e14) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.EventModifier ", e14);
            birVar.j(new Status(10, "EventModifier"));
        }
    }
}
