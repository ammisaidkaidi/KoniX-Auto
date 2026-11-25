package defpackage;

import java.nio.ByteBuffer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AudioFocusRequestSubBuilder extends AudioFocusRequestBuilder {
    public AudioFocusRequestSubBuilder(AudioPlayer aueVar) {
        super(1, aueVar);
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void c(byte[] bArr, long j) {
        this.i.b(ByteBuffer.wrap(bArr));
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void f() {
        this.i.c();
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void g() {
        this.i.d();
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void h(boolean z) {
        this.i.e(IcuMessageFormat);
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void i() {
        this.i.f();
    }
}
