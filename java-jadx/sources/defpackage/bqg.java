package defpackage;

import android.os.Build;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqg {
    private static final cqw b = cqw.p("https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs", "https://tac.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs");
    public final String a;

    public bqg() {
        if (!"user".equals(Build.TYPE)) {
            this.a = "https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs";
            return;
        }
        boolean contains = b.contains("https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs");
        this.a = "https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs";
        if (contains) {
            return;
        }
        Log.e("HeterodyneServiceUrl", "Invalid URL provided for Heterodyne: https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs; falling back to known valid URL: ".concat("https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs"));
    }
}
