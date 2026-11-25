package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public class vl {
    vs a = null;
    public float b = 0.0f;
    final ArrayList c = new ArrayList();
    boolean d = false;
    public vk e;

    public vl() {
    }

    public static final boolean l(vs vsVar) {
        return vsVar.l <= 1;
    }

    public final vs a(boolean[] zArr, vs vsVar) {
        int i;
        int i2 = this.e.a;
        vs vsVar2 = null;
        float f = 0.0f;
        for (int i3 = 0; i3 < i2; i3++) {
            float b = this.e.b(i3);
            if (b < 0.0f) {
                vs d = this.e.d(i3);
                if ((zArr == null || !zArr[d.c]) && d != vsVar && (((i = d.n) == 3 || i == 4) && b < f)) {
                    f = b;
                    vsVar2 = d;
                }
            }
        }
        return vsVar2;
    }

    final void b(vs vsVar) {
        vs vsVar2 = this.a;
        if (vsVar2 != null) {
            this.e.g(vsVar2, -1.0f);
            this.a.d = -1;
            this.a = null;
        }
        float f = -this.e.c(vsVar, true);
        this.a = vsVar;
        if (f == 1.0f) {
            return;
        }
        this.b /= f;
        vk vkVar = this.e;
        int i = vkVar.f;
        for (int i2 = 0; i != -1 && i2 < vkVar.a; i2++) {
            float[] fArr = vkVar.e;
            fArr[i] = fArr[i] / f;
            i = vkVar.d[i];
        }
    }

    public final void c(vn vnVar, vs vsVar, boolean z) {
        if (vsVar == null || !vsVar.g) {
            return;
        }
        this.b += vsVar.f * this.e.a(vsVar);
        this.e.c(vsVar, z);
        if (z) {
            vsVar.b(this);
        }
        if (this.e.a == 0) {
            this.d = true;
            vnVar.c = true;
        }
    }

    public void d(vn vnVar, vl vlVar, boolean z) {
        vk vkVar = this.e;
        float a = vkVar.a(vlVar.a);
        vkVar.c(vlVar.a, z);
        vk vkVar2 = vlVar.e;
        int i = vkVar2.a;
        for (int i2 = 0; i2 < i; i2++) {
            vs d = vkVar2.d(i2);
            vkVar.e(d, vkVar2.a(d) * a, z);
        }
        this.b += vlVar.b * a;
        if (z) {
            vlVar.a.b(this);
        }
        if (this.a == null || this.e.a != 0) {
            return;
        }
        this.d = true;
        vnVar.c = true;
    }

    public boolean e() {
        return this.a == null && this.b == 0.0f && this.e.a == 0;
    }

    public final void f(vn vnVar, int i) {
        this.e.g(vnVar.p(i), 1.0f);
        this.e.g(vnVar.p(i), -1.0f);
    }

    public final void g(vs vsVar, vs vsVar2, vs vsVar3, vs vsVar4, float f) {
        this.e.g(vsVar, -1.0f);
        this.e.g(vsVar2, 1.0f);
        this.e.g(vsVar3, f);
        this.e.g(vsVar4, -f);
    }

    public final void h(vs vsVar, vs vsVar2, vs vsVar3, int i) {
        boolean z;
        if (i != 0) {
            if (i < 0) {
                i = -i;
                z = true;
            } else {
                z = false;
            }
            this.b = i;
            if (z) {
                this.e.g(vsVar, 1.0f);
                this.e.g(vsVar2, -1.0f);
                this.e.g(vsVar3, -1.0f);
                return;
            }
        }
        this.e.g(vsVar, -1.0f);
        this.e.g(vsVar2, 1.0f);
        this.e.g(vsVar3, 1.0f);
    }

    public final void i(vs vsVar, vs vsVar2, vs vsVar3, int i) {
        boolean z;
        if (i != 0) {
            if (i < 0) {
                i = -i;
                z = true;
            } else {
                z = false;
            }
            this.b = i;
            if (z) {
                this.e.g(vsVar, 1.0f);
                this.e.g(vsVar2, -1.0f);
                this.e.g(vsVar3, 1.0f);
                return;
            }
        }
        this.e.g(vsVar, -1.0f);
        this.e.g(vsVar2, 1.0f);
        this.e.g(vsVar3, -1.0f);
    }

    public final void j(vs vsVar, vs vsVar2, vs vsVar3, vs vsVar4, float f) {
        this.e.g(vsVar3, 0.5f);
        this.e.g(vsVar4, 0.5f);
        this.e.g(vsVar, -0.5f);
        this.e.g(vsVar2, -0.5f);
        this.b = -f;
    }

    public vs k(boolean[] zArr) {
        return a(zArr, null);
    }

    public String toString() {
        boolean z;
        vs vsVar = this.a;
        String concat = (vsVar == null ? "0" : "".concat(vsVar.toString())).concat(" = ");
        if (this.b != 0.0f) {
            String valueOf = String.valueOf(concat);
            float f = this.b;
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 15);
            sb.append(valueOf);
            sb.append(f);
            concat = sb.toString();
            z = true;
        } else {
            z = false;
        }
        int i = this.e.a;
        for (int i2 = 0; i2 < i; i2++) {
            vs d = this.e.d(i2);
            if (d != null) {
                float b = this.e.b(i2);
                if (b != 0.0f) {
                    String vsVar2 = d.toString();
                    if (z) {
                        if (b > 0.0f) {
                            concat = String.valueOf(concat).concat(" + ");
                        } else {
                            concat = String.valueOf(concat).concat(" - ");
                            b = -b;
                        }
                    } else if (b < 0.0f) {
                        concat = String.valueOf(concat).concat("- ");
                        b = -b;
                    }
                    if (b == 1.0f) {
                        String valueOf2 = String.valueOf(concat);
                        concat = vsVar2.length() != 0 ? valueOf2.concat(vsVar2) : new String(valueOf2);
                    } else {
                        String valueOf3 = String.valueOf(concat);
                        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf3).length() + 16 + vsVar2.length());
                        sb2.append(valueOf3);
                        sb2.append(b);
                        sb2.append(" ");
                        sb2.append(vsVar2);
                        concat = sb2.toString();
                    }
                    z = true;
                }
            }
        }
        return !z ? String.valueOf(concat).concat("0.0") : concat;
    }

    public vl(vm vmVar) {
        this.e = new vk(this, vmVar);
    }
}
