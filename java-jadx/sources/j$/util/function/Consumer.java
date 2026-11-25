package j$.util.function;

import j$.util.function.Consumer;

/* loaded from: classes2.dex */
public interface Consumer {
    void accept(Object obj);

    Consumer andThen(Consumer consumer);

    /* renamed from: j$.util.function.Consumer$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static Consumer $default$andThen(final Consumer consumer, final Consumer consumer2) {
            consumer2.getClass();
            return new Consumer() { // from class: j$.util.function.Consumer$$ExternalSyntheticLambda0
                @Override // j$.util.function.Consumer
                public final void accept(Object obj) {
                    Consumer.CC.$private$lambda$andThen$0(Consumer.this, consumer2, obj);
                }

                @Override // j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer3) {
                    return Consumer.CC.$default$andThen(this, consumer3);
                }
            };
        }

        public static /* synthetic */ void $private$lambda$andThen$0(Consumer consumer, Consumer consumer2, Object obj) {
            consumer.accept(obj);
            consumer2.accept(obj);
        }
    }
}
