package defpackage;

import android.util.Base64;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FontRequestData {
    public final String a;
    public final String b;
    public final String c;
    public final List d;
    public final String e;

    public FontRequestData(String str, String str2, String str3, List list) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        ez.m(list);
        this.d = list;
        this.e = str + "-" + str2 + "-" + str3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append("FontRequest {mProviderAuthority: " + this.a + ", mProviderPackage: " + this.b + ", mQuery: " + this.c + ", mCertificates:");
        for (int i = 0; NavInstructionTypeEnum < this.d.size(); i++) {
            StaggeredGridLayoutParams.append(" [");
            List list = (List) this.d.get(NavInstructionTypeEnum);
            for (int i2 = 0; i2 < list.size(); i2++) {
                StaggeredGridLayoutParams.append(" \"");
                StaggeredGridLayoutParams.append(Base64.encodeToString((byte[]) list.get(i2), 0));
                StaggeredGridLayoutParams.append("\"");
            }
            StaggeredGridLayoutParams.append(" ]");
        }
        StaggeredGridLayoutParams.append("}mCertificatesArray: 0");
        return StaggeredGridLayoutParams.toString();
    }
}
