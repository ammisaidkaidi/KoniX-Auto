package defpackage;

import java.net.InetAddress;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bdk implements czv {
    final /* synthetic */ bdq a;

    public bdk(bdq bdqVar) {
        this.a = bdqVar;
    }

    @Override // defpackage.czv
    public final void a(Throwable th) {
        ((csx) ((csx) bdq.a.b().g(th)).h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$3", "onFailure", 183, "AccessPoint.java")).n("Failed to find host IP address for Access Point.");
        cqh c = this.a.c();
        int size = c.size();
        for (int i = 0; i < size; i++) {
            ((bdr) c.get(i)).a(2);
        }
    }

    @Override // defpackage.czv
    public final /* bridge */ /* synthetic */ void b(Object obj) {
        InetAddress inetAddress = (InetAddress) obj;
        if (inetAddress == null) {
            a(new IllegalStateException("No hostIP available"));
            return;
        }
        synchronized (this.a.i) {
            this.a.k = inetAddress.getHostAddress();
        }
        bdt b = this.a.b();
        if (b == null || b.d == null) {
            String valueOf = String.valueOf(b);
            String.valueOf(valueOf).length();
            a(new IllegalStateException("Access Point configuration is not valid: ".concat(String.valueOf(valueOf))));
        } else {
            cqh c = this.a.c();
            int size = c.size();
            for (int i = 0; i < size; i++) {
                ((bdr) c.get(i)).b(b);
            }
        }
    }
}
