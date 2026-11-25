package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class apn {
    public final aqw a;
    public final Consumer b;
    public String c = "";
    public Drawable d = null;

    public apn(Context context, aqw aqwVar, final Runnable runnable, Consumer consumer) {
        this.a = aqwVar;
        this.b = consumer;
        final int i = 0;
        new aqx(context).a = new Consumer(this) { // from class: apm
            public final /* synthetic */ apn a;

            {
                this.a = this;
            }

            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                switch (i) {
                    case 0:
                        apn apnVar = this.a;
                        Runnable runnable2 = runnable;
                        CharSequence charSequence = (CharSequence) obj;
                        apnVar.c = charSequence == null ? "" : charSequence.toString();
                        runnable2.run();
                        break;
                    default:
                        apn apnVar2 = this.a;
                        Runnable runnable3 = runnable;
                        apnVar2.d = (Drawable) obj;
                        runnable3.run();
                        break;
                }
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer2) {
                switch (i) {
                }
                return Consumer.CC.$default$andThen(this, consumer2);
            }
        };
        final int i2 = 1;
        new apo(context).a = new Consumer(this) { // from class: apm
            public final /* synthetic */ apn a;

            {
                this.a = this;
            }

            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        apn apnVar = this.a;
                        Runnable runnable2 = runnable;
                        CharSequence charSequence = (CharSequence) obj;
                        apnVar.c = charSequence == null ? "" : charSequence.toString();
                        runnable2.run();
                        break;
                    default:
                        apn apnVar2 = this.a;
                        Runnable runnable3 = runnable;
                        apnVar2.d = (Drawable) obj;
                        runnable3.run();
                        break;
                }
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer2) {
                switch (i2) {
                }
                return Consumer.CC.$default$andThen(this, consumer2);
            }
        };
        throw null;
    }
}
