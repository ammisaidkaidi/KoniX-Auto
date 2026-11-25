package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SqliteOpenHelperConfiguration {
    public final Context a;
    public final String b;
    public final SqliteOpenHelperCallback c;
    public final boolean d;

    public SqliteOpenHelperConfiguration(Context context, String str, SqliteOpenHelperCallback aezVar, boolean z) {
        this.a = context;
        this.b = str;
        this.c = aezVar;
        this.d = z;
    }

    public static SqliteOpenHelperConfigBuilder a(Context context) {
        return new SqliteOpenHelperConfigBuilder(context);
    }
}
