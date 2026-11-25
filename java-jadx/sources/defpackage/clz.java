package defpackage;

import com.google.android.projection.protocol.ConnectionConfigurationCallbacks;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class clz implements ConnectionConfigurationCallbacks {
    public abstract int a(byte[] bArr, int i, int i2);

    public abstract void b(cly clyVar);

    public abstract void c(byte[] bArr, int i);

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public void onApplyTcpReadTimout(int i) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public void onApplyTcpReceiveBufferSize(int i) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public void onApplyTcpSendBufferSize(int i) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public int onRetrieveTcpReadTimeout() {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public int onRetrieveTcpReceiveBufferSize() {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public int onRetrieveTcpSendBufferSize() {
        throw new UnsupportedOperationException("Not implemented");
    }
}
