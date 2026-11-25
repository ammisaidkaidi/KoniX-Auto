package defpackage;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class blj implements bkd, bke {
    public final bjx b;
    public final bks c;
    public final blb d;
    public final int f;
    public boolean g;
    public final /* synthetic */ bln j;
    private final bma l;
    public final Queue a = new LinkedList();
    private final Set k = new HashSet();
    public final Map e = new HashMap();
    public final List h = new ArrayList();
    private biz m = null;
    public int i = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public blj(bln blnVar, bkc bkcVar) {
        this.j = blnVar;
        bjx b = bkcVar.c.b.b(bkcVar.a, blnVar.l.getLooper(), bkcVar.b().a(), bkcVar.d, this, this);
        String str = bkcVar.b;
        if (str != null) {
            ((bmn) b).j = str;
        }
        this.b = b;
        this.c = bkcVar.e;
        this.d = new blb();
        this.f = bkcVar.g;
        if (b.o()) {
            this.l = new bma(blnVar.f, blnVar.l, bkcVar.b().a());
        } else {
            this.l = null;
        }
    }

    private final Status p(biz bizVar) {
        return bln.a(this.c, bizVar);
    }

    private final void q(biz bizVar) {
        Iterator it = this.k.iterator();
        if (!it.hasNext()) {
            this.k.clear();
            return;
        }
        if (hr.n(bizVar, biz.a)) {
            this.b.r();
        }
        throw null;
    }

    private final void r(Status status, Exception exc, boolean z) {
        hr.g(this.j.l);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            bkr bkrVar = (bkr) it.next();
            if (!z || bkrVar.c == 2) {
                if (status != null) {
                    bkrVar.d(status);
                } else {
                    bkrVar.e(exc);
                }
                it.remove();
            }
        }
    }

    private final void s(bkr bkrVar) {
        bkrVar.g(this.d, o());
        try {
            bkrVar.f(this);
        } catch (DeadObjectException e) {
            a(1);
            this.b.e("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    private final boolean t(bkr bkrVar) {
        bjb bjbVar;
        if (!(bkrVar instanceof bkm)) {
            s(bkrVar);
            return true;
        }
        bkm bkmVar = (bkm) bkrVar;
        bjb[] b = bkmVar.b(this);
        if (b != null) {
            bjb[] p = this.b.p();
            if (p == null) {
                p = new bjb[0];
            }
            vb vbVar = new vb(p.length);
            for (bjb bjbVar2 : p) {
                vbVar.put(bjbVar2.a, Long.valueOf(bjbVar2.a()));
            }
            for (int i = 0; i <= 0; i++) {
                bjbVar = b[i];
                Long l = (Long) vbVar.get(bjbVar.a);
                if (l == null || l.longValue() < bjbVar.a()) {
                    break;
                }
            }
        }
        bjbVar = null;
        if (bjbVar == null) {
            s(bkrVar);
            return true;
        }
        String name = this.b.getClass().getName();
        String str = bjbVar.a;
        long a = bjbVar.a();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(str).length());
        sb.append(name);
        sb.append(" could not execute call because it requires feature (");
        sb.append(str);
        sb.append(", ");
        sb.append(a);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        if (!this.j.m || !bkmVar.a(this)) {
            bkmVar.e(new bkl(bjbVar));
            return true;
        }
        blk blkVar = new blk(this.c, bjbVar);
        int indexOf = this.h.indexOf(blkVar);
        if (indexOf >= 0) {
            blk blkVar2 = (blk) this.h.get(indexOf);
            this.j.l.removeMessages(15, blkVar2);
            Handler handler = this.j.l;
            handler.sendMessageDelayed(Message.obtain(handler, 15, blkVar2), 5000L);
        } else {
            this.h.add(blkVar);
            Handler handler2 = this.j.l;
            handler2.sendMessageDelayed(Message.obtain(handler2, 15, blkVar), 5000L);
            Handler handler3 = this.j.l;
            handler3.sendMessageDelayed(Message.obtain(handler3, 16, blkVar), 120000L);
            biz bizVar = new biz(2, null);
            u();
            this.j.f(bizVar, this.f);
        }
        return false;
    }

    private static final void u() {
        synchronized (bln.c) {
        }
    }

    @Override // defpackage.bky
    public final void a(int i) {
        if (Looper.myLooper() == this.j.l.getLooper()) {
            k(i);
        } else {
            this.j.l.post(new blg(this, i));
        }
    }

    @Override // defpackage.bky
    public final void b() {
        if (Looper.myLooper() == this.j.l.getLooper()) {
            h();
        } else {
            this.j.l.post(new blf(this));
        }
    }

    public final void c() {
        hr.g(this.j.l);
        this.m = null;
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [bjx, bqn] */
    public final void d() {
        hr.g(this.j.l);
        if (this.b.m() || this.b.n()) {
            return;
        }
        try {
            bln blnVar = this.j;
            bnf bnfVar = blnVar.h;
            Context context = blnVar.f;
            bjx bjxVar = this.b;
            hr.d(context);
            hr.d(bjxVar);
            bjxVar.s();
            int a = bjxVar.a();
            int b = bnfVar.b(a);
            if (b == -1) {
                b = 0;
                int i = 0;
                while (true) {
                    if (i >= bnfVar.a.size()) {
                        b = -1;
                        break;
                    }
                    int keyAt = bnfVar.a.keyAt(i);
                    if (keyAt > a && bnfVar.a.get(keyAt) == 0) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (b == -1) {
                    b = bnfVar.b.c(context, a);
                }
                bnfVar.a.put(a, b);
            }
            if (b != 0) {
                biz bizVar = new biz(b, null);
                String name = this.b.getClass().getName();
                String obj = bizVar.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 35 + obj.length());
                sb.append("The service for ");
                sb.append(name);
                sb.append(" is not available: ");
                sb.append(obj);
                Log.w("GoogleApiManager", sb.toString());
                i(bizVar);
                return;
            }
            blm blmVar = new blm(this.j, this.b, this.c);
            if (this.b.o()) {
                bma bmaVar = this.l;
                hr.d(bmaVar);
                bqn bqnVar = bmaVar.e;
                if (bqnVar != null) {
                    bqnVar.l();
                }
                bmaVar.d.g = Integer.valueOf(System.identityHashCode(bmaVar));
                bjq bjqVar = bmaVar.g;
                Context context2 = bmaVar.a;
                Looper looper = bmaVar.b.getLooper();
                bmp bmpVar = bmaVar.d;
                bmaVar.e = bjqVar.b(context2, looper, bmpVar, bmpVar.f, bmaVar, bmaVar);
                bmaVar.f = blmVar;
                Set set = bmaVar.c;
                if (set == null || set.isEmpty()) {
                    bmaVar.b.post(new bly(bmaVar));
                } else {
                    bmn bmnVar = (bmn) bmaVar.e;
                    bmnVar.k(new bmk(bmnVar));
                }
            }
            try {
                this.b.k(blmVar);
            } catch (SecurityException e) {
                j(new biz(10), e);
            }
        } catch (IllegalStateException e2) {
            j(new biz(10), e2);
        }
    }

    public final void e(bkr bkrVar) {
        hr.g(this.j.l);
        if (this.b.m()) {
            if (t(bkrVar)) {
                l();
                return;
            } else {
                this.a.add(bkrVar);
                return;
            }
        }
        this.a.add(bkrVar);
        biz bizVar = this.m;
        if (bizVar == null || !bizVar.b()) {
            d();
        } else {
            i(this.m);
        }
    }

    public final void f(Status status) {
        hr.g(this.j.l);
        r(status, null, false);
    }

    public final void g() {
        ArrayList arrayList = new ArrayList(this.a);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            bkr bkrVar = (bkr) arrayList.get(i);
            if (!this.b.m()) {
                return;
            }
            if (t(bkrVar)) {
                this.a.remove(bkrVar);
            }
        }
    }

    public final void h() {
        c();
        q(biz.a);
        n();
        Iterator it = this.e.values().iterator();
        if (it.hasNext()) {
            blp blpVar = ((blw) it.next()).b;
            throw null;
        }
        g();
        l();
    }

    @Override // defpackage.blu
    public final void i(biz bizVar) {
        j(bizVar, null);
    }

    public final void j(biz bizVar, Exception exc) {
        bqn bqnVar;
        hr.g(this.j.l);
        bma bmaVar = this.l;
        if (bmaVar != null && (bqnVar = bmaVar.e) != null) {
            bqnVar.l();
        }
        c();
        this.j.h.a();
        q(bizVar);
        if ((this.b instanceof bnz) && bizVar.c != 24) {
            bln blnVar = this.j;
            blnVar.e = true;
            Handler handler = blnVar.l;
            handler.sendMessageDelayed(handler.obtainMessage(19), 300000L);
        }
        if (bizVar.c == 4) {
            f(bln.b);
            return;
        }
        if (this.a.isEmpty()) {
            this.m = bizVar;
            return;
        }
        if (exc != null) {
            hr.g(this.j.l);
            r(null, exc, false);
            return;
        }
        if (!this.j.m) {
            f(p(bizVar));
            return;
        }
        r(p(bizVar), null, true);
        if (this.a.isEmpty()) {
            return;
        }
        u();
        if (this.j.f(bizVar, this.f)) {
            return;
        }
        if (bizVar.c == 18) {
            this.g = true;
        }
        if (!this.g) {
            f(p(bizVar));
        } else {
            Handler handler2 = this.j.l;
            handler2.sendMessageDelayed(Message.obtain(handler2, 9, this.c), 5000L);
        }
    }

    public final void k(int i) {
        c();
        this.g = true;
        blb blbVar = this.d;
        String i2 = this.b.i();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (i2 != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(i2);
        }
        blbVar.a(true, new Status(20, sb.toString()));
        Handler handler = this.j.l;
        handler.sendMessageDelayed(Message.obtain(handler, 9, this.c), 5000L);
        Handler handler2 = this.j.l;
        handler2.sendMessageDelayed(Message.obtain(handler2, 11, this.c), 120000L);
        this.j.h.a();
        Iterator it = this.e.values().iterator();
        if (it.hasNext()) {
            Runnable runnable = ((blw) it.next()).a;
            throw null;
        }
    }

    public final void l() {
        this.j.l.removeMessages(12, this.c);
        Handler handler = this.j.l;
        handler.sendMessageDelayed(handler.obtainMessage(12, this.c), this.j.d);
    }

    public final void m() {
        hr.g(this.j.l);
        f(bln.a);
        this.d.a(false, bln.a);
        for (blr blrVar : (blr[]) this.e.keySet().toArray(new blr[0])) {
            e(new bkq(blrVar, new brk()));
        }
        q(new biz(4));
        if (this.b.m()) {
            this.b.q(new bli(this));
        }
    }

    public final void n() {
        if (this.g) {
            this.j.l.removeMessages(11, this.c);
            this.j.l.removeMessages(9, this.c);
            this.g = false;
        }
    }

    public final boolean o() {
        return this.b.o();
    }
}
