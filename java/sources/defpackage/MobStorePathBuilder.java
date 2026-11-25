package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MobStorePathBuilder {
    private final String b;
    public String a = "files";
    private String c = "common";
    private final Account d = chq.b;
    private String e = "";
    private final ImmutableListBuilder f = ImmutableList.j();

    public MobStorePathBuilder(Context context) {
        PrimesMetricExtensionUtils.q(true, "Context cannot be null", new Object[0]);
        this.b = context.getPackageName();
    }

    public final Uri a() {
        String str = this.a;
        String str2 = this.c;
        String b = MobStoreAccount.b(this.d);
        String str3 = this.e;
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(length + 4 + length2 + b.length() + String.valueOf(str3).length());
        StaggeredGridLayoutParams.append("/");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append("/");
        StaggeredGridLayoutParams.append(str2);
        StaggeredGridLayoutParams.append("/");
        StaggeredGridLayoutParams.append(ProtoLiteMessageBase);
        StaggeredGridLayoutParams.append("/");
        StaggeredGridLayoutParams.append(str3);
        String sb2 = StaggeredGridLayoutParams.toString();
        return new Uri.Builder().scheme("android").authority(this.b).path(sb2).encodedFragment(MobStoreUriParser.b(this.f.f())).build();
    }

    public final void b() {
        PrimesMetricExtensionUtils.q(FileKeyFactory.a.matcher("phenotype").matches(), "Module must match [a-z]+(_[a-z]+)*: %s", "phenotype");
        PrimesMetricExtensionUtils.q(!FileKeyFactory.c.contains("phenotype"), "Module name is reserved and cannot be used: %s", "phenotype");
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
