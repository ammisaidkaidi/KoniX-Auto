package android.support.v4.media;

import androidx.media.AudioAttributesCompat;
import defpackage.VersionedParcelWriter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AudioAttributesCompatParcelizer extends androidx.media.AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(VersionedParcelWriter agbVar) {
        return androidx.media.AudioAttributesCompatParcelizer.read(agbVar);
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, VersionedParcelWriter agbVar) {
        androidx.media.AudioAttributesCompatParcelizer.write(audioAttributesCompat, agbVar);
    }
}
