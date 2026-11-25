package defpackage;

import android.content.ClipData;
import android.view.ContentInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ContentInfoCompatStub implements ContentInfoCompatInterface {
    private final ContentInfo a;

    public ContentInfoCompatStub(ContentInfo contentInfo) {
        ez.m(contentInfo);
        this.a = contentInfo;
    }

    @Override // defpackage.ContentInfoCompatInterface
    public final int a() {
        return this.a.getFlags();
    }

    @Override // defpackage.ContentInfoCompatInterface
    public final int b() {
        return this.a.getSource();
    }

    @Override // defpackage.ContentInfoCompatInterface
    public final ClipData c() {
        return this.a.getClip();
    }

    @Override // defpackage.ContentInfoCompatInterface
    public final ContentInfo d() {
        return this.a;
    }

    public final String toString() {
        return "ContentInfoCompat{" + this.a + "}";
    }
}
