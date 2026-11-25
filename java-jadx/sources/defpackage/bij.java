package defpackage;

import java.util.EnumSet;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum bij {
    ZWIEBACK(2),
    ANDROID_ID(4),
    GAIA(8),
    ACCOUNT_NAME(16);

    public static final EnumSet e;
    public static final EnumSet f;
    public static final EnumSet g;
    public final int h;

    static {
        bij bijVar = ZWIEBACK;
        e = EnumSet.allOf(bij.class);
        f = EnumSet.noneOf(bij.class);
        g = EnumSet.of(bijVar);
    }

    bij(int i2) {
        this.h = i2;
    }
}
