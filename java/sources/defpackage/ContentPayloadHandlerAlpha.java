package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ContentPayloadHandlerAlpha implements ContentPayloadHandlerInterface {
    private final ContentInfo.Builder a;

    public ContentPayloadHandlerAlpha(ClipData clipData, int i) {
        this.a = new ContentInfo.Builder(clipData, i);
    }

    @Override // defpackage.ContentPayloadHandlerInterface
    public final ContentInfoCompatWrapper a() {
        return new ContentInfoCompatWrapper(new ContentInfoCompatStub(this.a.build()));
    }

    @Override // defpackage.ContentPayloadHandlerInterface
    public final void b(Bundle bundle) {
        this.a.setExtras(bundle);
    }

    @Override // defpackage.ContentPayloadHandlerInterface
    public final void c(int i) {
        this.a.setFlags(NavInstructionTypeEnum);
    }

    @Override // defpackage.ContentPayloadHandlerInterface
    public final void d(Uri uri) {
        this.a.setLinkUri(uri);
    }
}
