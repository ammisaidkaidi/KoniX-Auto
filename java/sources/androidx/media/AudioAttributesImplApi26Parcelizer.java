package androidx.media;

import android.media.AudioAttributes;
import defpackage.VersionedParcelWriter;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(VersionedParcelWriter agbVar) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.a = (AudioAttributes) agbVar.b(audioAttributesImplApi26.a, 1);
        audioAttributesImplApi26.b = agbVar.a(audioAttributesImplApi26.b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, VersionedParcelWriter agbVar) {
        agbVar.i(audioAttributesImplApi26.a, 1);
        agbVar.h(audioAttributesImplApi26.b, 2);
    }
}
