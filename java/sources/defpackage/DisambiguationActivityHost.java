package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class DisambiguationActivityHost extends ComponentActivity implements StingComponentHolder {
    private volatile StingActivityComponentManager b;
    private final Object c = new Object();
    public boolean a = false;

    public DisambiguationActivityHost() {
        j(new DisambiguationActivityCallback(this));
    }

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.b == null) {
            synchronized (this.c) {
                if (this.b == null) {
                    this.b = new StingActivityComponentManager(this);
                }
            }
        }
        return this.b.aT();
    }
}
