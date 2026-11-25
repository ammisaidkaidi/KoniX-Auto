package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class daq implements Runnable {
    Runnable a;
    final /* synthetic */ dar b;

    public daq(dar darVar) {
        this.b = darVar;
    }

    public final String toString() {
        String str;
        Runnable runnable = this.a;
        if (runnable != null) {
            String obj = runnable.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 34);
            sb.append("SequentialExecutorWorker{running=");
            sb.append(obj);
            sb.append("}");
            return sb.toString();
        }
        switch (this.b.d) {
            case 1:
                str = "IDLE";
                break;
            case 2:
                str = "QUEUING";
                break;
            case 3:
                str = "QUEUED";
                break;
            case 4:
                str = "RUNNING";
                break;
            default:
                str = "null";
                break;
        }
        StringBuilder sb2 = new StringBuilder(str.length() + 32);
        sb2.append("SequentialExecutorWorker{state=");
        sb2.append(str);
        sb2.append("}");
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0047, code lost:
    
        r2 = r2 | java.lang.Thread.interrupted();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0049, code lost:
    
        r11.a.run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
    
        r11.a = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
    
        r4 = defpackage.dar.a;
        r5 = java.util.logging.Level.SEVERE;
        r3 = java.lang.String.valueOf(r11.a);
        r10 = new java.lang.StringBuilder(java.lang.String.valueOf(r3).length() + 35);
        r10.append("Exception while executing runnable ");
        r10.append(r3);
        r4.logp(r5, "com.google.common.util.concurrent.SequentialExecutor$QueueWorker", "workOnQueue", r10.toString(), (java.lang.Throwable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0084, code lost:
    
        r11.a = null;
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0092, code lost:
    
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0089, code lost:
    
        r11.a = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008b, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0038, code lost:
    
        if (r2 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x003a, code lost:
    
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0041, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0092 A[Catch: Error -> 0x009a, TRY_ENTER, TryCatch #4 {Error -> 0x009a, blocks: (B:47:0x0014, B:37:0x003a, B:26:0x0092, B:27:0x0099), top: B:2:0x0003 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        boolean z = false;
        boolean z2 = false;
        while (true) {
            try {
                try {
                    synchronized (this.b.b) {
                        if (!z) {
                            dar darVar = this.b;
                            if (darVar.d != 4) {
                                darVar.c++;
                                darVar.d = 4;
                            }
                        }
                        Runnable runnable = (Runnable) this.b.b.poll();
                        this.a = runnable;
                        if (runnable == null) {
                            this.b.d = 1;
                        }
                    }
                    if (z2) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                } catch (Error e) {
                    synchronized (this.b.b) {
                        this.b.d = 1;
                        throw e;
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (z2) {
                }
                throw th;
            }
        }
    }
}
