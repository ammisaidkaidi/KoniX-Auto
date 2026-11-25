package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
class ReceiverAppActivity extends ComponentActivity implements StingComponentHolder {
    private volatile StingActivityComponentManager ez;
    private final Object eA = new Object();
    private boolean c = false;

    public ReceiverAppActivity() {
        j(new ReceiverAppActivityCallback(this));
    }

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.ez == null) {
            synchronized (this.eA) {
                if (this.ez == null) {
                    this.ez = new StingActivityComponentManager(this);
                }
            }
        }
        return this.ez.aT();
    }

    protected void y() {
        if (this.c) {
            return;
        }
        this.c = true;
        ((AareceiverActivityBase) this).v = (AndroidAutoHeadunitProjectionHandler) ((DaggerSingleProvider) aT()).a.z.a();
    }
}
