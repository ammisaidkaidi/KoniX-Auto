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
final class azx extends bzv {
    private final ckb a;
    private final WeakReference b;

    public azx(ckb ckbVar, azy azyVar) {
        this.a = ckbVar;
        this.b = new WeakReference(azyVar);
    }

    @Override // defpackage.bzv
    public final void a(final byte[] bArr) {
        azy azyVar = (azy) this.b.get();
        ckb ckbVar = this.a;
        Arrays.toString(bArr);
        azyVar.b(ckbVar).ifPresent(new Consumer() { // from class: azt
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                ((baw) obj).d(bArr);
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
    }

    @Override // defpackage.bzv
    public final void aV(final int i, final int i2, final ckz ckzVar) {
        azy azyVar = (azy) this.b.get();
        ckb ckbVar = this.a;
        ckbVar.name();
        int i3 = ckzVar.d;
        int i4 = ckzVar.e;
        if (hi.g(azyVar.b(ckbVar))) {
            ((csx) azy.a.c().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "onSourceVideoConfigChanged", 294, "AndroidAutoHeadunitProjectionHandler.java")).n("Unable to notify activity of imminent video codec config");
        } else {
            azyVar.b(ckbVar).ifPresent(new Consumer() { // from class: azp
                @Override // j$.util.function.Consumer
                public final void accept(Object obj) {
                    int i5 = i;
                    int i6 = i2;
                    ckz ckzVar2 = ckzVar;
                    ((baw) obj).b(i5, i6, ckzVar2.d, ckzVar2.e);
                }

                @Override // j$.util.function.Consumer
                public final /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer.CC.$default$andThen(this, consumer);
                }
            });
        }
    }

    @Override // defpackage.bzv
    public final void b(final cma cmaVar) {
        ((azy) this.b.get()).b(this.a).ifPresent(new Consumer() { // from class: azs
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                ((baw) obj).c(cma.this);
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
    }

    @Override // defpackage.bzv
    public final void d() {
        bbl bblVar;
        final azy azyVar = (azy) this.b.get();
        final ckb ckbVar = this.a;
        ckbVar.name();
        if (ckb.DISPLAY_TYPE_CLUSTER.equals(ckbVar) && (bblVar = azyVar.i.h) != null) {
            bblVar.s = true;
        }
        if (hi.g(azyVar.b(ckbVar))) {
            ((csx) azy.a.c().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "onCodecSetup", 325, "AndroidAutoHeadunitProjectionHandler.java")).p("%s: Unable to give MD video focus", ckbVar.name());
        } else {
            ((baw) azyVar.b(ckbVar).get()).a().aW(new Runnable() { // from class: azo
                @Override // java.lang.Runnable
                public final void run() {
                    azy.this.g(ckbVar, 1);
                }
            }, czj.a);
        }
    }

    @Override // defpackage.bzv
    public final void e(final int i) {
        final azy azyVar = (azy) this.b.get();
        ckb ckbVar = this.a;
        ckbVar.name();
        if (ckbVar == ckb.DISPLAY_TYPE_MAIN) {
            azyVar.c.post(new Runnable() { // from class: azn
                @Override // java.lang.Runnable
                public final void run() {
                    azy azyVar2 = azy.this;
                    int i2 = i;
                    if (i2 != 1) {
                        if (i2 == 2) {
                            azyVar2.i.m(azyVar2.d);
                            return;
                        } else {
                            ((csx) azy.a.b().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "lambda$onVideoFocusModeChange$6", 413, "AndroidAutoHeadunitProjectionHandler.java")).o("Unexpected video focus: %d", 3);
                            return;
                        }
                    }
                    bah bahVar = azyVar2.i;
                    awo awoVar = azyVar2.d;
                    if (bahVar.w(awoVar)) {
                        bahVar.d.h(awoVar, bcq.FOREGROUND);
                        bahVar.g(awoVar).f = 2;
                        bahVar.t();
                    }
                }
            });
        }
    }

    @Override // defpackage.bzv
    public final void f(final int i) {
        final azy azyVar = (azy) this.b.get();
        final ckb ckbVar = this.a;
        if (dka.c() && azyVar.l.f == 2) {
            return;
        }
        Optional b = azyVar.b(ckbVar);
        if (i == 1) {
            b.ifPresent(new Consumer() { // from class: azq
                @Override // j$.util.function.Consumer
                public final void accept(Object obj) {
                    azy azyVar2 = azy.this;
                    ckb ckbVar2 = ckbVar;
                    if (((baw) obj).h()) {
                        azyVar2.g(ckbVar2, 1);
                        return;
                    }
                    if (ckbVar2 == ckb.DISPLAY_TYPE_MAIN) {
                        Intent intent = new Intent(azyVar2.j, (Class<?>) AndroidAutoHeadunitActivity.class);
                        intent.addFlags(131072);
                        intent.addFlags(268435456);
                        azyVar2.j.startActivity(intent);
                        return;
                    }
                    if (ckbVar2 == ckb.DISPLAY_TYPE_CLUSTER && azyVar2.k.a()) {
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
        if (i != 2) {
            if (i != 3) {
                return;
            } else {
                i = 3;
            }
        }
        b.ifPresent(new Consumer() { // from class: azr
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                azy azyVar2 = azy.this;
                ckb ckbVar2 = ckbVar;
                int i2 = i;
                azyVar2.g(ckbVar2, i2);
                ((baw) obj).e();
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
