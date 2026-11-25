package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
abstract class AbstractShortCircuitTask extends AbstractTask {
    protected volatile boolean canceled;
    protected final AtomicReference sharedResult;

    protected abstract Object getEmptyResult();

    protected AbstractShortCircuitTask(PipelineHelper pipelineHelper, Spliterator spliterator) {
        super(pipelineHelper, spliterator);
        this.sharedResult = new AtomicReference(null);
    }

    protected AbstractShortCircuitTask(AbstractShortCircuitTask abstractShortCircuitTask, Spliterator spliterator) {
        super(abstractShortCircuitTask, spliterator);
        this.sharedResult = abstractShortCircuitTask.sharedResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        r8 = r7.doLeaf();
     */
    @Override // j$.util.stream.AbstractTask, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void compute() {
        Object obj;
        Spliterator trySplit;
        Spliterator spliterator = this.spliterator;
        long estimateSize = spliterator.estimateSize();
        long targetSize = getTargetSize(estimateSize);
        AtomicReference atomicReference = this.sharedResult;
        boolean z = false;
        AbstractShortCircuitTask abstractShortCircuitTask = this;
        while (true) {
            obj = atomicReference.get();
            if (obj != null) {
                break;
            }
            if (abstractShortCircuitTask.taskCanceled()) {
                obj = abstractShortCircuitTask.getEmptyResult();
                break;
            }
            if (estimateSize <= targetSize || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            AbstractShortCircuitTask abstractShortCircuitTask2 = (AbstractShortCircuitTask) abstractShortCircuitTask.makeChild(trySplit);
            abstractShortCircuitTask.leftChild = abstractShortCircuitTask2;
            AbstractShortCircuitTask abstractShortCircuitTask3 = (AbstractShortCircuitTask) abstractShortCircuitTask.makeChild(spliterator);
            abstractShortCircuitTask.rightChild = abstractShortCircuitTask3;
            abstractShortCircuitTask.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractShortCircuitTask = abstractShortCircuitTask2;
                abstractShortCircuitTask2 = abstractShortCircuitTask3;
            } else {
                abstractShortCircuitTask = abstractShortCircuitTask3;
            }
            z = !z;
            abstractShortCircuitTask2.fork();
            estimateSize = spliterator.estimateSize();
        }
        abstractShortCircuitTask.setLocalResult(obj);
        abstractShortCircuitTask.tryComplete();
    }

    protected void shortCircuit(Object obj) {
        if (obj != null) {
            this.sharedResult.compareAndSet(null, obj);
        }
    }

    @Override // j$.util.stream.AbstractTask
    protected void setLocalResult(Object obj) {
        if (!isRoot()) {
            super.setLocalResult(obj);
        } else if (obj != null) {
            this.sharedResult.compareAndSet(null, obj);
        }
    }

    @Override // j$.util.stream.AbstractTask, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return getLocalResult();
    }

    @Override // j$.util.stream.AbstractTask
    public Object getLocalResult() {
        if (isRoot()) {
            Object obj = this.sharedResult.get();
            return obj == null ? getEmptyResult() : obj;
        }
        return super.getLocalResult();
    }

    protected void cancel() {
        this.canceled = true;
    }

    protected boolean taskCanceled() {
        boolean z = this.canceled;
        if (!z) {
            AbstractTask parent = getParent();
            while (true) {
                AbstractShortCircuitTask abstractShortCircuitTask = (AbstractShortCircuitTask) parent;
                if (z || abstractShortCircuitTask == null) {
                    break;
                }
                z = abstractShortCircuitTask.canceled;
                parent = abstractShortCircuitTask.getParent();
            }
        }
        return z;
    }

    protected void cancelLaterNodes() {
        AbstractShortCircuitTask abstractShortCircuitTask = this;
        for (AbstractShortCircuitTask abstractShortCircuitTask2 = (AbstractShortCircuitTask) getParent(); abstractShortCircuitTask2 != null; abstractShortCircuitTask2 = (AbstractShortCircuitTask) abstractShortCircuitTask2.getParent()) {
            if (abstractShortCircuitTask2.leftChild == abstractShortCircuitTask) {
                AbstractShortCircuitTask abstractShortCircuitTask3 = (AbstractShortCircuitTask) abstractShortCircuitTask2.rightChild;
                if (!abstractShortCircuitTask3.canceled) {
                    abstractShortCircuitTask3.cancel();
                }
            }
            abstractShortCircuitTask = abstractShortCircuitTask2;
        }
    }
}
