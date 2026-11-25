package defpackage;

import android.car.CarProjectionManager;
import android.car.projection.ProjectionOptions;
import android.content.Context;
import android.content.om.OverlayInfo;
import android.content.om.OverlayManager;
import android.os.Process;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.embedded.projection.R;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OverlayableResourcesProvider {
    private final OemSettings a;
    private int b;

    private OverlayableResourcesProvider(OemSettings bcjVar) {
        this.a = bcjVar;
    }

    public static synchronized OverlayableResourcesProvider b(Context context, OverlayManagerHolder ayhVar, CarProjectionManager carProjectionManager, OemSettings bcjVar) {
        OverlayableResourcesProvider ayfVar;
        synchronized (OverlayableResourcesProvider.class) {
            ayfVar = new OverlayableResourcesProvider(bcjVar);
            OverlayManager overlayManager = ayhVar.b;
            if (overlayManager != null) {
                Iterator it = overlayManager.getOverlayInfosForTarget(ayhVar.a.getPackageName(), Process.myUserHandle()).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    OverlayInfo overlayInfo = (OverlayInfo) it.next();
                    String targetOverlayableName = overlayInfo.getTargetOverlayableName();
                    if (targetOverlayableName != null && targetOverlayableName.equals("AareceiverOverlayableResources") && overlayInfo.isEnabled()) {
                        if (AaReceiverFlags45360511Facade.a.a().a()) {
                            ayfVar.b = context.getResources().getInteger(R.integer.rro_projection_ui_mode);
                        }
                    }
                }
            }
            ayfVar.b = new ProjectionOptions(CarCompat.getProjectionOptions(carProjectionManager)).getUiMode();
        }
        return ayfVar;
    }

    public final int a() {
        return (!this.a.b() || this.a.a() == -1) ? this.b : this.a.a();
    }
}
