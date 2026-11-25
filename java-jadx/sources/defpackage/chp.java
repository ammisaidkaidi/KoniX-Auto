package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class chp {
    private final String b;
    public String a = "files";
    private String c = "common";
    private final Account d = chq.b;
    private String e = "";
    private final cqc f = cqh.j();

    public chp(Context context) {
        bvs.q(true, "Context cannot be null", new Object[0]);
        this.b = context.getPackageName();
    }

    public final Uri a() {
        String str = this.a;
        String str2 = this.c;
        String b = chn.b(this.d);
        String str3 = this.e;
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(length + 4 + length2 + b.length() + String.valueOf(str3).length());
        sb.append("/");
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        sb.append("/");
        sb.append(b);
        sb.append("/");
        sb.append(str3);
        String sb2 = sb.toString();
        return new Uri.Builder().scheme("android").authority(this.b).path(sb2).encodedFragment(cic.b(this.f.f())).build();
    }

    public final void b() {
        bvs.q(chq.a.matcher("phenotype").matches(), "Module must match [a-z]+(_[a-z]+)*: %s", "phenotype");
        bvs.q(!chq.c.contains("phenotype"), "Module name is reserved and cannot be used: %s", "phenotype");
        this.c = "phenotype";
    }

    public final void c(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        Pattern pattern = chq.a;
        this.e = str;
    }
}
