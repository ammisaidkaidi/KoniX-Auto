package defpackage;

import android.content.Context;
import android.media.AudioFormat;
import java.util.EnumMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AudioStreamConstants {
    public final AudioSinkManager a;
    public final AudioSinkManager b;
    public final AudioSinkManager c;
    public final AudioSinkManager d;
    public final MicrophoneRecorder e;

    public AudioStreamConstants(AppContextModule dhqVar, DaggerProviderInterface dnyVar, SamplingRateProvider cbvVar, OemSettings bcjVar, AudioFocusLossHandlerBase attVar, Context context, ReleaseChannelEnum dgqVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        AudioFormat build = new AudioFormat.Builder().setSampleRate(48000).setChannelMask(12).build();
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setChannelMask(4);
        if (die.a.a().a()) {
            channelMask.setSampleRate(48000);
        } else {
            channelMask.setSampleRate(16000);
        }
        AudioFormat build2 = channelMask.build();
        this.a = b(1, cbvVar, 3, build, attVar, context, dgqVar);
        this.c = b(1, cbvVar, 1, build2, attVar, context, dgqVar);
        if (bcjVar.e()) {
            this.b = b(2, cbvVar, 3, build, attVar, context, dgqVar);
            this.d = b(2, cbvVar, 1, build2, attVar, context, dgqVar);
        } else {
            this.b = null;
            this.d = null;
        }
        if (dhqVar.a.checkSelfPermission("android.permission.RECORD_AUDIO") == 0) {
            this.e = (MicrophoneRecorder) dnyVar.a();
        } else {
            this.e = null;
        }
    }

    private static AudioFocusRequestBuilder a(int i, AudioStreamType aucVar, AudioFormat audioFormat) {
        AudioPlayer aueVar = new AudioPlayer(aucVar, audioFormat);
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return new AudioFocusRequestSubBuilder(aueVar);
            default:
                return new AacDecoder(aueVar);
        }
    }

    private static AudioSinkManager b(int i, SamplingRateProvider cbvVar, int i2, AudioFormat audioFormat, AudioFocusLossHandlerBase attVar, Context context, ReleaseChannelEnum dgqVar) {
        EnumMap enumMap = new EnumMap(AudioStreamType.class);
        switch (i2) {
            case 1:
                enumMap.put((EnumMap) AudioStreamType.GUIDANCE, (AudioStreamType) a(i, AudioStreamType.GUIDANCE, audioFormat));
                enumMap.put((EnumMap) AudioStreamType.VOICE_RECOGNITION, (AudioStreamType) a(i, AudioStreamType.VOICE_RECOGNITION, audioFormat));
                break;
            case 2:
            default:
                String b = GalAudioStreamTypes.b(i2);
                throw new IllegalArgumentException(b.length() != 0 ? "Deprecated stream type ".concat(ProtoLiteMessageBase) : new String("Deprecated stream type "));
            case 3:
                enumMap.put((EnumMap) AudioStreamType.MEDIA, (AudioStreamType) a(i, AudioStreamType.MEDIA, audioFormat));
                break;
        }
        audioFormat.getClass();
        ProjectionSession bblVar = (ProjectionSession) ((SingleCheckProvider) cbvVar.a).a;
        TimeSource c = ClearcutProviders.c();
        attVar.getClass();
        dgqVar.getClass();
        return new AudioSinkManager(enumMap, i2, audioFormat, bblVar, c, attVar, context, dgqVar);
    }
}
