package android.car.projection;

import android.app.ActivityOptions;
import android.content.ComponentName;
import android.os.Bundle;

/* loaded from: classes2.dex */
public class ProjectionOptions {
    public static final int UI_MODE_BLENDED = 1;
    public static final int UI_MODE_FULL_SCREEN = 0;
    private final Bundle mBundle;

    public ProjectionOptions(Bundle bundle) {
        this.mBundle = bundle != null ? new Bundle(bundle) : new Bundle();
    }

    public int getUiMode() {
        return this.mBundle.getInt("android.car.projection.uiMode", 0);
    }

    public int getSystemUiFlags() {
        return this.mBundle.getInt("android.car.projection.systemUiFlags", 0);
    }

    public ActivityOptions getActivityOptions() {
        return null;
    }

    public ComponentName getConsentActivity() {
        return (ComponentName) this.mBundle.getParcelable("android.car.projection.consentActivity");
    }

    public Bundle toBundle() {
        return new Bundle(this.mBundle);
    }

    public String toString() {
        return "ProjectionOptions{uiMode=" + getUiMode() + ", flags=" + getSystemUiFlags() + "}";
    }
}
