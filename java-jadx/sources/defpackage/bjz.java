package defpackage;

import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bjz extends Exception {

    @Deprecated
    public final Status a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public bjz(Status status) {
        super(r2.toString());
        int i = status.e;
        String str = status.f;
        str = str == null ? "" : str;
        StringBuilder sb = new StringBuilder(str.length() + 13);
        sb.append(i);
        sb.append(": ");
        sb.append(str);
        this.a = status;
    }
}
