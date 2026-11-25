package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bgl {
    public final int a;
    public final int b;
    public final double c;
    public final double d;
    public final double e;
    private final double f;
    private final double g;

    public bgl() {
    }

    public bgl(int i, int i2, double d, double d2, double d3, double d4, double d5) {
        this.a = i;
        this.b = i2;
        this.f = d;
        this.g = d2;
        this.c = d3;
        this.d = d4;
        this.e = d5;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bgl) {
            bgl bglVar = (bgl) obj;
            if (this.a == bglVar.a && this.b == bglVar.b && Double.doubleToLongBits(this.f) == Double.doubleToLongBits(bglVar.f) && Double.doubleToLongBits(this.g) == Double.doubleToLongBits(bglVar.g) && Double.doubleToLongBits(950.0d) == Double.doubleToLongBits(950.0d) && Double.doubleToLongBits(this.c) == Double.doubleToLongBits(bglVar.c) && Double.doubleToLongBits(this.d) == Double.doubleToLongBits(bglVar.d) && Double.doubleToLongBits(this.e) == Double.doubleToLongBits(bglVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((((this.a ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.f) >>> 32) ^ Double.doubleToLongBits(this.f)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.g) >>> 32) ^ Double.doubleToLongBits(this.g)))) * 1000003) ^ ((int) (Double.doubleToLongBits(950.0d) ^ (Double.doubleToLongBits(950.0d) >>> 32)))) * 1000003) ^ 1231) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.c) >>> 32) ^ Double.doubleToLongBits(this.c)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.d) >>> 32) ^ Double.doubleToLongBits(this.d)))) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.e) >>> 32) ^ Double.doubleToLongBits(this.e)));
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        double d = this.f;
        double d2 = this.g;
        double d3 = this.c;
        double d4 = this.d;
        double d5 = this.e;
        StringBuilder sb = new StringBuilder(320);
        sb.append("DisplayInfo{widthPixels=");
        sb.append(i);
        sb.append(", heightPixels=");
        sb.append(i2);
        sb.append(", widthMm=");
        sb.append(d);
        sb.append(", heightMm=");
        sb.append(d2);
        sb.append(", viewingDistanceMm=");
        sb.append(950.0d);
        sb.append(", isTouchScreen=true, videoScalingFactor=");
        sb.append(d3);
        sb.append(", pixelWidthMm=");
        sb.append(d4);
        sb.append(", pixelHeightMm=");
        sb.append(d5);
        sb.append("}");
        return sb.toString();
    }
}
