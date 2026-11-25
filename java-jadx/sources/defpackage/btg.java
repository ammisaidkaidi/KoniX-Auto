package defpackage;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class btg {
    private final bta a;
    private final Map b;
    private final btd c;
    private final bsa d;
    private final int e;
    private final ArrayDeque f;

    public btg(bta btaVar, Map map, btd btdVar, bsa bsaVar, int i, ArrayDeque arrayDeque) {
        this.a = btaVar;
        this.b = map;
        this.c = btdVar;
        this.d = bsaVar;
        this.e = i;
        this.f = arrayDeque;
    }

    public final void a(ddf ddfVar) {
        boolean z = false;
        if ((((dgn) ddfVar.b).a & 64) == 0) {
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dgn dgnVar = (dgn) ddfVar.b;
            dgnVar.h = dpx.u(2);
            dgnVar.a |= 64;
        }
        Throwable th = (Throwable) this.d.b.b(new Throwable());
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        int length = stringWriter2.length();
        long b = dlk.a.a().b();
        if (b < length && b >= 0) {
            length = (int) b;
        }
        String substring = stringWriter2.substring(0, length);
        if (ddfVar.c) {
            ddfVar.k();
            ddfVar.c = false;
        }
        dgn dgnVar2 = (dgn) ddfVar.b;
        substring.getClass();
        dgnVar2.a |= 2048;
        dgnVar2.l = substring;
        dgn dgnVar3 = (dgn) ddfVar.h();
        Long valueOf = Long.valueOf(dgnVar3.d);
        int v = dpx.v(dgnVar3.h);
        btf btfVar = new btf(valueOf, v != 0 ? v : 2);
        long a = dlk.a.a().a();
        synchronized (this.b) {
            Long l = (Long) this.b.get(btfVar);
            long currentTimeMillis = System.currentTimeMillis();
            if (l == null || a <= 0) {
                z = true;
            } else if (l.longValue() + a < currentTimeMillis) {
                z = true;
            }
            if (z) {
                this.b.put(btfVar, Long.valueOf(currentTimeMillis));
            }
        }
        if (z) {
            this.c.a(dgnVar3);
        }
    }

    public final ddf b(int i) {
        ddf n = dgn.m.n();
        String packageName = this.d.a.getPackageName();
        if (n.c) {
            n.k();
            n.c = false;
        }
        dgn dgnVar = (dgn) n.b;
        packageName.getClass();
        dgnVar.a |= 1;
        dgnVar.b = packageName;
        int a = this.a.a(this.d.a);
        if (n.c) {
            n.k();
            n.c = false;
        }
        dgn dgnVar2 = (dgn) n.b;
        dgnVar2.a |= 2;
        dgnVar2.c = a;
        dgn.k(dgnVar2);
        if (n.c) {
            n.k();
            n.c = false;
        }
        dgn dgnVar3 = (dgn) n.b;
        int i2 = dgnVar3.a | 8;
        dgnVar3.a = i2;
        dgnVar3.e = -2032180703L;
        int i3 = this.e;
        dgnVar3.a = i2 | 16;
        dgnVar3.f = i3;
        cqc j = cqh.j();
        Iterator descendingIterator = this.f.descendingIterator();
        while (descendingIterator.hasNext()) {
            j.g(Long.valueOf(((bsg) descendingIterator.next()).e));
        }
        cqh f = j.f();
        if (n.c) {
            n.k();
            n.c = false;
        }
        dgn dgnVar4 = (dgn) n.b;
        dgnVar4.c();
        dbu.d(f, dgnVar4.k);
        if (n.c) {
            n.k();
            n.c = false;
        }
        dgn dgnVar5 = (dgn) n.b;
        dgnVar5.h = dpx.u(i);
        dgnVar5.a |= 64;
        return n;
    }
}
