package defpackage;

import android.content.ClipData;
import android.view.ContentInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
final class gm implements gn {
    private final ContentInfo a;

    public gm(ContentInfo contentInfo) {
        ez.m(contentInfo);
        this.a = contentInfo;
    }

    @Override // defpackage.gn
    public final int a() {
        return this.a.getFlags();
    }

    @Override // defpackage.gn
    public final int b() {
        return this.a.getSource();
    }

    @Override // defpackage.gn
    public final ClipData c() {
        return this.a.getClip();
    }

    @Override // defpackage.gn
    public final ContentInfo d() {
        return this.a;
    }

    public final String toString() {
        return "ContentInfoCompat{" + this.a + "}";
    }
}
