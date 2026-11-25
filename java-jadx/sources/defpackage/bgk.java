package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bgk {
    public final bgl a;
    public final int b;
    public final double c;
    public final double d;
    public final double e;
    public final double f;
    private final int g;
    private final double h;
    private final double i;
    private final double j;
    private final double k;

    public bgk() {
    }

    public bgk(bgl bglVar, int i, int i2, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        this.a = bglVar;
        this.b = i;
        this.g = i2;
        this.c = d;
        this.d = d2;
        this.h = d3;
        this.i = d4;
        this.j = d5;
        this.k = d6;
        this.e = d7;
        this.f = d8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bgk) {
            bgk bgkVar = (bgk) obj;
            if (this.a.equals(bgkVar.a) && this.b == bgkVar.b && this.g == bgkVar.g && Double.doubleToLongBits(this.c) == Double.doubleToLongBits(bgkVar.c) && Double.doubleToLongBits(this.d) == Double.doubleToLongBits(bgkVar.d) && Double.doubleToLongBits(this.h) == Double.doubleToLongBits(bgkVar.h) && Double.doubleToLongBits(this.i) == Double.doubleToLongBits(bgkVar.i) && Double.doubleToLongBits(this.j) == Double.doubleToLongBits(bgkVar.j) && Double.doubleToLongBits(this.k) == Double.doubleToLongBits(bgkVar.k) && Double.doubleToLongBits(this.e) == Double.doubleToLongBits(bgkVar.e) && Double.doubleToLongBits(this.f) == Double.doubleToLongBits(bgkVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ this.g) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.c) >>> 32) ^ Double.doubleToLongBits(this.c)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.d) >>> 32) ^ Double.doubleToLongBits(this.d)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.h) >>> 32) ^ Double.doubleToLongBits(this.h)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.i) >>> 32) ^ Double.doubleToLongBits(this.i)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.j) >>> 32) ^ Double.doubleToLongBits(this.j)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.k) >>> 32) ^ Double.doubleToLongBits(this.k)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.e) >>> 32) ^ Double.doubleToLongBits(this.e)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.f) >>> 32) ^ Double.doubleToLongBits(this.f)));
    }

    public final String toString() {
        String obj = this.a.toString();
        int i = this.b;
        int i2 = this.g;
        double d = this.c;
        double d2 = this.d;
        double d3 = this.h;
        double d4 = this.i;
        double d5 = this.j;
        double d6 = this.k;
        double d7 = this.e;
        double d8 = this.f;
        StringBuilder sb = new StringBuilder(obj.length() + 411);
        sb.append("DensityInfo{display=");
        sb.append(obj);
        sb.append(", reportedDensity=");
        sb.append(i);
        sb.append(", scaledDensity=");
        sb.append(i2);
        sb.append(", widthDp=");
        sb.append(d);
        sb.append(", heightDp=");
        sb.append(d2);
        sb.append(", dpWidthMm=");
        sb.append(d3);
        sb.append(", dpHeightMm=");
        sb.append(d4);
        sb.append(", secondaryTextSizePixels=");
        sb.append(d5);
        sb.append(", secondaryTextSizeMm=");
        sb.append(d6);
        sb.append(", secondaryTextSizeArcmin=");
        sb.append(d7);
        sb.append(", touchTargetHeightMm=");
        sb.append(d8);
        sb.append("}");
        return sb.toString();
    }
}
