package defpackage;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ApplicationExitInfoProvider implements ApplicationExitInfoSource {
    private final Context a;

    public ApplicationExitInfoProvider(Context context) {
        this.a = context;
    }

    @Override // defpackage.ApplicationExitInfoSource
    public /* bridge */ /* synthetic */ List a(int i, int i2, String str, long j) {
        return b(0, 0, str, j);
    }

    public ImmutableList b(int i, int i2, String str, long j) {
        int i3;
        ActivityManager activityManager = (ActivityManager) this.a.getSystemService("activity");
        activityManager.getClass();
        List<ApplicationExitInfo> historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(this.a.getPackageName(), 0, 0);
        ImmutableListBuilder j2 = ImmutableList.j();
        for (ApplicationExitInfo applicationExitInfo : historicalProcessExitReasons) {
            if (applicationExitInfo.getProcessName().equals(str) && applicationExitInfo.getTimestamp() == j) {
                return j2.f();
            }
            ProtoMsgHoldingMessageAndBool n = ProtoMessageStringAndLongCounters.j.n();
            String processName = applicationExitInfo.getProcessName();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndLongCounters dofVar = (ProtoMessageStringAndLongCounters) n.b;
            processName.getClass();
            dofVar.a |= 1;
            dofVar.b = processName;
            int status = applicationExitInfo.getStatus();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndLongCounters dofVar2 = (ProtoMessageStringAndLongCounters) n.b;
            int i4 = 4;
            dofVar2.a |= 4;
            dofVar2.d = status;
            long timestamp = applicationExitInfo.getTimestamp();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndLongCounters dofVar3 = (ProtoMessageStringAndLongCounters) n.b;
            dofVar3.a |= 16;
            dofVar3.f = timestamp;
            long pss = applicationExitInfo.getPss();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndLongCounters dofVar4 = (ProtoMessageStringAndLongCounters) n.b;
            dofVar4.a |= 32;
            dofVar4.g = pss;
            long rss = applicationExitInfo.getRss();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndLongCounters dofVar5 = (ProtoMessageStringAndLongCounters) n.b;
            dofVar5.a |= 64;
            dofVar5.h = rss;
            boolean isLowMemoryKillReportSupported = ActivityManager.isLowMemoryKillReportSupported();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndLongCounters dofVar6 = (ProtoMessageStringAndLongCounters) n.b;
            dofVar6.a |= 128;
            dofVar6.i = isLowMemoryKillReportSupported;
            switch (applicationExitInfo.getReason()) {
                case 0:
                    i3 = 15;
                    break;
                case 1:
                    i3 = 2;
                    break;
                case 2:
                    i3 = 3;
                    break;
                case 3:
                    i3 = 4;
                    break;
                case 4:
                    i3 = 5;
                    break;
                case 5:
                    i3 = 6;
                    break;
                case 6:
                    i3 = 7;
                    break;
                case 7:
                    i3 = 8;
                    break;
                case 8:
                    i3 = 9;
                    break;
                case 9:
                    i3 = 10;
                    break;
                case 10:
                    i3 = 11;
                    break;
                case 11:
                    i3 = 12;
                    break;
                case 12:
                    i3 = 13;
                    break;
                case 13:
                    i3 = 14;
                    break;
                default:
                    i3 = 0;
                    break;
            }
            if (i3 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMessageStringAndLongCounters dofVar7 = (ProtoMessageStringAndLongCounters) n.b;
                dofVar7.c = i3 - 1;
                dofVar7.a |= 2;
            }
            switch (applicationExitInfo.getImportance()) {
                case 100:
                    i4 = 2;
                    break;
                case 125:
                    i4 = 3;
                    break;
                case 200:
                    i4 = 5;
                    break;
                case 230:
                    i4 = 6;
                    break;
                case 300:
                    i4 = 8;
                    break;
                case 325:
                    break;
                case 350:
                    i4 = 7;
                    break;
                case 400:
                    i4 = 9;
                    break;
                case 1000:
                    i4 = 10;
                    break;
                default:
                    i4 = 0;
                    break;
            }
            if (i4 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMessageStringAndLongCounters dofVar8 = (ProtoMessageStringAndLongCounters) n.b;
                dofVar8.e = i4 - 1;
                dofVar8.a |= 8;
            }
            j2.g((ProtoMessageStringAndLongCounters) n.h());
        }
        return j2.f();
    }
}
