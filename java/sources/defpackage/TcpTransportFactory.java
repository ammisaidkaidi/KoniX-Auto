package defpackage;

import android.os.Parcelable;
import java.net.ServerSocket;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TcpTransportFactory implements TransportFactory {
    public ServerSocket a;
    private final WirelessSocketProvider b;

    public TcpTransportFactory(WirelessSocketProvider bduVar) {
        this.b = bduVar;
    }

    @Override // defpackage.TransportFactory
    public final void a() {
        this.a = null;
    }

    @Override // defpackage.TransportFactory
    public final TransportHandle b(Parcelable parcelable, TransportFutureCallback bbjVar) {
        if (parcelable != null) {
            return null;
        }
        if (this.a == null) {
            ServerSocket a = this.b.a();
            this.a = a;
            a.setSoTimeout(1000);
        }
        TcpServerAcceptThread cmcVar = new TcpServerAcceptThread(this, bbjVar);
        cmcVar.start();
        return new ThreadTransportHandle(cmcVar);
    }
}
