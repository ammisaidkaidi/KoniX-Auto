package defpackage;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cmc extends Thread {
    final /* synthetic */ cme a;
    final /* synthetic */ bbj b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cmc(cme cmeVar, bbj bbjVar) {
        super("TCP server");
        this.a = cmeVar;
        this.b = bbjVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.a.a);
        String.valueOf(valueOf).length();
        cjz.c("AHU.TCP_CONNECTION", "Listening on: ".concat(String.valueOf(valueOf)));
        while (true) {
            try {
                Socket accept = this.a.a.accept();
                StringBuilder sb = new StringBuilder(28);
                sb.append("Set read timeout ");
                sb.append(10000);
                cjz.b("AHU.TCP_CONNECTION", sb.toString());
                accept.setSoTimeout(10000);
                StringBuilder sb2 = new StringBuilder(35);
                sb2.append("Set receive buffer size ");
                sb2.append(16384);
                cjz.b("AHU.TCP_CONNECTION", sb2.toString());
                accept.setReceiveBufferSize(16384);
                cjz.b("AHU.TCP_CONNECTION", "Enable tcp no delay");
                accept.setTcpNoDelay(true);
                this.b.a(new cmn(accept));
                return;
            } catch (SocketTimeoutException e) {
                if (isInterrupted()) {
                    this.b.b();
                    return;
                }
                cjz.b("AHU.TCP_CONNECTION", "Socket accept timed out; retrying");
            } catch (IOException e2) {
                if (!isInterrupted()) {
                    cjz.a(6, "AHU.TCP_CONNECTION", "Can't listen to socket: ".concat(e2.toString()));
                }
                this.b.b();
                return;
            }
        }
    }
}
