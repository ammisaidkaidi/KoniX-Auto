package defpackage;

import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bca implements acq {
    int a = 0;
    final /* synthetic */ bcb b;

    public bca(bcb bcbVar) {
        this.b = bcbVar;
    }

    @Override // defpackage.acq
    public final void a() {
        if (this.b.as()) {
            bcb bcbVar = this.b;
            bcbVar.ad.setText(bcbVar.F(R.string.dev_settings_already_enabled));
            bcbVar.ad.show();
            return;
        }
        int i = this.a + 1;
        this.a = i;
        if (i != 10) {
            if (i >= 7) {
                this.b.ar(i);
            }
        } else {
            bcb bcbVar2 = this.b;
            bcbVar2.f.edit().putBoolean(bcbVar2.F(R.string.enable_developer_mode_key), true).apply();
            this.b.ar(this.a);
            this.a = 0;
        }
    }
}
