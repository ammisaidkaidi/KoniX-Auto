package com.google.android.apps.auto.aareceiver.audio;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.apps.auto.aareceiver.audio.MultipleAudioFocusManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MultipleAudioFocusManager implements AudioFocusLossHandlerBase {
    static final AudioAttributes a;
    static final AudioAttributes b;
    static final AudioAttributes c;
    static final ImmutableMapBase d;
    private static final FloggerLoggerFactory e = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager");
    private final AudioManager i;
    private GalReceiver j;
    private final ExecutorService k;
    private boolean f = false;
    private boolean g = false;
    private final Map h = new HashMap();
    private final AudioManager.OnAudioFocusChangeListener l = new AudioFocusChangeListenerImpl(this, 2);
    private final AudioManager.OnAudioFocusChangeListener m = new AudioFocusChangeListenerImpl(this, 1);
    private final AudioManager.OnAudioFocusChangeListener n = new AudioFocusChangeListenerImpl(this, 0);

    static {
        AudioAttributes build = new AudioAttributes.Builder().setUsage(1).setContentType(0).addBundle(AudioUtils.b()).build();
        a = build;
        AudioAttributes build2 = new AudioAttributes.Builder().setUsage(16).setContentType(1).addBundle(AudioUtils.b()).build();
        b = build2;
        AudioAttributes build3 = new AudioAttributes.Builder().setUsage(12).setContentType(1).addBundle(AudioUtils.b()).build();
        c = build3;
        ImmutableMapBuilder cqiVar = new ImmutableMapBuilder();
        cqiVar.f(AudioStreamType.GUIDANCE, build3);
        cqiVar.f(AudioStreamType.MEDIA, build);
        cqiVar.f(AudioStreamType.VOICE_RECOGNITION, build2);
        d = cqiVar.c();
    }

    public MultipleAudioFocusManager(AudioManager audioManager, GalReceiver galReceiver, LifecycleRegistry znVar, ExecutorService executorService) {
        this.i = audioManager;
        this.j = galReceiver;
        this.k = executorService;
        znVar.b(new ProjectionSessionLifecycleListener_zj() { // from class: com.google.android.apps.auto.aareceiver.audio.MultipleAudioFocusManager$1
            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void a() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void b() {
                MultipleAudioFocusManager.this.i();
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void f() {
            }
        });
    }

    static int j(int i) {
        switch (NavInstructionTypeEnum) {
            case -3:
                return 3;
            case -2:
                return 2;
            case 0:
            default:
                ((ParameterizedLoggerApi) e.b().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "mapPlatformFocusToFocusLoss", 574, "MultipleAudioFocusManager.java")).o("Unknown focus event %d", i);
            case -1:
            case 1:
            case 2:
            case 3:
            case 4:
                return 1;
        }
    }

    private static int l(AudioStreamType aucVar) {
        AudioStreamType aucVar2 = AudioStreamType.MEDIA;
        switch (aucVar) {
            case MEDIA:
                return 1;
            case GUIDANCE:
                return 12;
            case VOICE_RECOGNITION:
                return 16;
            default:
                ((ParameterizedLoggerApi) e.c().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "mapAudioPlayerTypeToUsage", 530, "MultipleAudioFocusManager.java")).p("Unknown player type: %s", aucVar);
                return 0;
        }
    }

    private final synchronized int m(int i) {
        int i2 = GalReceiver.a;
        if (NavInstructionTypeEnum == 1) {
            return 1;
        }
        if (NavInstructionTypeEnum == 2) {
            return this.f ? 16 : 12;
        }
        if (NavInstructionTypeEnum == 3) {
            return 12;
        }
        if (NavInstructionTypeEnum == 4) {
            return 0;
        }
        ((ParameterizedLoggerApi) e.b().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "mapGalFocusToUsage", 604, "MultipleAudioFocusManager.java")).o("Unknown Gal audio focus: %d", i);
        return 0;
    }

    private final synchronized int n(int i) {
        int i2 = GalReceiver.a;
        if (NavInstructionTypeEnum == 2) {
            if (!this.f) {
                return 2;
            }
            i = 2;
        }
        return o(m(NavInstructionTypeEnum));
    }

    private static int o(int i) {
        switch (NavInstructionTypeEnum) {
            case 1:
                return 1;
            case 12:
                return 3;
            case 16:
                return 4;
            default:
                ((ParameterizedLoggerApi) e.c().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "mapUsageToPlatformFocus", 618, "MultipleAudioFocusManager.java")).o("Unknown usage: %d.", i);
                return 0;
        }
    }

    private final synchronized AudioAttributes p(int i) {
        if (NavInstructionTypeEnum == 1) {
            return a;
        }
        if (this.f) {
            return b;
        }
        return c;
    }

    private final AudioFocusRequest q(int i, AudioAttributes audioAttributes) {
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        int usage = audioAttributes.getUsage();
        switch (usage) {
            case 1:
                onAudioFocusChangeListener = this.l;
                break;
            case 12:
                onAudioFocusChangeListener = this.m;
                break;
            case 16:
                onAudioFocusChangeListener = this.n;
                break;
            default:
                ((ParameterizedLoggerApi) e.c().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "getAudioFocusChangeListener", 555, "MultipleAudioFocusManager.java")).o("Unknown focus usage: %s", usage);
                onAudioFocusChangeListener = new AudioFocusChangeListenerImpl(this, 2);
                break;
        }
        return new AudioFocusRequest.Builder(NavInstructionTypeEnum).setAcceptsDelayedFocusGain(true).setAudioAttributes(audioAttributes).setWillPauseWhenDucked(true).setOnAudioFocusChangeListener(onAudioFocusChangeListener).build();
    }

    private final synchronized void r() {
        Iterator it = this.h.values().iterator();
        while (it.hasNext()) {
            s(((AudioFocusInfo) it.next()).a);
        }
        this.h.clear();
    }

    private final synchronized void s(AudioFocusRequest audioFocusRequest) {
        int usage = audioFocusRequest.getAudioAttributes().getUsage();
        AudioUtils.e(usage);
        if (this.i.abandonAudioFocusRequest(audioFocusRequest) != 1) {
            ((ParameterizedLoggerApi) e.c().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "releaseFocusRequest", 380, "MultipleAudioFocusManager.java")).p("Failed to abandon focus request with usage: %s", AudioUtils.e(usage));
        }
    }

    private final synchronized void t(AudioFocusRequest audioFocusRequest, boolean z) {
        int usage = audioFocusRequest.getAudioAttributes().getUsage();
        w(true, usage);
        audioFocusRequest.getFocusGain();
        AudioUtils.e(usage);
        int i = 3;
        switch (this.i.requestAudioFocus(audioFocusRequest)) {
            case 0:
                w(false, usage);
                this.h.remove(Integer.valueOf(usage));
                int i2 = GalReceiver.a;
                break;
            case 1:
                i = k(audioFocusRequest.getFocusGain());
                break;
            case 2:
                int i3 = GalReceiver.a;
                x(audioFocusRequest.getAudioAttributes().getUsage(), 2);
                i = 5;
                break;
            default:
                ((ParameterizedLoggerApi) e.c().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "requestAudioFocusFromHU", 262, "MultipleAudioFocusManager.java")).n("Unknown audio focus response.");
                this.h.remove(Integer.valueOf(audioFocusRequest.getAudioAttributes().getUsage()));
                int i4 = GalReceiver.a;
                break;
        }
        if (IcuMessageFormat) {
            u(i, false);
        }
    }

    private final synchronized void u(int i, boolean z) {
        GalReceiver galReceiver = this.j;
        if (galReceiver != null) {
            galReceiver.nativeSetAudioFocus(i, z);
        }
    }

    private final synchronized void v(int i, boolean z) {
        AudioUtils.e(NavInstructionTypeEnum);
        Map map = this.h;
        Integer valueOf = Integer.valueOf(NavInstructionTypeEnum);
        AudioFocusInfo atsVar = (AudioFocusInfo) map.get(valueOf);
        if (atsVar == null) {
            ((ParameterizedLoggerApi) e.c().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "setExpectedFocusLoss", 502, "MultipleAudioFocusManager.java")).p("Focus request with usage %s doesn't exist.", AudioUtils.e(NavInstructionTypeEnum));
            return;
        }
        AudioUtils.e(NavInstructionTypeEnum);
        Map map2 = this.h;
        AudioFocusRequest a2 = AudioFocusInfo.a();
        a2.d(atsVar.a);
        a2.c(atsVar.c);
        a2.b(IcuMessageFormat);
        map2.put(valueOf, a2.a());
    }

    private final synchronized void w(boolean z, int i) {
        Iterator it = this.h.keySet().iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if (intValue != i) {
                v(intValue, z);
            }
        }
    }

    private final synchronized void x(int i, int i2) {
        Map map = this.h;
        Integer valueOf = Integer.valueOf(NavInstructionTypeEnum);
        AudioFocusInfo atsVar = (AudioFocusInfo) map.get(valueOf);
        if (atsVar == null) {
            ((ParameterizedLoggerApi) e.c().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "changeFocusLoss", 456, "MultipleAudioFocusManager.java")).p("Focus request with usage %s doesn't exist.", AudioUtils.e(NavInstructionTypeEnum));
            return;
        }
        AudioUtils.e(NavInstructionTypeEnum);
        Map map2 = this.h;
        AudioFocusRequest a2 = AudioFocusInfo.a();
        a2.d(atsVar.a);
        a2.c(i2);
        a2.b(false);
        map2.put(valueOf, a2.a());
    }

    @Override // defpackage.AudioFocusLossHandlerBase
    public final synchronized void a(AudioStreamType aucVar) {
        int l = l(aucVar);
        Map map = this.h;
        Integer valueOf = Integer.valueOf(ProtoMessageSingleStringL);
        if (map.containsKey(valueOf)) {
            int i = ((AudioFocusInfo) this.h.get(valueOf)).c;
            if (NavInstructionTypeEnum == 0) {
                throw null;
            }
            if (NavInstructionTypeEnum == 1) {
                return;
            }
        }
        if (ProtoMessageSingleStringL == 1) {
            if (this.h.containsKey(16)) {
                this.g = true;
            }
            l = 1;
        }
        AudioFocusRequest q = q(o(ProtoMessageSingleStringL), (AudioAttributes) d.get(aucVar));
        Map map2 = this.h;
        Integer valueOf2 = Integer.valueOf(ProtoMessageSingleStringL);
        AudioFocusRequest a2 = AudioFocusInfo.a();
        a2.d(IcuResourceBundleAction);
        map2.put(valueOf2, a2.a());
        t(q, false);
    }

    @Override // defpackage.AudioFocusLossHandlerBase
    public final synchronized void b(AudioStreamType aucVar) {
        if (aucVar != AudioStreamType.VOICE_RECOGNITION || !this.f) {
            int l = l(aucVar);
            Map map = this.h;
            Integer valueOf = Integer.valueOf(ProtoMessageSingleStringL);
            if (!map.containsKey(valueOf)) {
                if (ProtoMessageSingleStringL == 1 && this.g) {
                    this.g = false;
                    return;
                } else {
                    ((ParameterizedLoggerApi) e.c().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "audioStoppedReleaseFocus", 185, "MultipleAudioFocusManager.java")).p("%IcuMessageArgTypeHolder stopped, but no focus request was made for it.", aucVar);
                    return;
                }
            }
            if (((AudioFocusInfo) this.h.get(valueOf)).c == 2) {
                return;
            }
            s(((AudioFocusInfo) this.h.get(Integer.valueOf(l(aucVar)))).a);
            this.h.remove(valueOf);
        }
    }

    @Override // defpackage.AudioFocusHandlerInterface
    public final synchronized void c(int i) {
        boolean z = i == 1;
        int i2 = GalReceiver.a;
        this.f = z;
        if (IcuMessageFormat) {
            a(AudioStreamType.VOICE_RECOGNITION);
            return;
        }
        b(AudioStreamType.VOICE_RECOGNITION);
        if (this.g) {
            a(AudioStreamType.MEDIA);
            this.g = false;
        }
    }

    public final synchronized void d(int i) {
        AudioUtils.c(NavInstructionTypeEnum);
        if (!this.k.isShutdown()) {
            this.k.execute(new AudioFocusReleaseRunnable(this, i, 1));
        }
    }

    public final synchronized void e(int i) {
        AudioUtils.c(NavInstructionTypeEnum);
        if (!this.k.isShutdown()) {
            this.k.execute(new AudioFocusReleaseRunnable(this, i, 0));
        }
    }

    public final synchronized void f(int i) {
        AudioUtils.c(NavInstructionTypeEnum);
        if (!this.k.isShutdown()) {
            this.k.execute(new AudioFocusReleaseRunnable(this, i, 2));
        }
    }

    public final synchronized void g(int i, int i2) {
        Map map = this.h;
        Integer valueOf = Integer.valueOf(i2);
        AudioFocusInfo atsVar = (AudioFocusInfo) map.get(valueOf);
        if (atsVar == null) {
            return;
        }
        if (atsVar.b) {
            AudioUtils.c(NavInstructionTypeEnum);
            if (NavInstructionTypeEnum == -1) {
                this.h.remove(valueOf);
                return;
            } else {
                v(i2, false);
                return;
            }
        }
        if (NavInstructionTypeEnum == -1) {
            i = -1;
        } else if (atsVar.c == j(NavInstructionTypeEnum)) {
            AudioUtils.c(NavInstructionTypeEnum);
            return;
        }
        switch (NavInstructionTypeEnum) {
            case -3:
            case -2:
                x(i2, j(NavInstructionTypeEnum));
                u(k(NavInstructionTypeEnum), true);
                return;
            case -1:
                if (!this.h.containsKey(1) || !this.h.containsKey(12) || (i2 != 1 && i2 != 12)) {
                    this.h.remove(Integer.valueOf(i2));
                    int i3 = GalReceiver.a;
                    u(3, true);
                    return;
                } else {
                    this.h.remove(1);
                    this.h.remove(12);
                    int i4 = GalReceiver.a;
                    u(7, true);
                    return;
                }
            case 0:
            default:
                ((ParameterizedLoggerApi) e.b().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "handleFocusFromPlatform", 345, "MultipleAudioFocusManager.java")).o("Unknown focus response from HU: %s", i);
                return;
            case 1:
                x(i2, 1);
                u(k(NavInstructionTypeEnum), true);
                return;
        }
    }

    @Override // defpackage.TransportConfigCallback
    public final synchronized void h(int i) {
        int i2 = GalReceiver.a;
        if (NavInstructionTypeEnum == 4) {
            r();
            u(3, false);
            return;
        }
        int n = n(NavInstructionTypeEnum);
        AudioFocusInfo atsVar = (AudioFocusInfo) this.h.get(Integer.valueOf(m(NavInstructionTypeEnum)));
        if (atsVar != null && atsVar.a.getFocusGain() == n && atsVar.c == 1) {
            u(k(ProtoLiteTimestampField), false);
            return;
        }
        AudioFocusRequest q = q(n, p(ProtoLiteTimestampField));
        Map map = this.h;
        Integer valueOf = Integer.valueOf(q.getAudioAttributes().getUsage());
        AudioFocusRequest a2 = AudioFocusInfo.a();
        a2.d(IcuResourceBundleAction);
        map.put(valueOf, a2.a());
        t(q, true);
    }

    public final synchronized void i() {
        r();
        this.k.shutdown();
        this.j = null;
    }

    private static int k(int i) {
        switch (NavInstructionTypeEnum) {
            case -3:
                int i2 = GalReceiver.a;
                return 4;
            case -2:
                int i3 = GalReceiver.a;
                return 5;
            case -1:
            case 0:
                int i4 = GalReceiver.a;
                return 3;
            case 1:
                int i5 = GalReceiver.a;
                return 1;
            case 2:
            case 3:
            case 4:
                int i6 = GalReceiver.a;
                return 2;
            default:
                ((ParameterizedLoggerApi) e.c().h("com/google/android/apps/auto/aareceiver/audio/MultipleAudioFocusManager", "getStateFromPlatformFocusRequest", 401, "MultipleAudioFocusManager.java")).o("Invalid focus request: %s", i);
                StringBuilder sb = new StringBuilder(34);
                StaggeredGridLayoutParams.append("Invalid focus request: ");
                StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
                throw new IllegalStateException(StaggeredGridLayoutParams.toString());
        }
    }
}
