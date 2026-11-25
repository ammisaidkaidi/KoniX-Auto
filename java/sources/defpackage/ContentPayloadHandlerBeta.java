package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ContentPayloadHandlerBeta implements ContentPayloadHandlerInterface {
    final ClipData a;
    final int b;
    int c;
    Uri d;
    Bundle e;

    public ContentPayloadHandlerBeta(ClipData clipData, int i) {
        this.a = clipData;
        this.b = i;
    }

    @Override // defpackage.ContentPayloadHandlerInterface
    public final ContentInfoCompatWrapper a() {
        return new ContentInfoCompatWrapper(new ContentInfoCompatImpl(this));
    }

    @Override // defpackage.ContentPayloadHandlerInterface
    public final void b(Bundle bundle) {
        this.e = bundle;
    }

    @Override // defpackage.ContentPayloadHandlerInterface
    public final void c(int i) {
        this.c = i;
    }

    @Override // defpackage.ContentPayloadHandlerInterface
    public final void d(Uri uri) {
        this.d = uri;
    }
}
