package defpackage;

import android.content.Intent;
import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;
import com.google.android.apps.auto.aareceiver.ui.ClusterActivity;
import j$.util.Optional;
import j$.util.function.Consumer;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ProjectionHandlerDisplayCallback extends StartupTraceTracker {
    private final DisplayType a;
    private final WeakReference b;

    public ProjectionHandlerDisplayCallback(DisplayType ckbVar, AndroidAutoHeadunitProjectionHandler azyVar) {
        this.a = ckbVar;
        this.b = new WeakReference(azyVar);
    }

    @Override // defpackage.StartupTraceTracker
    public final void a(final byte[] bArr) {
        AndroidAutoHeadunitProjectionHandler azyVar = (AndroidAutoHeadunitProjectionHandler) this.b.get();
        DisplayType ckbVar = this.a;
        Arrays.toString(bArr);
        azyVar.b(ckbVar).ifPresent(new Consumer() { // from class: azt
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                ((VideoSinkCallback) obj).d(bArr);
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
    }

    @Override // defpackage.StartupTraceTracker
    public final void aV(final int i, final int i2, final VideoConfigurationMessage ckzVar) {
        AndroidAutoHeadunitProjectionHandler azyVar = (AndroidAutoHeadunitProjectionHandler) this.b.get();
        DisplayType ckbVar = this.a;
        ckbVar.name();
        int i3 = ckzVar.d;
        int i4 = ckzVar.e;
        if (ViewCompatApi19Statics.g(azyVar.b(ckbVar))) {
            ((ParameterizedLoggerApi) AndroidAutoHeadunitProjectionHandler.a.c().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "onSourceVideoConfigChanged", 294, "AndroidAutoHeadunitProjectionHandler.java")).n("Unable to notify activity of imminent video codec config");
        } else {
            azyVar.b(ckbVar).ifPresent(new Consumer() { // from class: azp
                @Override // j$.util.function.Consumer
                public final void accept(Object obj) {
                    int i5 = i;
                    int i6 = i2;
                    VideoConfigurationMessage ckzVar2 = ckzVar;
                    ((VideoSinkCallback) obj).b(i5, i6, ckzVar2.d, ckzVar2.e);
                }

                @Override // j$.util.function.Consumer
                public final /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer.CC.$default$andThen(this, consumer);
                }
            });
        }
    }

    @Override // defpackage.StartupTraceTracker
    public final void b(final VideoFrameBuffer cmaVar) {
        ((AndroidAutoHeadunitProjectionHandler) this.b.get()).b(this.a).ifPresent(new Consumer() { // from class: azs
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                ((VideoSinkCallback) obj).c(VideoFrameBuffer.this);
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
    }

    @Override // defpackage.StartupTraceTracker
    public final void d() {
        ProjectionSession bblVar;
        final AndroidAutoHeadunitProjectionHandler azyVar = (AndroidAutoHeadunitProjectionHandler) this.b.get();
        final DisplayType ckbVar = this.a;
        ckbVar.name();
        if (DisplayType.DISPLAY_TYPE_CLUSTER.equals(ckbVar) && (bblVar = azyVar.i.h) != null) {
            bblVar.s = true;
        }
        if (ViewCompatApi19Statics.g(azyVar.b(ckbVar))) {
            ((ParameterizedLoggerApi) AndroidAutoHeadunitProjectionHandler.a.c().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "onCodecSetup", 325, "AndroidAutoHeadunitProjectionHandler.java")).p("%s: Unable to give MD video focus", ckbVar.name());
        } else {
            ((VideoSinkCallback) azyVar.b(ckbVar).get()).a().aW(new Runnable() { // from class: azo
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidAutoHeadunitProjectionHandler.this.g(ckbVar, 1);
                }
            }, czj.a);
        }
    }

    @Override // defpackage.StartupTraceTracker
    public final void e(final int i) {
        final AndroidAutoHeadunitProjectionHandler azyVar = (AndroidAutoHeadunitProjectionHandler) this.b.get();
        DisplayType ckbVar = this.a;
        ckbVar.name();
        if (ckbVar == DisplayType.DISPLAY_TYPE_MAIN) {
            azyVar.c.post(new Runnable() { // from class: azn
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidAutoHeadunitProjectionHandler azyVar2 = AndroidAutoHeadunitProjectionHandler.this;
                    int i2 = i;
                    if (i2 != 1) {
                        if (i2 == 2) {
                            azyVar2.i.m(azyVar2.d);
                            return;
                        } else {
                            ((ParameterizedLoggerApi) AndroidAutoHeadunitProjectionHandler.a.b().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "lambda$onVideoFocusModeChange$6", 413, "AndroidAutoHeadunitProjectionHandler.java")).o("Unexpected video focus: %d", 3);
                            return;
                        }
                    }
                    DeviceTracker bahVar = azyVar2.i;
                    ProjectionDevice awoVar = azyVar2.d;
                    if (bahVar.w(awoVar)) {
                        bahVar.d.h(awoVar, ProjectionVisibilityState.FOREGROUND);
                        bahVar.g(awoVar).f = 2;
                        bahVar.t();
                    }
                }
            });
        }
    }

    @Override // defpackage.StartupTraceTracker
    public final void f(final int i) {
        final AndroidAutoHeadunitProjectionHandler azyVar = (AndroidAutoHeadunitProjectionHandler) this.b.get();
        final DisplayType ckbVar = this.a;
        if (AaReceiverFlagsDkcFacade.c() && azyVar.l.f == 2) {
            return;
        }
        Optional b = azyVar.b(ckbVar);
        if (NavInstructionTypeEnum == 1) {
            b.ifPresent(new Consumer() { // from class: azq
                @Override // j$.util.function.Consumer
                public final void accept(Object obj) {
                    AndroidAutoHeadunitProjectionHandler azyVar2 = AndroidAutoHeadunitProjectionHandler.this;
                    DisplayType ckbVar2 = ckbVar;
                    if (((VideoSinkCallback) obj).h()) {
                        azyVar2.g(ckbVar2, 1);
                        return;
                    }
                    if (ckbVar2 == DisplayType.DISPLAY_TYPE_MAIN) {
                        Intent intent = new Intent(azyVar2.j, (Class<?>) AndroidAutoHeadunitActivity.class);
                        intent.addFlags(131072);
                        intent.addFlags(268435456);
                        azyVar2.j.startActivity(intent);
                        return;
                    }
                    if (ckbVar2 == DisplayType.DISPLAY_TYPE_CLUSTER && azyVar2.k.a()) {
                        Intent intent2 = new Intent(azyVar2.j, (Class<?>) ClusterActivity.class);
                        intent2.addFlags(131072);
                        intent2.addFlags(268435456);
                        azyVar2.j.startActivity(intent2);
                    }
                }

                @Override // j$.util.function.Consumer
                public final /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer.CC.$default$andThen(this, consumer);
                }
            });
            return;
        }
        if (NavInstructionTypeEnum != 2) {
            if (NavInstructionTypeEnum != 3) {
                return;
            } else {
                i = 3;
            }
        }
        b.ifPresent(new Consumer() { // from class: azr
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                AndroidAutoHeadunitProjectionHandler azyVar2 = AndroidAutoHeadunitProjectionHandler.this;
                DisplayType ckbVar2 = ckbVar;
                int i2 = i;
                azyVar2.g(ckbVar2, i2);
                ((VideoSinkCallback) obj).e();
                if (i2 == 2) {
                    azyVar2.j.startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setFlags(268435456));
                }
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
    }
}
