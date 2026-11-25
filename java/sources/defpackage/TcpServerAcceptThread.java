package defpackage;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TcpServerAcceptThread extends Thread {
    final /* synthetic */ TcpTransportFactory a;
    final /* synthetic */ TransportFutureCallback b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public TcpServerAcceptThread(TcpTransportFactory cmeVar, TransportFutureCallback bbjVar) {
        super("TCP server");
        this.a = cmeVar;
        this.b = bbjVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.a.a);
        String.valueOf(valueOf).length();
        ProjectionLog.c("AHU.TCP_CONNECTION", "Listening on: ".concat(String.valueOf(valueOf)));
        while (true) {
            try {
                Socket accept = this.a.a.accept();
                StringBuilder sb = new StringBuilder(28);
                StaggeredGridLayoutParams.append("Set read timeout ");
                StaggeredGridLayoutParams.append(10000);
                ProjectionLog.b("AHU.TCP_CONNECTION", StaggeredGridLayoutParams.toString());
                accept.setSoTimeout(10000);
                StringBuilder sb2 = new StringBuilder(35);
                sb2.append("Set receive buffer size ");
                sb2.append(16384);
                ProjectionLog.b("AHU.TCP_CONNECTION", sb2.toString());
                accept.setReceiveBufferSize(16384);
                ProjectionLog.b("AHU.TCP_CONNECTION", "Enable tcp no delay");
                accept.setTcpNoDelay(true);
                this.b.a(new SocketTransportConnection(accept));
                return;
            } catch (SocketTimeoutException e) {
                if (isInterrupted()) {
                    this.b.b();
                    return;
                }
                ProjectionLog.b("AHU.TCP_CONNECTION", "Socket accept timed out; retrying");
            } catch (IOException e2) {
                if (!isInterrupted()) {
                    ProjectionLog.a(6, "AHU.TCP_CONNECTION", "Can't listen to socket: ".concat(e2.toString()));
                }
                this.b.b();
                return;
            }
        }
    }
}
