package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class baf {
    static int a = 0;
    boolean b;
    public boolean c;
    final int e;
    public awo g;
    boolean h;
    public int d = -1;
    public int f = 0;

    public baf(awo awoVar) {
        this.g = awoVar;
        int i = a;
        a = i + 1;
        this.e = i;
    }

    final void a() {
        this.d = -1;
    }

    public final boolean b() {
        return this.d != -1;
    }

    public final boolean c() {
        return this.b || this.c;
    }

    final boolean d(awp awpVar, boolean z) {
        awp awpVar2 = awp.USB;
        switch (awpVar) {
            case USB:
                if (this.b != z) {
                    this.b = z;
                    break;
                }
                break;
            case WIRELESS:
                if (this.c != z) {
                    this.c = z;
                    break;
                }
                break;
        }
        return true;
    }

    public final String toString() {
        String simpleName = getClass().getSimpleName();
        int i = this.d;
        boolean z = this.b;
        boolean z2 = this.c;
        String valueOf = String.valueOf(this.g);
        int i2 = this.f;
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 98 + String.valueOf(valueOf).length());
        sb.append(simpleName);
        sb.append("{notificationId: ");
        sb.append(i);
        sb.append(", usb: ");
        sb.append(z);
        sb.append(", wireless: ");
        sb.append(z2);
        sb.append(", device: ");
        sb.append(valueOf);
        sb.append(", projectionState: ");
        sb.append(i2);
        sb.append("}");
        return sb.toString();
    }
}
