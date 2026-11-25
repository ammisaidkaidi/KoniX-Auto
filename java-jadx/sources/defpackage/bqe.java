package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqe {
    public int a = 0;
    public int b = 0;
    public int c = 0;
    public int d = 0;
    public int e = 0;
    public int f = 0;
    int g = 0;

    final int a() {
        return this.e - this.g;
    }

    final boolean b() {
        int i = this.d;
        if (i == 1) {
            if (this.c != 1 || (this.e != 0 && this.g != 1)) {
                i = 1;
            }
            return true;
        }
        int i2 = this.a;
        if (i2 <= 0 || this.c != 1 || i != 0 || this.b != 0) {
            if (i2 <= 0 || this.c <= 1) {
                return false;
            }
            if (this.b != 0 && a() != 0) {
                return false;
            }
        }
        return true;
    }
}
