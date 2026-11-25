package defpackage;

import android.net.Uri;
import android.util.Log;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class box {
    protected final String a;
    protected long b;
    protected final bkc c;

    public box(bkc bkcVar, String str) {
        this.c = bkcVar;
        this.a = str;
        synchronized (bme.a) {
        }
        this.b = 2000L;
    }

    public final boolean a(int i) {
        if (i <= 0) {
            String valueOf = String.valueOf(this.a);
            Log.w("PhenotypeFlagCommitter", valueOf.length() != 0 ? "No more attempts remaining, giving up for ".concat(valueOf) : new String("No more attempts remaining, giving up for "));
            return false;
        }
        boj b = b(this.a);
        if (b == null) {
            return false;
        }
        String str = b.a;
        if (str == null || str.isEmpty()) {
            return true;
        }
        try {
            xq.d(this.c.e(b.a), this.b, TimeUnit.MILLISECONDS);
            Uri a = cdw.a(this.a);
            Map map = cdo.a;
            synchronized (cdo.class) {
                cdo cdoVar = (cdo) cdo.a.get(a);
                if (cdoVar != null) {
                    cdoVar.c();
                }
            }
            return true;
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String str2 = this.a;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 41);
            sb.append("Committing snapshot for ");
            sb.append(str2);
            sb.append(" failed, retrying");
            Log.w("PhenotypeFlagCommitter", sb.toString(), e);
            return a(i - 1);
        }
    }

    protected final boj b(String str) {
        try {
            return (boj) xq.d(this.c.g(str, ""), this.b, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
            sb.append("Retrieving snapshot for ");
            sb.append(str);
            sb.append(" failed");
            Log.e("PhenotypeFlagCommitter", sb.toString(), e);
            return null;
        }
    }
}
