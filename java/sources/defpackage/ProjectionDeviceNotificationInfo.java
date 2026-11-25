package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProjectionDeviceNotificationInfo {
    static int a = 0;
    boolean b;
    public boolean c;
    final int e;
    public ProjectionDevice g;
    boolean h;
    public int d = -1;
    public int f = 0;

    public ProjectionDeviceNotificationInfo(ProjectionDevice awoVar) {
        this.g = awoVar;
        int i = a;
        a = i + 1;
        this.e = i;
    }

    final void a() {
        this.d = -1;
    }

    public final boolean b() {
        return this.d != -1;
    }

    public final boolean c() {
        return this.b || this.c;
    }

    final boolean d(ProjectionTransportType awpVar, boolean z) {
        ProjectionTransportType awpVar2 = ProjectionTransportType.USB;
        switch (awpVar) {
            case USB:
                if (this.b != z) {
                    this.b = z;
                    break;
                }
                break;
            case WIRELESS:
                if (this.c != z) {
                    this.c = z;
                    break;
                }
                break;
        }
        return true;
    }

    public final String toString() {
        String simpleName = getClass().getSimpleName();
        int i = this.d;
        boolean z = this.b;
        boolean z2 = this.c;
        String valueOf = String.valueOf(this.g);
        int i2 = this.f;
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 98 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append(simpleName);
        StaggeredGridLayoutParams.append("{notificationId: ");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(", usb: ");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append(", wireless: ");
        StaggeredGridLayoutParams.append(z2);
        StaggeredGridLayoutParams.append(", device: ");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(", projectionState: ");
        StaggeredGridLayoutParams.append(i2);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
