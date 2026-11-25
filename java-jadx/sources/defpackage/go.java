package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
final class go implements gn {
    private final ClipData a;
    private final int b;
    private final int c;
    private final Uri d;
    private final Bundle e;

    public go(gl glVar) {
        ClipData clipData = glVar.a;
        ez.m(clipData);
        this.a = clipData;
        this.b = glVar.b;
        this.c = glVar.c;
        this.d = glVar.d;
        this.e = glVar.e;
    }

    @Override // defpackage.gn
    public final int a() {
        return this.c;
    }

    @Override // defpackage.gn
    public final int b() {
        return this.b;
    }

    @Override // defpackage.gn
    public final ClipData c() {
        return this.a;
    }

    @Override // defpackage.gn
    public final ContentInfo d() {
        return null;
    }

    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("ContentInfoCompat{clip=");
        sb.append(this.a.getDescription());
        sb.append(", source=");
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
        sb.append(str);
        sb.append(", flags=");
        sb.append(1 != this.c ? "0" : "FLAG_CONVERT_TO_PLAIN_TEXT");
        if (this.d == null) {
            str2 = "";
        } else {
            str2 = ", hasLinkUri(" + this.d.toString().length() + ")";
        }
        sb.append(str2);
        sb.append(this.e != null ? ", hasExtras" : "");
        sb.append("}");
        return sb.toString();
    }
}
