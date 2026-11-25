package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cvq extends cvd {
    private final String a;
    private final boolean b;
    private final Level c;

    public cvq(String str, String str2, boolean z, Level level) {
        super(str2);
        this.a = str;
        this.b = z;
        this.c = level;
    }

    @Override // defpackage.cuc
    public final void c(cub cubVar) {
        String str = (String) cubVar.i().d(ctw.a);
        if (str == null) {
            str = a();
        }
        if (str == null) {
            str = cubVar.f().b();
            int indexOf = str.indexOf(36, str.lastIndexOf(46));
            if (indexOf >= 0) {
                str = str.substring(0, indexOf);
            }
        }
        cvr.e(cubVar, cvs.e(this.a, str), this.b, this.c);
    }

    @Override // defpackage.cuc
    public final boolean d(Level level) {
        return true;
    }
}
