package defpackage;

import j$.util.function.BiConsumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class aug implements BiConsumer {
    public final /* synthetic */ auj a;
    private final /* synthetic */ int b;

    public /* synthetic */ aug(auj aujVar, int i) {
        this.b = i;
        this.a = aujVar;
    }

    @Override // j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                ((atq) obj2).i.e = this.a;
                break;
            default:
                auj aujVar = this.a;
                auc aucVar = (auc) obj;
                atq atqVar = (atq) obj2;
                atqVar.f();
                if (aujVar.e.equals(dgq.AUTOMATION)) {
                    ((csx) auj.a.c().h("com/google/android/apps/auto/aareceiver/audio/AudioSinkManager", "lambda$handleSetUp$1", 249, "AudioSinkManager.java")).s("Audio stream %s - session id %d", aucVar.name(), atqVar.i.a());
                    adl.c(aujVar.d).edit().putInt(aucVar.name(), atqVar.i.a()).apply();
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
