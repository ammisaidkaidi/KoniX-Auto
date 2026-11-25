package androidx.media;

import defpackage.agb;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(agb agbVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.a = agbVar.a(audioAttributesImplBase.a, 1);
        audioAttributesImplBase.b = agbVar.a(audioAttributesImplBase.b, 2);
        audioAttributesImplBase.c = agbVar.a(audioAttributesImplBase.c, 3);
        audioAttributesImplBase.d = agbVar.a(audioAttributesImplBase.d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, agb agbVar) {
        agbVar.h(audioAttributesImplBase.a, 1);
        agbVar.h(audioAttributesImplBase.b, 2);
        agbVar.h(audioAttributesImplBase.c, 3);
        agbVar.h(audioAttributesImplBase.d, 4);
    }
}
