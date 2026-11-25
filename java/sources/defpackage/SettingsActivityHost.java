package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SettingsActivityHost extends ComponentActivity implements StingComponentHolder {
    private volatile StingActivityComponentManager a;
    private final Object b = new Object();
    public boolean c = false;

    public SettingsActivityHost() {
        j(new SettingsActivityCallbackB(this));
    }

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.a == null) {
            synchronized (this.b) {
                if (this.a == null) {
                    this.a = new StingActivityComponentManager(this);
                }
            }
        }
        return this.a.aT();
    }
}
