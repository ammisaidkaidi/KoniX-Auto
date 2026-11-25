package defpackage;

import java.net.InetAddress;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AccessPointConfigFutureCallback implements ListenableFutureCallback {
    final /* synthetic */ AccessPoint a;

    public AccessPointConfigFutureCallback(AccessPoint bdqVar) {
        this.a = bdqVar;
    }

    @Override // defpackage.ListenableFutureCallback
    public final void a(Throwable th) {
        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) AccessPoint.a.b().g(ActivityResultDispatchRunnable)).h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$3", "onFailure", 183, "AccessPoint.java")).n("Failed to find host IP address for Access Point.");
        ImmutableList c = this.a.c();
        int size = c.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ((AccessPointStateListener) c.get(NavInstructionTypeEnum)).a(2);
        }
    }

    @Override // defpackage.ListenableFutureCallback
    public final /* bridge */ /* synthetic */ void b(Object obj) {
        InetAddress inetAddress = (InetAddress) obj;
        if (inetAddress == null) {
            a(new IllegalStateException("No hostIP available"));
            return;
        }
        synchronized (this.a.i) {
            this.a.k = inetAddress.getHostAddress();
        }
        ApConfiguration b = this.a.b();
        if (ProtoLiteMessageBase == null || b.d == null) {
            String valueOf = String.valueOf(ProtoLiteMessageBase);
            String.valueOf(valueOf).length();
            a(new IllegalStateException("Access Point configuration is not valid: ".concat(String.valueOf(valueOf))));
        } else {
            ImmutableList c = this.a.c();
            int size = c.size();
            for (int i = 0; NavInstructionTypeEnum < size; i++) {
                ((AccessPointStateListener) c.get(NavInstructionTypeEnum)).b(ProtoLiteMessageBase);
            }
        }
    }
}
