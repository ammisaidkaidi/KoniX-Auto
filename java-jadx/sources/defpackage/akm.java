package defpackage;

import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
final class akm extends ady {
    public akm(aee aeeVar) {
        super(aeeVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b4  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x01a6 -> B:72:0x01aa). Please report as a decompilation issue!!! */
    @Override // defpackage.ady
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* bridge */ /* synthetic */ void b(afn afnVar, Object obj) {
        int i;
        int i2;
        Throwable th;
        ObjectOutputStream objectOutputStream;
        byte[] byteArray;
        ObjectOutputStream objectOutputStream2;
        String str;
        String str2;
        akk akkVar = (akk) obj;
        String str3 = akkVar.b;
        if (str3 == null) {
            afnVar.e(1);
        } else {
            afnVar.f(1, str3);
        }
        afnVar.d(2, fw.e(akkVar.q));
        String str4 = akkVar.c;
        if (str4 == null) {
            afnVar.e(3);
        } else {
            afnVar.f(3, str4);
        }
        String str5 = akkVar.d;
        if (str5 == null) {
            afnVar.e(4);
        } else {
            afnVar.f(4, str5);
        }
        byte[] c = agk.c(akkVar.e);
        if (c == null) {
            afnVar.e(5);
        } else {
            afnVar.c(5, c);
        }
        byte[] c2 = agk.c(akkVar.f);
        if (c2 == null) {
            afnVar.e(6);
        } else {
            afnVar.c(6, c2);
        }
        afnVar.d(7, akkVar.g);
        afnVar.d(8, akkVar.h);
        afnVar.d(9, akkVar.i);
        afnVar.d(10, akkVar.k);
        int i3 = akkVar.r;
        int i4 = i3 - 1;
        if (i3 == 0) {
            throw null;
        }
        int i5 = 0;
        switch (i4) {
            case 0:
                i = 0;
                break;
            case 1:
                i = 1;
                break;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("Could not convert ");
                switch (i3) {
                    case 1:
                        str2 = "EXPONENTIAL";
                        break;
                    default:
                        str2 = "LINEAR";
                        break;
                }
                sb.append((Object) str2);
                sb.append(" to int");
                throw new IllegalArgumentException(sb.toString());
        }
        afnVar.d(11, i);
        afnVar.d(12, akkVar.l);
        afnVar.d(13, akkVar.m);
        afnVar.d(14, akkVar.n);
        afnVar.d(15, akkVar.o);
        afnVar.d(16, akkVar.p ? 1L : 0L);
        int i6 = akkVar.s;
        int i7 = i6 - 1;
        if (i6 == 0) {
            throw null;
        }
        switch (i7) {
            case 0:
                i2 = 0;
                break;
            case 1:
                i2 = 1;
                break;
            default:
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not convert ");
                switch (i6) {
                    case 1:
                        str = "RUN_AS_NON_EXPEDITED_WORK_REQUEST";
                        break;
                    default:
                        str = "DROP_WORK_REQUEST";
                        break;
                }
                sb2.append((Object) str);
                sb2.append(" to int");
                throw new IllegalArgumentException(sb2.toString());
        }
        afnVar.d(17, i2);
        agh aghVar = akkVar.j;
        if (aghVar == null) {
            afnVar.e(18);
            afnVar.e(19);
            afnVar.e(20);
            afnVar.e(21);
            afnVar.e(22);
            afnVar.e(23);
            afnVar.e(24);
            afnVar.e(25);
            return;
        }
        int i8 = aghVar.i;
        int i9 = i8 - 1;
        if (i8 == 0) {
            throw null;
        }
        switch (i9) {
            case 0:
                break;
            case 1:
                i5 = 1;
                break;
            case 2:
                i5 = 2;
                break;
            case 3:
                i5 = 3;
                break;
            case 4:
                i5 = 4;
                break;
            default:
                if (Build.VERSION.SDK_INT < 30 || i8 != 6) {
                    throw new IllegalArgumentException("Could not convert " + ((Object) ez.n(i8)) + " to int");
                }
                i5 = 5;
                break;
        }
        afnVar.d(18, i5);
        afnVar.d(19, aghVar.b ? 1L : 0L);
        afnVar.d(20, aghVar.c ? 1L : 0L);
        afnVar.d(21, aghVar.d ? 1L : 0L);
        afnVar.d(22, aghVar.e ? 1L : 0L);
        afnVar.d(23, aghVar.f);
        afnVar.d(24, aghVar.g);
        agj agjVar = aghVar.h;
        if (agjVar.a() == 0) {
            byteArray = null;
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                try {
                    objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                } catch (IOException e) {
                    e.printStackTrace();
                }
                try {
                    objectOutputStream2.writeInt(agjVar.a());
                    for (agi agiVar : agjVar.a) {
                        objectOutputStream2.writeUTF(agiVar.a.toString());
                        objectOutputStream2.writeBoolean(agiVar.b);
                    }
                    try {
                        objectOutputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    byteArrayOutputStream.close();
                } catch (IOException e3) {
                    e = e3;
                    objectOutputStream = objectOutputStream2;
                    try {
                        e.printStackTrace();
                        if (objectOutputStream != null) {
                            try {
                                objectOutputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        byteArrayOutputStream.close();
                        byteArray = byteArrayOutputStream.toByteArray();
                        if (byteArray != null) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (objectOutputStream != null) {
                            try {
                                objectOutputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        try {
                            byteArrayOutputStream.close();
                            throw th;
                        } catch (IOException e6) {
                            e6.printStackTrace();
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    objectOutputStream = objectOutputStream2;
                    if (objectOutputStream != null) {
                    }
                    byteArrayOutputStream.close();
                    throw th;
                }
            } catch (IOException e7) {
                e = e7;
                objectOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                objectOutputStream = null;
            }
            byteArray = byteArrayOutputStream.toByteArray();
        }
        if (byteArray != null) {
            afnVar.e(25);
        } else {
            afnVar.c(25, byteArray);
        }
    }

    @Override // defpackage.aej
    public final String c() {
        return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    }
}
