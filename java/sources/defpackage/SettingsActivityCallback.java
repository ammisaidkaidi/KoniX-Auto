package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SettingsActivityCallback implements ActivityResultLauncherCallback {
    final /* synthetic */ EmbeddedSettingsActivity a;

    public SettingsActivityCallback(EmbeddedSettingsActivity bceVar) {
        this.a = bceVar;
    }

    @Override // defpackage.ActivityResultLauncherCallback
    public final void a() {
        EmbeddedSettingsActivity bceVar = this.a;
        if (bceVar.l) {
            return;
        }
        bceVar.l = true;
        bceVar.aT();
    }
}
