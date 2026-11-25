package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WaitingActivityCallback implements ActivityResultLauncherCallback {
    final /* synthetic */ WaitingForConnectionActivityHost a;

    public WaitingActivityCallback(WaitingForConnectionActivityHost bfwVar) {
        this.a = bfwVar;
    }

    @Override // defpackage.ActivityResultLauncherCallback
    public final void a() {
        WaitingForConnectionActivityHost bfwVar = this.a;
        if (bfwVar.a) {
            return;
        }
        bfwVar.a = true;
        bfwVar.aT();
    }
}
