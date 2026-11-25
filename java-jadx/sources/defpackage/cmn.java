package defpackage;

import java.io.IOException;
import java.net.Socket;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cmn extends cmb {
    private final Socket a;

    public cmn(Socket socket) {
        super(socket.getInputStream(), socket.getOutputStream());
        this.a = socket;
    }

    @Override // defpackage.cmb, defpackage.clz
    public final void b(cly clyVar) {
        super.b(clyVar);
        try {
            this.a.close();
        } catch (IOException e) {
            e.toString();
        }
    }

    @Override // defpackage.clz, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final void onApplyTcpReadTimout(int i) {
        this.a.setSoTimeout(i);
    }

    @Override // defpackage.clz, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final void onApplyTcpReceiveBufferSize(int i) {
        this.a.setReceiveBufferSize(i);
    }

    @Override // defpackage.clz, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final void onApplyTcpSendBufferSize(int i) {
        this.a.setSendBufferSize(i);
    }

    @Override // defpackage.clz, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final int onRetrieveTcpReadTimeout() {
        return this.a.getSoTimeout();
    }

    @Override // defpackage.clz, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final int onRetrieveTcpReceiveBufferSize() {
        return this.a.getReceiveBufferSize();
    }

    @Override // defpackage.clz, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public final int onRetrieveTcpSendBufferSize() {
        return this.a.getSendBufferSize();
    }
}
