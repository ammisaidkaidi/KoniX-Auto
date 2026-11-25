package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AbstractListenableFutureBase extends GuavaAbstractFuture_cyp {
    public static AbstractListenableFutureBase q(ListenableFuture dagVar) {
        return dagVar instanceof AbstractListenableFutureBase ? (AbstractListenableFutureBase) dagVar : new InterruptibleSettableFuture(dagVar);
    }
}
