package com.android.car.ui.baselayout;

import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Insets {
    private final int mBottom;
    private final int mLeft;
    private final int mRight;
    private final int mTop;

    public Insets() {
        this.mBottom = 0;
        this.mTop = 0;
        this.mRight = 0;
        this.mLeft = 0;
    }

    public Insets(int i, int i2, int i3, int i4) {
        this.mLeft = i;
        this.mRight = i3;
        this.mTop = i2;
        this.mBottom = i4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Insets insets = (Insets) obj;
            if (this.mLeft == insets.mLeft && this.mRight == insets.mRight && this.mTop == insets.mTop && this.mBottom == insets.mBottom) {
                return true;
            }
        }
        return false;
    }

    public int getBottom() {
        return this.mBottom;
    }

    public int getLeft() {
        return this.mLeft;
    }

    public int getRight() {
        return this.mRight;
    }

    public int getTop() {
        return this.mTop;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mLeft), Integer.valueOf(this.mRight), Integer.valueOf(this.mTop), Integer.valueOf(this.mBottom));
    }

    public String toString() {
        int i = this.mLeft;
        int i2 = this.mRight;
        int i3 = this.mTop;
        int i4 = this.mBottom;
        StringBuilder sb = new StringBuilder(80);
        sb.append("{ left: ");
        sb.append(i);
        sb.append(", right: ");
        sb.append(i2);
        sb.append(", top: ");
        sb.append(i3);
        sb.append(", bottom: ");
        sb.append(i4);
        sb.append(" }");
        return sb.toString();
    }
}
