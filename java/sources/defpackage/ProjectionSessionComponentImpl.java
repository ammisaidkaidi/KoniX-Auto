package defpackage;

import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.SensorSource;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProjectionSessionComponentImpl implements SessionComponentInterface, bbq, dhs {
    private DaggerProviderInterface A;
    private DaggerProviderInterface B;
    private DaggerProviderInterface C;
    private DaggerProviderInterface D;
    private DaggerProviderInterface E;
    private DaggerProviderInterface F;
    private DaggerProviderInterface G;
    private DaggerProviderInterface H;
    private DaggerProviderInterface I;
    private final AareceiverAppComponent a;
    private DaggerProviderInterface b;
    private DaggerProviderInterface c;
    private DaggerProviderInterface d;
    private DaggerProviderInterface e;
    private DaggerProviderInterface f;
    private DaggerProviderInterface g;
    private DaggerProviderInterface h;
    private DaggerProviderInterface i;
    private DaggerProviderInterface j;
    private DaggerProviderInterface k;
    private DaggerProviderInterface l;
    private DaggerProviderInterface m;
    private DaggerProviderInterface n;
    private DaggerProviderInterface o;
    private DaggerProviderInterface p;
    private DaggerProviderInterface q;
    private DaggerProviderInterface r;
    private DaggerProviderInterface s;
    private DaggerProviderInterface t;
    private DaggerProviderInterface u;
    private DaggerProviderInterface v;
    private DaggerProviderInterface w;
    private DaggerProviderInterface x;
    private DaggerProviderInterface y;
    private DaggerProviderInterface z;

    public ProjectionSessionComponentImpl() {
    }

    @Override // defpackage.ProjectionSessionComponent
    public final AudioFocusHandlerInterface a() {
        return (AudioFocusHandlerInterface) this.i.a();
    }

    @Override // defpackage.ProjectionSessionComponent
    public final MediaPlaybackStateHolder b() {
        return (MediaPlaybackStateHolder) this.t.a();
    }

    @Override // defpackage.ProjectionSessionComponent
    public final TransportFactoryRegistry c() {
        return (TransportFactoryRegistry) this.I.a();
    }

    @Override // defpackage.ProjectionSessionComponent
    public final Map d() {
        ImmutableMapBuilder f = ImmutableMapBase.f(11);
        f.f(GalServiceType.AUDIO_SOURCE, (GalServiceEndpoint) this.k.a());
        f.f(GalServiceType.AUDIO_SINK_MEDIA_PCM, (GalServiceEndpoint) this.l.a());
        f.f(GalServiceType.AUDIO_SINK_MEDIA_AAC, (GalServiceEndpoint) this.m.a());
        f.f(GalServiceType.AUDIO_SINK_TTS_PCM, (GalServiceEndpoint) this.n.a());
        f.f(GalServiceType.AUDIO_SINK_TTS_AAC, (GalServiceEndpoint) this.o.a());
        f.f(GalServiceType.BLUETOOTH, (GalServiceEndpoint) this.r.a());
        f.f(GalServiceType.NAVIGATION_STATUS, (GalServiceEndpoint) this.s.a());
        f.f(GalServiceType.MEDIA_STATUS, (GalServiceEndpoint) this.u.a());
        GalServiceType axgVar = GalServiceType.SENSOR;
        SensorSource sensorSource = ((SensorManager) this.C.a()).e;
        CommonObjectsAndPreconditionsUtil.m(sensorSource);
        f.f(axgVar, sensorSource);
        f.f(GalServiceType.HOTWORD_ARBITRATION, (GalServiceEndpoint) this.E.a());
        f.f(GalServiceType.WIFI_PROJECTION, (GalServiceEndpoint) this.G.a());
        return f.c();
    }

    @Override // defpackage.ProjectionSessionComponent
    public final Set e() {
        return ImmutableSet.o((TransportConfigCallback) this.i.a());
    }

    @Override // defpackage.ProjectionSessionComponent
    public final Set f() {
        return csf.a;
    }

    @Override // defpackage.ProjectionSessionComponent
    public final Set g() {
        return ImmutableSet.o((SessionCallbackMarker) this.H.a());
    }

    public ProjectionSessionComponentImpl(AareceiverAppComponent atjVar, ProjectionSession bblVar, ProjectionDevice awoVar, GalReceiver galReceiver) {
        this.a = atjVar;
        DaggerProvider b = SingleCheckProvider.b(bblVar);
        this.b = b;
        DaggerProviderInterface c = DoubleCheckProvider.c(new PhenotypeRegistrationInfoFactory(b, 18));
        this.c = c;
        this.d = DoubleCheckProvider.c(new BluetoothModuleFactory(c, atjVar.F, 2, (byte[]) null));
        this.e = new PrimesTracerFactory(aty.a, this.b, cya.a);
        this.f = SingleCheckProvider.b(galReceiver);
        this.g = DoubleCheckProvider.c(new PhenotypeRegistrationInfoValidatorFactory(atjVar.G, this.f, this.c, 1, (byte[]) null));
        DaggerProviderInterface c2 = DoubleCheckProvider.c(new BluetoothModuleDepsFactory(atjVar.G, this.f, this.c, atjVar.F, 1, (byte[]) null));
        this.h = c2;
        this.i = DoubleCheckProvider.c(new BluetoothModuleFactory(this.g, c2, 0));
        DaggerProviderInterface c3 = DoubleCheckProvider.c(new PrimesModuleFactory(atjVar.o, this.d, this.e, atjVar.l, atjVar.F, this.i, atjVar.c, atjVar.i, 1, (byte[]) null));
        this.j = c3;
        this.k = DoubleCheckProvider.c(new SystemServicesModuleFactory(c3, 19));
        this.l = DoubleCheckProvider.c(new PhenotypeRegistrationInfoFactory(this.j, 1));
        this.m = DoubleCheckProvider.c(new SystemServicesModuleFactory(this.j, 20));
        this.n = DoubleCheckProvider.c(new PhenotypeRegistrationInfoFactory(this.j, 2));
        this.o = DoubleCheckProvider.c(new PhenotypeRegistrationInfoFactory(this.j, 0));
        this.p = SingleCheckProvider.b(awoVar);
        this.q = DoubleCheckProvider.c(new ProjectionHandlerFactory(atjVar.c, atjVar.j, atjVar.p, this.p, this.b, atjVar.H, atjVar.d, 1, (byte[]) null));
        this.r = DoubleCheckProvider.c(new BluetoothModuleFactory(atjVar.B, this.q, 3));
        this.s = DoubleCheckProvider.c(new PhenotypeRegistrationInfoValidatorFactory(atjVar.c, atjVar.v, atjVar.I, 2, (char[]) null));
        DaggerProviderInterface c4 = DoubleCheckProvider.c(axt.a);
        this.t = c4;
        this.u = DoubleCheckProvider.c(new PhenotypeRegistrationInfoFactory(c4, 4));
        this.v = DoubleCheckProvider.c(new PhenotypeRegistrationInfoValidatorFactory(atjVar.c, atjVar.J, atjVar.s, 8, (char[][]) null));
        DaggerProviderInterface c5 = DoubleCheckProvider.c(new PhenotypeRegistrationInfoValidatorFactory(atjVar.c, atjVar.r, atjVar.s, 7, (byte[][]) null));
        this.w = c5;
        this.x = new BluetoothModuleFactory(this.v, c5, 7, (short[]) null);
        this.y = DoubleCheckProvider.c(new PhenotypeRegistrationInfoFactory(atjVar.K, 15));
        this.z = DoubleCheckProvider.c(new PhenotypeRegistrationInfoFactory(atjVar.c, 16));
        this.A = DoubleCheckProvider.c(new PhenotypeRegistrationInfoFactory(atjVar.c, 17));
        int i = dhz.a;
        List n = CommonObjectsAndPreconditionsUtil.n(4);
        List n2 = CommonObjectsAndPreconditionsUtil.n(0);
        CommonObjectsAndPreconditionsUtil.k(this.x, n);
        CommonObjectsAndPreconditionsUtil.k(this.y, n);
        CommonObjectsAndPreconditionsUtil.k(this.z, n);
        CommonObjectsAndPreconditionsUtil.k(this.A, n);
        this.B = CommonObjectsAndPreconditionsUtil.i(n, n2);
        this.C = DoubleCheckProvider.c(new PhenotypeRegistrationInfoValidatorFactory(this.c, atjVar.u, this.B, 9, (short[][]) null));
        DaggerProviderInterface c6 = DoubleCheckProvider.c(new BluetoothModuleFactory(atjVar.c, this.b, 11));
        this.D = c6;
        this.E = DoubleCheckProvider.c(new PrimesExecutorConfigFactory(c6, 3));
        this.F = new TracerFactory(bhh.a, atjVar.k);
        this.G = DoubleCheckProvider.c(new PhenotypeRegistrationInfoValidatorFactory(atjVar.A, this.F, atjVar.l, 11, (boolean[][]) null));
        this.H = DoubleCheckProvider.c(new BluetoothModuleDepsFactory(atjVar.c, this.f, this.c, atjVar.p, 4, (int[]) null));
        this.I = DoubleCheckProvider.c(new BluetoothModuleFactory(atjVar.c, atjVar.D, 10));
    }
}
