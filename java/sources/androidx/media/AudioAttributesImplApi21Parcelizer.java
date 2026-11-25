package androidx.media;

import android.media.AudioAttributes;
import defpackage.VersionedParcelWriter;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcelWriter agbVar) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.a = (AudioAttributes) agbVar.b(audioAttributesImplApi21.a, 1);
        audioAttributesImplApi21.b = agbVar.a(audioAttributesImplApi21.b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcelWriter agbVar) {
        agbVar.i(audioAttributesImplApi21.a, 1);
        agbVar.h(audioAttributesImplApi21.b, 2);
    }
}
