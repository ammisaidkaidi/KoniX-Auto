package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bdt {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;

    public bdt() {
    }

    public final boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (obj instanceof bdt) {
            bdt bdtVar = (bdt) obj;
            if (this.a.equals(bdtVar.a) && this.b.equals(bdtVar.b) && this.c.equals(bdtVar.c) && ((i = this.e) != 0 ? i == bdtVar.e : bdtVar.e == 0)) {
                String str = this.d;
                String str2 = bdtVar.d;
                if (str != null ? str.equals(str2) : str2 == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003;
        int i = this.e;
        if (i == 0) {
            i = 0;
        }
        int i2 = (hashCode ^ i) * 1000003;
        String str = this.d;
        return i2 ^ (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        int i = this.e;
        String num = i != 0 ? Integer.toString(i - 1) : "null";
        String str4 = this.d;
        StringBuilder sb = new StringBuilder(str.length() + 72 + str2.length() + str3.length() + num.length() + String.valueOf(str4).length());
        sb.append("ApConfiguration{ssid=");
        sb.append(str);
        sb.append(", bssid=");
        sb.append(str2);
        sb.append(", preSharedKey=");
        sb.append(str3);
        sb.append(", accessPointType=");
        sb.append(num);
        sb.append(", hostIp=");
        sb.append(str4);
        sb.append("}");
        return sb.toString();
    }

    public bdt(String str, String str2, String str3, int i, String str4) {
        if (str == null) {
            throw new NullPointerException("Null ssid");
        }
        this.a = str;
        if (str2 == null) {
            throw new NullPointerException("Null bssid");
        }
        this.b = str2;
        if (str3 == null) {
            throw new NullPointerException("Null preSharedKey");
        }
        this.c = str3;
        this.e = i;
        this.d = str4;
    }
}
