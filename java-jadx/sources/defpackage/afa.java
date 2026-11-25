package defpackage;

import android.content.Context;
import android.text.TextUtils;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class afa {
    final Context a;
    public String b;
    public aez c;
    public boolean d;

    public afa(Context context) {
        this.a = context;
    }

    public final afb a() {
        if (this.c == null) {
            throw new IllegalArgumentException("Must set a callback to create the configuration.");
        }
        if (this.a == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        if (this.d && TextUtils.isEmpty(this.b)) {
            throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
        }
        return new afb(this.a, this.b, this.c, this.d);
    }
}
