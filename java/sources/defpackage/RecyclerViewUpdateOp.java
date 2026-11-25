package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RecyclerViewUpdateOp {
    public int a;
    public int b;
    Object c;
    public int d;

    public RecyclerViewUpdateOp(int i, int i2, int i3, Object obj) {
        this.a = i;
        this.b = i2;
        this.d = i3;
        this.c = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecyclerViewUpdateOp)) {
            return false;
        }
        RecyclerViewUpdateOp neVar = (RecyclerViewUpdateOp) obj;
        int i = this.a;
        if (NavInstructionTypeEnum != neVar.a) {
            return false;
        }
        if (NavInstructionTypeEnum == 8 && Math.abs(this.d - this.b) == 1 && this.d == neVar.b && this.b == neVar.d) {
            return true;
        }
        if (this.d != neVar.d || this.b != neVar.b) {
            return false;
        }
        Object obj2 = this.c;
        if (obj2 != null) {
            if (!obj2.equals(neVar.c)) {
                return false;
            }
        } else if (neVar.c != null) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((this.a * 31) + this.b) * 31) + this.d;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this)));
        StaggeredGridLayoutParams.append("[");
        switch (this.a) {
            case 1:
                str = "add";
                break;
            case 2:
                str = "rm";
                break;
            case 4:
                str = "up";
                break;
            case 8:
                str = "mv";
                break;
            default:
                str = "??";
                break;
        }
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(",s:");
        StaggeredGridLayoutParams.append(this.b);
        StaggeredGridLayoutParams.append("c:");
        StaggeredGridLayoutParams.append(this.d);
        StaggeredGridLayoutParams.append(",p:");
        StaggeredGridLayoutParams.append(this.c);
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }
}
