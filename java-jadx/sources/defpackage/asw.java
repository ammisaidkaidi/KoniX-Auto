package defpackage;

import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.SensorSource;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class asw implements bbp, bbq, dhs {
    private dny A;
    private dny B;
    private dny C;
    private dny D;
    private dny E;
    private dny F;
    private dny G;
    private dny H;
    private dny I;
    private final atj a;
    private dny b;
    private dny c;
    private dny d;
    private dny e;
    private dny f;
    private dny g;
    private dny h;
    private dny i;
    private dny j;
    private dny k;
    private dny l;
    private dny m;
    private dny n;
    private dny o;
    private dny p;
    private dny q;
    private dny r;
    private dny s;
    private dny t;
    private dny u;
    private dny v;
    private dny w;
    private dny x;
    private dny y;
    private dny z;

    public asw() {
    }

    @Override // defpackage.bbq
    public final atu a() {
        return (atu) this.i.a();
    }

    @Override // defpackage.bbq
    public final axs b() {
        return (axs) this.t.a();
    }

    @Override // defpackage.bbq
    public final cmj c() {
        return (cmj) this.I.a();
    }

    @Override // defpackage.bbq
    public final Map d() {
        cqi f = cqk.f(11);
        f.f(axg.AUDIO_SOURCE, (clk) this.k.a());
        f.f(axg.AUDIO_SINK_MEDIA_PCM, (clk) this.l.a());
        f.f(axg.AUDIO_SINK_MEDIA_AAC, (clk) this.m.a());
        f.f(axg.AUDIO_SINK_TTS_PCM, (clk) this.n.a());
        f.f(axg.AUDIO_SINK_TTS_AAC, (clk) this.o.a());
        f.f(axg.BLUETOOTH, (clk) this.r.a());
        f.f(axg.NAVIGATION_STATUS, (clk) this.s.a());
        f.f(axg.MEDIA_STATUS, (clk) this.u.a());
        axg axgVar = axg.SENSOR;
        SensorSource sensorSource = ((azm) this.C.a()).e;
        dpx.m(sensorSource);
        f.f(axgVar, sensorSource);
        f.f(axg.HOTWORD_ARBITRATION, (clk) this.E.a());
        f.f(axg.WIFI_PROJECTION, (clk) this.G.a());
        return f.c();
    }

    @Override // defpackage.bbq
    public final Set e() {
        return cqw.o((clp) this.i.a());
    }

    @Override // defpackage.bbq
    public final Set f() {
        return csf.a;
    }

    @Override // defpackage.bbq
    public final Set g() {
        return cqw.o((bbo) this.H.a());
    }

    public asw(atj atjVar, bbl bblVar, awo awoVar, GalReceiver galReceiver) {
        this.a = atjVar;
        dhx b = dhy.b(bblVar);
        this.b = b;
        dny c = dhw.c(new aua(b, 18));
        this.c = c;
        this.d = dhw.c(new atx(c, atjVar.F, 2, (byte[]) null));
        this.e = new auk(aty.a, this.b, cya.a);
        this.f = dhy.b(galReceiver);
        this.g = dhw.c(new avy(atjVar.G, this.f, this.c, 1, (byte[]) null));
        dny c2 = dhw.c(new avc(atjVar.G, this.f, this.c, atjVar.F, 1, (byte[]) null));
        this.h = c2;
        this.i = dhw.c(new atx(this.g, c2, 0));
        dny c3 = dhw.c(new aya(atjVar.o, this.d, this.e, atjVar.l, atjVar.F, this.i, atjVar.c, atjVar.i, 1, (byte[]) null));
        this.j = c3;
        this.k = dhw.c(new asy(c3, 19));
        this.l = dhw.c(new aua(this.j, 1));
        this.m = dhw.c(new asy(this.j, 20));
        this.n = dhw.c(new aua(this.j, 2));
        this.o = dhw.c(new aua(this.j, 0));
        this.p = dhy.b(awoVar);
        this.q = dhw.c(new azz(atjVar.c, atjVar.j, atjVar.p, this.p, this.b, atjVar.H, atjVar.d, 1, (byte[]) null));
        this.r = dhw.c(new atx(atjVar.B, this.q, 3));
        this.s = dhw.c(new avy(atjVar.c, atjVar.v, atjVar.I, 2, (char[]) null));
        dny c4 = dhw.c(axt.a);
        this.t = c4;
        this.u = dhw.c(new aua(c4, 4));
        this.v = dhw.c(new avy(atjVar.c, atjVar.J, atjVar.s, 8, (char[][]) null));
        dny c5 = dhw.c(new avy(atjVar.c, atjVar.r, atjVar.s, 7, (byte[][]) null));
        this.w = c5;
        this.x = new atx(this.v, c5, 7, (short[]) null);
        this.y = dhw.c(new aua(atjVar.K, 15));
        this.z = dhw.c(new aua(atjVar.c, 16));
        this.A = dhw.c(new aua(atjVar.c, 17));
        int i = dhz.a;
        List n = dpx.n(4);
        List n2 = dpx.n(0);
        dpx.k(this.x, n);
        dpx.k(this.y, n);
        dpx.k(this.z, n);
        dpx.k(this.A, n);
        this.B = dpx.i(n, n2);
        this.C = dhw.c(new avy(this.c, atjVar.u, this.B, 9, (short[][]) null));
        dny c6 = dhw.c(new atx(atjVar.c, this.b, 11));
        this.D = c6;
        this.E = dhw.c(new bee(c6, 3));
        this.F = new bhf(bhh.a, atjVar.k);
        this.G = dhw.c(new avy(atjVar.A, this.F, atjVar.l, 11, (boolean[][]) null));
        this.H = dhw.c(new avc(atjVar.c, this.f, this.c, atjVar.p, 4, (int[]) null));
        this.I = dhw.c(new atx(atjVar.c, atjVar.D, 10));
    }
}
