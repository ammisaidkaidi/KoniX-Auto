package defpackage;

import com.google.android.projection.protocol.GalReceiver;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cln implements Runnable {
    final /* synthetic */ GalReceiver a;

    public cln(GalReceiver galReceiver) {
        this.a = galReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bbh bbhVar = this.a.f;
        bbhVar.a.i.post(new bbf(bbhVar, 0, null));
    }
}
