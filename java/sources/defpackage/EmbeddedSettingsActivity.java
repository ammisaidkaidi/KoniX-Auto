package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class EmbeddedSettingsActivity extends AppCompatActivityBase_jf implements StingComponentHolder {
    private volatile StingActivityComponentManager m;
    private final Object n = new Object();
    public boolean l = false;

    public EmbeddedSettingsActivity() {
        j(new SettingsActivityCallback(this));
    }

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.m == null) {
            synchronized (this.n) {
                if (this.m == null) {
                    this.m = new StingActivityComponentManager(this);
                }
            }
        }
        return this.m.aT();
    }
}
