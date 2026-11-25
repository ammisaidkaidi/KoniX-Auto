package com.android.car.ui.toolbar;

import com.android.car.ui.plugin.oemapis.toolbar.ProgressBarControllerOEMV1;
import defpackage.aqb;

/* compiled from: PG */
/* loaded from: classes.dex */
class ProgressBarControllerAdapterV1 implements aqb {
    private final ProgressBarControllerOEMV1 mOemProgressbar;
    private boolean mVisible = false;
    private boolean mIndeterminate = true;
    private int mMax = 100;
    private int mMin = 0;
    private int mProgress = 0;

    public ProgressBarControllerAdapterV1(ProgressBarControllerOEMV1 progressBarControllerOEMV1) {
        this.mOemProgressbar = progressBarControllerOEMV1;
    }

    public int getMax() {
        return this.mMax;
    }

    public int getMin() {
        return this.mMin;
    }

    public int getProgress() {
        return this.mProgress;
    }

    public boolean isIndeterminate() {
        return this.mIndeterminate;
    }

    public boolean isVisible() {
        return this.mVisible;
    }

    public void setIndeterminate(boolean z) {
        ProgressBarControllerOEMV1 progressBarControllerOEMV1 = this.mOemProgressbar;
        if (progressBarControllerOEMV1 != null) {
            progressBarControllerOEMV1.setIndeterminate(z);
        }
        this.mIndeterminate = z;
    }

    public void setMax(int i) {
        ProgressBarControllerOEMV1 progressBarControllerOEMV1 = this.mOemProgressbar;
        if (progressBarControllerOEMV1 != null) {
            progressBarControllerOEMV1.setMax(i);
        }
        this.mMax = i;
    }

    public void setMin(int i) {
        ProgressBarControllerOEMV1 progressBarControllerOEMV1 = this.mOemProgressbar;
        if (progressBarControllerOEMV1 != null) {
            progressBarControllerOEMV1.setMin(i);
        }
        this.mMin = i;
    }

    public void setProgress(int i) {
        ProgressBarControllerOEMV1 progressBarControllerOEMV1 = this.mOemProgressbar;
        if (progressBarControllerOEMV1 != null) {
            progressBarControllerOEMV1.setProgress(i);
        }
        this.mProgress = i;
    }

    public void setVisible(boolean z) {
        ProgressBarControllerOEMV1 progressBarControllerOEMV1 = this.mOemProgressbar;
        if (progressBarControllerOEMV1 != null) {
            progressBarControllerOEMV1.setVisible(z);
        }
        this.mVisible = z;
    }
}
