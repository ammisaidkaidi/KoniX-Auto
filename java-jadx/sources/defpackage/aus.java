package defpackage;

import android.content.Context;
import android.media.AudioFormat;
import java.util.EnumMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aus {
    public final auj a;
    public final auj b;
    public final auj c;
    public final auj d;
    public final aun e;

    public aus(dhq dhqVar, dny dnyVar, cbv cbvVar, bcj bcjVar, att attVar, Context context, dgq dgqVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
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
            this.e = (aun) dnyVar.a();
        } else {
            this.e = null;
        }
    }

    private static atq a(int i, auc aucVar, AudioFormat audioFormat) {
        aue aueVar = new aue(aucVar, audioFormat);
        switch (i - 1) {
            case 0:
                return new aur(aueVar);
            default:
                return new atp(aueVar);
        }
    }

    private static auj b(int i, cbv cbvVar, int i2, AudioFormat audioFormat, att attVar, Context context, dgq dgqVar) {
        EnumMap enumMap = new EnumMap(auc.class);
        switch (i2) {
            case 1:
                enumMap.put((EnumMap) auc.GUIDANCE, (auc) a(i, auc.GUIDANCE, audioFormat));
                enumMap.put((EnumMap) auc.VOICE_RECOGNITION, (auc) a(i, auc.VOICE_RECOGNITION, audioFormat));
                break;
            case 2:
            default:
                String b = bxr.b(i2);
                throw new IllegalArgumentException(b.length() != 0 ? "Deprecated stream type ".concat(b) : new String("Deprecated stream type "));
            case 3:
                enumMap.put((EnumMap) auc.MEDIA, (auc) a(i, auc.MEDIA, audioFormat));
                break;
        }
        audioFormat.getClass();
        bbl bblVar = (bbl) ((dhy) cbvVar.a).a;
        cxz c = cde.c();
        attVar.getClass();
        dgqVar.getClass();
        return new auj(enumMap, i2, audioFormat, bblVar, c, attVar, context, dgqVar);
    }
}
