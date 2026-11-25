package defpackage;

import android.media.AudioAttributes;
import com.google.android.projection.protocol.GalReceiver;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class VoiceSessionFocusEventRunnable implements Runnable {
    public final /* synthetic */ VoiceSessionAudioFocusManager a;
    public final /* synthetic */ int b;
    private final /* synthetic */ int c;

    public /* synthetic */ auv(VoiceSessionAudioFocusManager auwVar, int i, int i2) {
        this.c = i2;
        this.a = auwVar;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        String str;
        switch (this.c) {
            case 0:
                VoiceSessionAudioFocusManager auwVar = this.a;
                int i2 = this.b;
                switch (i2) {
                    case -3:
                        i = 3;
                        break;
                    case -2:
                        i = 2;
                        break;
                    case -1:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        i = 1;
                        break;
                    case 0:
                    default:
                        ((ParameterizedLoggerApi) VoiceSessionAudioFocusManager.a.b().h("com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager", "handlePlatformFocusChanged", 374, "VoiceSessionAudioFocusManager.java")).o("Unknown focus event %d", i2);
                        return;
                }
                synchronized (auwVar.g) {
                    if (i2 == -1) {
                        if (auwVar.i.contains(AudioStreamType.GUIDANCE)) {
                            auwVar.o = 5;
                            auwVar.j = auwVar.e(3, auw.f);
                            i = 1;
                        } else {
                            auwVar.j = null;
                            auwVar.k = null;
                            auwVar.o = 1;
                        }
                    } else {
                        if (NavInstructionTypeEnum == auwVar.p) {
                            return;
                        }
                        if (i2 == -2 && auwVar.j != null && !VoiceSessionAudioFocusManager.d.equals(auwVar.k) && VoiceSessionAudioFocusManager.c.contains(Integer.valueOf(auwVar.j.getFocusGain()))) {
                            auwVar.f();
                            i = 1;
                        }
                    }
                    auwVar.p = i;
                    auwVar.g(true);
                    return;
                }
            default:
                VoiceSessionAudioFocusManager auwVar2 = this.a;
                int i3 = this.b;
                if (!VoiceSessionAudioFocusManager.b.contains(Integer.valueOf(i3))) {
                    ((ParameterizedLoggerApi) VoiceSessionAudioFocusManager.a.b().h("com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager", "handleAudioFocusRequest", 153, "VoiceSessionAudioFocusManager.java")).o("Invalid audio focus request from GAL: %d", i3);
                    return;
                }
                int g = AudioUtils.g(i3);
                synchronized (auwVar2.g) {
                    int d = VoiceSessionAudioFocusManager.d(i3);
                    AudioAttributes audioAttributes = auw.d;
                    int i4 = GalReceiver.a;
                    if (i3 != 4) {
                        if (auwVar2.m) {
                            audioAttributes = auw.e;
                            d = 4;
                        } else if (i3 != 1) {
                            audioAttributes = auw.f;
                        }
                    }
                    if (ProtoMsgIntStringInt == 0) {
                        auwVar2.f();
                    } else if (auwVar2.i(d, audioAttributes, g) != 0) {
                        auwVar2.l = i3;
                    } else {
                        ParameterizedLoggerApi csxVar = (ParameterizedLoggerApi) VoiceSessionAudioFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/audio/VoiceSessionAudioFocusManager", "handleAudioFocusRequest", 179, "VoiceSessionAudioFocusManager.java");
                        if (ProtoMessageIntAndBooleanG != 1) {
                            switch (ProtoMessageIntAndBooleanG) {
                                case 2:
                                    str = "GAIN";
                                    break;
                                case 3:
                                    str = "GAIN_TRANSIENT";
                                    break;
                                default:
                                    str = "GAIN_TRANSIENT_MAY_DUCK";
                                    break;
                            }
                        } else {
                            str = "RELEASE";
                        }
                        csxVar.p("Audio focus request for %s rejected", str);
                    }
                    auwVar2.g(false);
                }
                return;
        }
    }
}
