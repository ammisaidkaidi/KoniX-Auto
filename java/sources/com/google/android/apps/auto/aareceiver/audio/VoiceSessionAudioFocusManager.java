package com.google.android.apps.auto.aareceiver.audio;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.apps.auto.aareceiver.audio.VoiceSessionAudioFocusManager;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VoiceSessionAudioFocusManager implements AudioFocusLossHandlerBase {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager");
    public static final ImmutableSet b;
    public static final ImmutableSet c;
    static final AudioAttributes d;
    static final AudioAttributes e;
    static final AudioAttributes f;
    public final ExecutorService h;
    AudioAttributes k;
    int l;
    public GalReceiver n;
    private final AudioManager q;
    public final Object g = new Object();
    public final Set i = new HashSet();
    public int o = 1;
    public int p = 1;
    public AudioFocusRequest j = null;
    public boolean m = false;
    private final AudioManager.OnAudioFocusChangeListener r = new AudioManager.OnAudioFocusChangeListener() { // from class: aut
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int i) {
            VoiceSessionAudioFocusManager auwVar = VoiceSessionAudioFocusManager.this;
            AudioUtils.c(NavInstructionTypeEnum);
            if (auwVar.h.isShutdown()) {
                return;
            }
            auwVar.h.execute(new VoiceSessionFocusEventRunnable(auwVar, i, 0));
        }
    };

    static {
        int i = GalReceiver.a;
        b = ImmutableSet.q(1, 2, 3, 4);
        c = ImmutableSet.l(3, 2, 3, 4);
        d = new AudioAttributes.Builder().setUsage(0).setContentType(0).addBundle(AudioUtils.b()).build();
        e = new AudioAttributes.Builder().setUsage(16).setContentType(0).addBundle(AudioUtils.b()).build();
        f = new AudioAttributes.Builder().setUsage(12).setContentType(1).addBundle(AudioUtils.b()).build();
    }

    public VoiceSessionAudioFocusManager(AudioManager audioManager, GalReceiver galReceiver, LifecycleRegistry znVar, ExecutorService executorService) {
        this.q = audioManager;
        this.n = galReceiver;
        this.h = executorService;
        znVar.b(new ProjectionSessionLifecycleListener_zj() { // from class: com.google.android.apps.auto.aareceiver.audio.VoiceSessionAudioFocusManager$1
            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void a() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void b() {
                VoiceSessionAudioFocusManager auwVar = VoiceSessionAudioFocusManager.this;
                synchronized (auwVar.g) {
                    auwVar.f();
                    auwVar.h.shutdown();
                    auwVar.n = null;
                }
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

    public static int d(int i) {
        int i2 = GalReceiver.a;
        if (NavInstructionTypeEnum == 1) {
            return 1;
        }
        if (NavInstructionTypeEnum == 2) {
            return 2;
        }
        if (NavInstructionTypeEnum == 3) {
            return 3;
        }
        if (NavInstructionTypeEnum == 4) {
            return 0;
        }
        throw new IllegalArgumentException("Invalid audio focus");
    }

    @Override // defpackage.AudioFocusLossHandlerBase
    public final void a(AudioStreamType aucVar) {
        synchronized (this.g) {
            this.i.add(aucVar);
        }
    }

    @Override // defpackage.AudioFocusLossHandlerBase
    public final void b(AudioStreamType aucVar) {
        synchronized (this.g) {
            this.i.remove(aucVar);
        }
    }

    @Override // defpackage.AudioFocusHandlerInterface
    public final void c(int i) {
        final int i2 = 0;
        final int i3 = 1;
        boolean z = i == 1;
        int i4 = GalReceiver.a;
        synchronized (this.g) {
            this.m = z;
            Runnable runnable = z ? new Runnable(this) { // from class: auu
                public final /* synthetic */ VoiceSessionAudioFocusManager a;

                {
                    this.a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i2) {
                        case 0:
                            VoiceSessionAudioFocusManager auwVar = this.a;
                            synchronized (auwVar.g) {
                                if (auwVar.j == null) {
                                    return;
                                }
                                int i5 = auwVar.p;
                                if (auwVar.i(4, auw.e, 3) != 0) {
                                    AudioUtils.c(4);
                                } else {
                                    ((ParameterizedLoggerApi) VoiceSessionAudioFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager", "handleVoiceSessionStarted", 301, "VoiceSessionAudioFocusManager.java")).t("Couldn't switch focus: %s, %s", AudioUtils.c(4), auw.e);
                                }
                                if (i5 != 1) {
                                    auwVar.g(true);
                                }
                                return;
                            }
                        default:
                            VoiceSessionAudioFocusManager auwVar2 = this.a;
                            synchronized (auwVar2.g) {
                                if (auwVar2.j != null && VoiceSessionAudioFocusManager.e.equals(auwVar2.j.getAudioAttributes())) {
                                    synchronized (auwVar2.g) {
                                        int d2 = VoiceSessionAudioFocusManager.d(auwVar2.l);
                                        if (auwVar2.i(d2, auwVar2.k, AudioUtils.g(auwVar2.l)) != 0) {
                                            AudioUtils.c(d2);
                                        } else {
                                            ((ParameterizedLoggerApi) VoiceSessionAudioFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager", "restorePreviousFocus", 276, "VoiceSessionAudioFocusManager.java")).t("Couldn't restore previous focus: %s, %s", AudioUtils.c(d2), auwVar2.k);
                                        }
                                        auwVar2.g(true);
                                    }
                                }
                            }
                            return;
                    }
                }
            } : new Runnable(this) { // from class: auu
                public final /* synthetic */ VoiceSessionAudioFocusManager a;

                {
                    this.a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i3) {
                        case 0:
                            VoiceSessionAudioFocusManager auwVar = this.a;
                            synchronized (auwVar.g) {
                                if (auwVar.j == null) {
                                    return;
                                }
                                int i5 = auwVar.p;
                                if (auwVar.i(4, auw.e, 3) != 0) {
                                    AudioUtils.c(4);
                                } else {
                                    ((ParameterizedLoggerApi) VoiceSessionAudioFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager", "handleVoiceSessionStarted", 301, "VoiceSessionAudioFocusManager.java")).t("Couldn't switch focus: %s, %s", AudioUtils.c(4), auw.e);
                                }
                                if (i5 != 1) {
                                    auwVar.g(true);
                                }
                                return;
                            }
                        default:
                            VoiceSessionAudioFocusManager auwVar2 = this.a;
                            synchronized (auwVar2.g) {
                                if (auwVar2.j != null && VoiceSessionAudioFocusManager.e.equals(auwVar2.j.getAudioAttributes())) {
                                    synchronized (auwVar2.g) {
                                        int d2 = VoiceSessionAudioFocusManager.d(auwVar2.l);
                                        if (auwVar2.i(d2, auwVar2.k, AudioUtils.g(auwVar2.l)) != 0) {
                                            AudioUtils.c(d2);
                                        } else {
                                            ((ParameterizedLoggerApi) VoiceSessionAudioFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager", "restorePreviousFocus", 276, "VoiceSessionAudioFocusManager.java")).t("Couldn't restore previous focus: %s, %s", AudioUtils.c(d2), auwVar2.k);
                                        }
                                        auwVar2.g(true);
                                    }
                                }
                            }
                            return;
                    }
                }
            };
            if (!this.h.isShutdown()) {
                this.h.execute(runnable);
            }
        }
    }

    public final AudioFocusRequest e(int i, AudioAttributes audioAttributes) {
        return new AudioFocusRequest.Builder(NavInstructionTypeEnum).setAcceptsDelayedFocusGain(true).setAudioAttributes(audioAttributes).setWillPauseWhenDucked(true).setOnAudioFocusChangeListener(this.r).build();
    }

    public final void f() {
        AudioFocusRequest audioFocusRequest = this.j;
        if (audioFocusRequest != null) {
            if (this.q.abandonAudioFocusRequest(audioFocusRequest) != 1) {
                ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager", "abandonCurrentRequestLocked", 433, "VoiceSessionAudioFocusManager.java")).t("Failed to abandon current request: %s %s", AudioUtils.c(this.j.getFocusGain()), this.j.getAudioAttributes());
            }
            this.j = null;
            this.k = null;
        }
        this.o = 1;
        this.p = 1;
    }

    @Override // defpackage.TransportConfigCallback
    public final void h(int i) {
        if (this.h.isShutdown()) {
            return;
        }
        this.h.execute(new VoiceSessionFocusEventRunnable(this, i, 1));
    }

    public final void g(boolean z) {
        GalReceiver galReceiver = this.n;
        if (galReceiver != null) {
            int i = this.p;
            int i2 = i - 1;
            if (NavInstructionTypeEnum == 0) {
                throw null;
            }
            int i3 = 1;
            switch (i2) {
                case 1:
                    i3 = 5;
                    break;
                case 2:
                    i3 = 4;
                    break;
                default:
                    int i4 = this.o;
                    int i5 = i4 - 1;
                    if (i4 == 0) {
                        throw null;
                    }
                    switch (i5) {
                        case 0:
                            i3 = 3;
                            break;
                        case 1:
                            break;
                        case 2:
                        case 3:
                            if (!z) {
                                i3 = 2;
                                break;
                            }
                            break;
                        case 4:
                            i3 = 7;
                            break;
                        default:
                            throw new AssertionError();
                    }
            }
            galReceiver.nativeSetAudioFocus(i3, z);
        }
    }

    public final int i(int i, AudioAttributes audioAttributes, int i2) {
        AudioAttributes audioAttributes2;
        AudioFocusRequest audioFocusRequest = this.j;
        if (audioFocusRequest != null) {
            if (this.p == 1 && audioFocusRequest.getFocusGain() == i && this.j.getAudioAttributes().equals(audioAttributes) && this.o == i2) {
                return 1;
            }
            if (!this.j.getAudioAttributes().equals(audioAttributes)) {
                AudioUtils.c(NavInstructionTypeEnum);
                f();
            }
        }
        AudioFocusRequest e2 = e(i, audioAttributes);
        int requestAudioFocus = this.q.requestAudioFocus(e2);
        if (requestAudioFocus == 0) {
            f();
            return 0;
        }
        this.o = i2;
        if (audioFocusRequest != null) {
            if (!audioFocusRequest.getAudioAttributes().equals(audioAttributes)) {
                audioAttributes2 = audioFocusRequest.getAudioAttributes();
            } else if (this.o == 2) {
                audioAttributes2 = d;
            }
            this.k = audioAttributes2;
        }
        this.j = e2;
        if (requestAudioFocus == 2) {
            this.p = 2;
        } else {
            this.p = 1;
        }
        return requestAudioFocus;
    }
}
