package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class gj implements gk {
    private final ContentInfo.Builder a;

    public gj(ClipData clipData, int i) {
        this.a = new ContentInfo.Builder(clipData, i);
    }

    @Override // defpackage.gk
    public final gp a() {
        return new gp(new gm(this.a.build()));
    }

    @Override // defpackage.gk
    public final void b(Bundle bundle) {
        this.a.setExtras(bundle);
    }

    @Override // defpackage.gk
    public final void c(int i) {
        this.a.setFlags(i);
    }

    @Override // defpackage.gk
    public final void d(Uri uri) {
        this.a.setLinkUri(uri);
    }
}
