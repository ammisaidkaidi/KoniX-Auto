package defpackage;

import java.util.Random;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cbr {
    public final int c;
    public final short[] a = new short[256];
    public final short[] b = new short[256];
    public long d = 0;

    public cbr(Random random) {
        this.c = (random.nextInt() & (-131075)) | 65537;
    }
}
