package defpackage;

import java.io.IOException;
import java.net.Socket;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SocketTransportConnection extends StreamTransportConnection {
    private final Socket a;

    public SocketTransportConnection(Socket socket) {
        super(socket.getInputStream(), socket.getOutputStream());
        this.a = socket;
    }

    @Override // defpackage.StreamTransportConnection, defpackage.GalTransportConnection
    public final void b(ProjectionCloseReason clyVar) {
        super.b(clyVar);
        try {
            this.a.close();
        } catch (IOException e) {
            e.toString();
        }
    }

    @Override // defpackage.GalTransportConnection, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final void onApplyTcpReadTimout(int i) {
        this.a.setSoTimeout(NavInstructionTypeEnum);
    }

    @Override // defpackage.GalTransportConnection, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final void onApplyTcpReceiveBufferSize(int i) {
        this.a.setReceiveBufferSize(NavInstructionTypeEnum);
    }

    @Override // defpackage.GalTransportConnection, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final void onApplyTcpSendBufferSize(int i) {
        this.a.setSendBufferSize(NavInstructionTypeEnum);
    }

    @Override // defpackage.GalTransportConnection, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final int onRetrieveTcpReadTimeout() {
        return this.a.getSoTimeout();
    }

    @Override // defpackage.GalTransportConnection, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final int onRetrieveTcpReceiveBufferSize() {
        return this.a.getReceiveBufferSize();
    }

    @Override // defpackage.GalTransportConnection, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final int onRetrieveTcpSendBufferSize() {
        return this.a.getSendBufferSize();
    }
}
