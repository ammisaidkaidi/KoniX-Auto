package defpackage;

import j$.util.function.BiConsumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class AudioSinkManagerSetupConsumer implements BiConsumer {
    public final /* synthetic */ AudioSinkManager a;
    private final /* synthetic */ int b;

    public /* synthetic */ aug(AudioSinkManager aujVar, int i) {
        this.b = i;
        this.a = aujVar;
    }

    @Override // j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                ((AudioFocusRequestBuilder) obj2).i.e = this.a;
                break;
            default:
                AudioSinkManager aujVar = this.a;
                AudioStreamType aucVar = (AudioStreamType) obj;
                AudioFocusRequestBuilder atqVar = (AudioFocusRequestBuilder) obj2;
                atqVar.f();
                if (aujVar.e.equals(ReleaseChannelEnum.AUTOMATION)) {
                    ((ParameterizedLoggerApi) AudioSinkManager.a.c().h("com/google/android/apps/auto/aareceiver/audio/AudioSinkManager", "lambda$handleSetUp$1", 249, "AudioSinkManager.java")).s("Audio stream %s - session id %d", aucVar.name(), atqVar.i.a());
                    PreferenceManager.c(aujVar.d).edit().putInt(aucVar.name(), atqVar.i.a()).apply();
                    break;
                }
                break;
        }
    }

    @Override // j$.util.function.BiConsumer
    public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.b) {
        }
        return BiConsumer.CC.$default$andThen(this, biConsumer);
    }
}
