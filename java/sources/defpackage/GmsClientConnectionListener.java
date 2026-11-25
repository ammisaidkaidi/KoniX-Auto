package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GmsClientConnectionListener implements ConnectionProgressListener {
    final /* synthetic */ GmsClientBase a;

    public GmsClientConnectionListener(GmsClientBase bmnVar) {
        this.a = bmnVar;
    }

    @Override // defpackage.ConnectionProgressListener
    public final void a(ConnectionResultCodes bizVar) {
        if (bizVar.c()) {
            GmsClientBase bmnVar = this.a;
            bmnVar.t(null, ((GmsApiServiceClientBase) bmnVar).r);
        } else {
            UnregisterListenerAdapter bmxVar = this.a.p;
            if (bmxVar != null) {
                bmxVar.a(bizVar);
            }
        }
    }
}
