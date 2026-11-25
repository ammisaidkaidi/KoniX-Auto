package com.android.car.ui.appstyledview;

import android.view.View;
import android.view.WindowManager;
import com.android.car.ui.plugin.oemapis.appstyledview.AppStyledViewControllerOEMV1;
import defpackage.PluralRuleListenerInterface;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AppStyledViewControllerAdapterV1 implements PluralRuleListenerInterface {
    private final AppStyledViewControllerOEMV1 mOemController;

    public AppStyledViewControllerAdapterV1(AppStyledViewControllerOEMV1 appStyledViewControllerOEMV1) {
        this.mOemController = appStyledViewControllerOEMV1;
        appStyledViewControllerOEMV1.setNavIcon(2);
    }

    public View getAppStyledView(View view) {
        this.mOemController.setContent(view);
        return this.mOemController.getView();
    }

    public WindowManager.LayoutParams getDialogWindowLayoutParam(WindowManager.LayoutParams layoutParams) {
        return this.mOemController.getDialogWindowLayoutParam(layoutParams);
    }

    public void setOnNavIconClickListener(Runnable runnable) {
        this.mOemController.setOnBackClickListener(runnable);
    }

    public void setNavIcon(int i) {
        switch (i) {
            case 0:
                this.mOemController.setNavIcon(1);
                return;
            case 1:
                this.mOemController.setNavIcon(2);
                return;
            default:
                StringBuilder sb = new StringBuilder(35);
                sb.append("Unknown nav icon style: ");
                sb.append(i);
                throw new IllegalArgumentException(sb.toString());
        }
    }
}
