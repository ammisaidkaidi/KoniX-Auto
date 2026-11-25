package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cvp implements cvf {
    private final Level a;

    public cvp() {
        throw null;
    }

    public cvp(Level level) {
        this.a = level;
    }

    @Override // defpackage.cvf
    public final cuc a(String str) {
        return new cvr(str, this.a);
    }
}
