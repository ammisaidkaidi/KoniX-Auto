package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum GalServiceType {
    CLUSTER_DISPLAY,
    MAIN_DISPLAY,
    MAIN_INPUT,
    CLUSTER_INPUT,
    SENSOR,
    AUDIO_SINK_MEDIA_PCM,
    AUDIO_SINK_MEDIA_AAC,
    AUDIO_SINK_TTS_PCM,
    AUDIO_SINK_TTS_AAC,
    AUDIO_SOURCE,
    BLUETOOTH,
    WIFI_PROJECTION,
    NAVIGATION_STATUS,
    MEDIA_STATUS,
    HOTWORD_ARBITRATION;

    public final int a() {
        return ordinal() + 1;
    }
}
