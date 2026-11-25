package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ContentInfoCompatImpl implements ContentInfoCompatInterface {
    private final ClipData a;
    private final int b;
    private final int c;
    private final Uri d;
    private final Bundle e;

    public ContentInfoCompatImpl(ContentPayloadHandlerBeta glVar) {
        ClipData clipData = glVar.a;
        ez.m(clipData);
        this.a = clipData;
        this.b = glVar.b;
        this.c = glVar.c;
        this.d = glVar.d;
        this.e = glVar.e;
    }

    @Override // defpackage.ContentInfoCompatInterface
    public final int a() {
        return this.c;
    }

    @Override // defpackage.ContentInfoCompatInterface
    public final int b() {
        return this.b;
    }

    @Override // defpackage.ContentInfoCompatInterface
    public final ClipData c() {
        return this.a;
    }

    @Override // defpackage.ContentInfoCompatInterface
    public final ContentInfo d() {
        return null;
    }

    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append("ContentInfoCompat{clip=");
        StaggeredGridLayoutParams.append(this.a.getDescription());
        StaggeredGridLayoutParams.append(", source=");
        switch (this.b) {
            case 1:
                str = "SOURCE_CLIPBOARD";
                break;
            case 2:
                str = "SOURCE_INPUT_METHOD";
                break;
            default:
                str = "SOURCE_DRAG_AND_DROP";
                break;
        }
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(", flags=");
        StaggeredGridLayoutParams.append(1 != this.c ? "0" : "FLAG_CONVERT_TO_PLAIN_TEXT");
        if (this.d == null) {
            str2 = "";
        } else {
            str2 = ", hasLinkUri(" + this.d.toString().length() + ")";
        }
        StaggeredGridLayoutParams.append(str2);
        StaggeredGridLayoutParams.append(this.e != null ? ", hasExtras" : "");
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
