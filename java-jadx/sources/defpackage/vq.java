package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class vq {
    vs a;
    final /* synthetic */ vr b;

    public vq(vr vrVar) {
        this.b = vrVar;
    }

    public final String toString() {
        String str = "[ ";
        if (this.a != null) {
            for (int i = 0; i < 9; i++) {
                float f = this.a.i[i];
                StringBuilder sb = new StringBuilder(str.length() + 16);
                sb.append(str);
                sb.append(f);
                sb.append(" ");
                str = sb.toString();
            }
        }
        String valueOf = String.valueOf(this.a);
        StringBuilder sb2 = new StringBuilder(str.length() + 2 + String.valueOf(valueOf).length());
        sb2.append(str);
        sb2.append("] ");
        sb2.append(valueOf);
        return sb2.toString();
    }
}
