package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cve implements cvf {
    public final String a;
    public final boolean b;

    public cve() {
        this("", false);
    }

    public cve(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    @Override // defpackage.cvf
    public final cuc a(String str) {
        return new cvq(this.a, str, this.b, Level.ALL);
    }
}
