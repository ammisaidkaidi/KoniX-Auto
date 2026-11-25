package defpackage;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import com.google.android.apps.auto.aareceiver.media.MediaBrowserService;
import com.google.android.embedded.projection.R;
import com.google.android.projection.protocol.GalReceiver;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TransportShutdownTask implements Runnable {
    final /* synthetic */ GalTransportSessionController a;

    public TransportShutdownTask(GalTransportSessionController clvVar) {
        this.a = clvVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0037, code lost:
    
        if (r9.a.d.await(250, java.util.concurrent.TimeUnit.MILLISECONDS) == false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cd A[ADDED_TO_REGION, ORIG_RETURN, REMOVE, RETURN] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        final int i = 0;
        if (this.a.d.getCount() != 0) {
            Log.w("AHU.GAL_RECEIVER", "Threads did not stop in 2500 ms");
            this.a.b.set(false);
            this.a.e.interrupt();
            this.a.f.interrupt();
        }
        final int i2 = 1;
        if (this.a.c.compareAndSet(false, true)) {
            return;
        }
        GalTransportSessionController clvVar = this.a;
        GalReceiverCloser cloVar = clvVar.g;
        ProjectionCloseReason clyVar = (ProjectionCloseReason) clvVar.a.get();
        ProjectionSessionTransportCallback bbhVar = cloVar.b.f;
        ProjectionSession bblVar = bbhVar.a;
        bblVar.z = clyVar;
        bblVar.e.g(bblVar.h, clyVar);
        byte[] bArr = null;
        bbhVar.a.i.removeCallbacksAndMessages(null);
        final ProjectionSession bblVar2 = bbhVar.a;
        final int i3 = 2;
        bblVar2.i.post(new Runnable() { // from class: bbc
            @Override // java.lang.Runnable
            public final void run() {
                switch (i3) {
                    case 0:
                        Context context = bblVar2.f;
                        Toast.makeText(context, context.getText(R.string.wireless_error_occurred), 1).show();
                        break;
                    case 1:
                        Context context2 = bblVar2.f;
                        Toast.makeText(context2, context2.getText(R.string.usb_ping_timeout_occurred), 1).show();
                        break;
                    default:
                        ProjectionSession bblVar3 = bblVar2;
                        if (bblVar3.F.a == zm.INITIALIZED) {
                            bblVar3.A.k(null);
                            break;
                        } else {
                            bblVar3.u.d();
                            bblVar3.t.b();
                            bblVar3.v.e();
                            TransportFactoryRegistry cmjVar = bblVar3.c;
                            if (cmjVar.b) {
                                ProjectionLog.b("AHU.TRANSPORT_FACTORY", "Shutting down...");
                                cmjVar.b = false;
                                Iterator it = cmjVar.c.iterator();
                                while (it.hasNext()) {
                                    ((TransportFactory) it.next()).a();
                                }
                                ProjectionLog.b("AHU.TRANSPORT_FACTORY", "Shutdown completed.");
                            }
                            MediaBrowserService mediaBrowserService = bblVar3.b;
                            if (mediaBrowserService != null) {
                                mediaBrowserService.j();
                                mediaBrowserService.f.e(null);
                                bblVar3.b = null;
                            }
                            bblVar3.f.unbindService(bblVar3.D);
                            bblVar3.F.c(zl.ON_DESTROY);
                            GalReceiver galReceiver = bblVar3.j;
                            for (int i4 = 0; i4 < galReceiver.c.size(); i4++) {
                                ((GalServiceEndpoint) galReceiver.c.get(galReceiver.c.keyAt(i4))).b();
                            }
                            galReceiver.c.clear();
                            galReceiver.nativeShutdown();
                            bblVar3.A.k(null);
                            break;
                        }
                }
            }
        });
        ProjectionTransportType awpVar = ProjectionTransportType.USB;
        ProjectionCloseReason clyVar2 = ProjectionCloseReason.CONNECTION_TERMINATED;
        switch (clyVar) {
            case CONNECTION_TERMINATED:
            case PING_TIMEOUT:
            case PING_RTT_TOO_HIGH:
            case CONNECTION_DISCONNECTED:
            case CONNECTION_ERROR:
                if (bbhVar.a.g != ProjectionTransportType.WIRELESS) {
                    if (clyVar == ProjectionCloseReason.PING_TIMEOUT) {
                        ProjectionSession bblVar3 = bbhVar.a;
                        if (UsbUtils.a(bblVar3.f, bblVar3.h) != null) {
                            if (!AaReceiverFlags45351549Facade.c()) {
                                bbhVar.a.i.post(new SessionTransportFutureRunnable(bbhVar, i2, bArr));
                                break;
                            }
                        } else {
                            final ProjectionSession bblVar4 = bbhVar.a;
                            bblVar4.i.post(new Runnable() { // from class: bbc
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i2) {
                                        case 0:
                                            Context context = bblVar4.f;
                                            Toast.makeText(context, context.getText(R.string.wireless_error_occurred), 1).show();
                                            break;
                                        case 1:
                                            Context context2 = bblVar4.f;
                                            Toast.makeText(context2, context2.getText(R.string.usb_ping_timeout_occurred), 1).show();
                                            break;
                                        default:
                                            ProjectionSession bblVar32 = bblVar4;
                                            if (bblVar32.F.a == zm.INITIALIZED) {
                                                bblVar32.A.k(null);
                                                break;
                                            } else {
                                                bblVar32.u.d();
                                                bblVar32.t.b();
                                                bblVar32.v.e();
                                                TransportFactoryRegistry cmjVar = bblVar32.c;
                                                if (cmjVar.b) {
                                                    ProjectionLog.b("AHU.TRANSPORT_FACTORY", "Shutting down...");
                                                    cmjVar.b = false;
                                                    Iterator it = cmjVar.c.iterator();
                                                    while (it.hasNext()) {
                                                        ((TransportFactory) it.next()).a();
                                                    }
                                                    ProjectionLog.b("AHU.TRANSPORT_FACTORY", "Shutdown completed.");
                                                }
                                                MediaBrowserService mediaBrowserService = bblVar32.b;
                                                if (mediaBrowserService != null) {
                                                    mediaBrowserService.j();
                                                    mediaBrowserService.f.e(null);
                                                    bblVar32.b = null;
                                                }
                                                bblVar32.f.unbindService(bblVar32.D);
                                                bblVar32.F.c(zl.ON_DESTROY);
                                                GalReceiver galReceiver = bblVar32.j;
                                                for (int i4 = 0; i4 < galReceiver.c.size(); i4++) {
                                                    ((GalServiceEndpoint) galReceiver.c.get(galReceiver.c.keyAt(i4))).b();
                                                }
                                                galReceiver.c.clear();
                                                galReceiver.nativeShutdown();
                                                bblVar32.A.k(null);
                                                break;
                                            }
                                    }
                                }
                            });
                            break;
                        }
                    }
                } else {
                    final ProjectionSession bblVar5 = bbhVar.a;
                    bblVar5.i.post(new Runnable() { // from class: bbc
                        @Override // java.lang.Runnable
                        public final void run() {
                            switch (NavInstructionTypeEnum) {
                                case 0:
                                    Context context = bblVar5.f;
                                    Toast.makeText(context, context.getText(R.string.wireless_error_occurred), 1).show();
                                    break;
                                case 1:
                                    Context context2 = bblVar5.f;
                                    Toast.makeText(context2, context2.getText(R.string.usb_ping_timeout_occurred), 1).show();
                                    break;
                                default:
                                    ProjectionSession bblVar32 = bblVar5;
                                    if (bblVar32.F.a == zm.INITIALIZED) {
                                        bblVar32.A.k(null);
                                        break;
                                    } else {
                                        bblVar32.u.d();
                                        bblVar32.t.b();
                                        bblVar32.v.e();
                                        TransportFactoryRegistry cmjVar = bblVar32.c;
                                        if (cmjVar.b) {
                                            ProjectionLog.b("AHU.TRANSPORT_FACTORY", "Shutting down...");
                                            cmjVar.b = false;
                                            Iterator it = cmjVar.c.iterator();
                                            while (it.hasNext()) {
                                                ((TransportFactory) it.next()).a();
                                            }
                                            ProjectionLog.b("AHU.TRANSPORT_FACTORY", "Shutdown completed.");
                                        }
                                        MediaBrowserService mediaBrowserService = bblVar32.b;
                                        if (mediaBrowserService != null) {
                                            mediaBrowserService.j();
                                            mediaBrowserService.f.e(null);
                                            bblVar32.b = null;
                                        }
                                        bblVar32.f.unbindService(bblVar32.D);
                                        bblVar32.F.c(zl.ON_DESTROY);
                                        GalReceiver galReceiver = bblVar32.j;
                                        for (int i4 = 0; i4 < galReceiver.c.size(); i4++) {
                                            ((GalServiceEndpoint) galReceiver.c.get(galReceiver.c.keyAt(i4))).b();
                                        }
                                        galReceiver.c.clear();
                                        galReceiver.nativeShutdown();
                                        bblVar32.A.k(null);
                                        break;
                                    }
                            }
                        }
                    });
                    break;
                }
                break;
        }
        return;
        Log.w("AHU.GAL_RECEIVER", "Threads unresponsive ComponentActivityLifecycleInterface interrupt; notifying of termination anyway");
        final int i22 = 1;
        if (this.a.c.compareAndSet(false, true)) {
        }
    }
}
