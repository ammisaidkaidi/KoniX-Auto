package com.android.car.ui.toolbar;

import com.android.car.ui.plugin.oemapis.toolbar.MenuItemOEMV1;
import defpackage.apr;
import defpackage.aps;
import defpackage.apu;
import defpackage.aro;

/* compiled from: PG */
/* loaded from: classes.dex */
public class MenuItemAdapterV1 {
    private final aps mClientListener;
    private final apu mClientMenuItem;
    private MenuItemOEMV1 mPluginMenuItem = MenuItemOEMV1.builder().build();
    private final ToolbarControllerAdapterV1 mToolbar;

    /* compiled from: PG */
    /* renamed from: com.android.car.ui.toolbar.MenuItemAdapterV1$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$car$ui$toolbar$MenuItem$DisplayBehavior;

        static {
            int[] iArr = new int[apr.values().length];
            $SwitchMap$com$android$car$ui$toolbar$MenuItem$DisplayBehavior = iArr;
            try {
                iArr[apr.ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$car$ui$toolbar$MenuItem$DisplayBehavior[apr.NEVER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public MenuItemAdapterV1(ToolbarControllerAdapterV1 toolbarControllerAdapterV1, apu apuVar) {
        aps apsVar = new aps() { // from class: com.android.car.ui.toolbar.MenuItemAdapterV1$$ExternalSyntheticLambda0
            @Override // defpackage.aps
            public final void onMenuItemChanged(apu apuVar2) {
                MenuItemAdapterV1.this.m15lambda$new$0$comandroidcaruitoolbarMenuItemAdapterV1(apuVar2);
            }
        };
        this.mClientListener = apsVar;
        this.mToolbar = toolbarControllerAdapterV1;
        this.mClientMenuItem = apuVar;
        apuVar.c(apsVar);
        updateMenuItem();
    }

    private static int convertDisplayBehavior(apr aprVar) {
        apr aprVar2 = apr.ALWAYS;
        switch (aprVar) {
            case ALWAYS:
                return 0;
            case NEVER:
                return 2;
            default:
                throw new IllegalArgumentException("Unknown display behavior!");
        }
    }

    private void updateMenuItem() {
        MenuItemOEMV1.Builder displayBehavior = this.mPluginMenuItem.copy().setKey(this.mClientMenuItem.hashCode()).setTitle(aro.h(this.mClientMenuItem.h)).setIcon(this.mClientMenuItem.i).setEnabled(this.mClientMenuItem.l).setPrimary(false).setRestricted(this.mClientMenuItem.e()).setShowIconAndTitle(this.mClientMenuItem.d).setDisplayBehavior(convertDisplayBehavior(this.mClientMenuItem.k));
        if (this.mClientMenuItem.a) {
            displayBehavior.setCheckable(true).setChecked(this.mClientMenuItem.m);
        }
        if (this.mClientMenuItem.b) {
            displayBehavior.setActivatable(true).setActivated(this.mClientMenuItem.o);
        }
        apu apuVar = this.mClientMenuItem;
        if (apuVar.j != null || apuVar.b || apuVar.a || apuVar.e()) {
            final apu apuVar2 = this.mClientMenuItem;
            apuVar2.getClass();
            displayBehavior.setOnClickListener(new Runnable() { // from class: com.android.car.ui.toolbar.MenuItemAdapterV1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    apu.this.b();
                }
            });
        } else {
            displayBehavior.setOnClickListener((Runnable) null);
        }
        this.mPluginMenuItem = displayBehavior.build();
    }

    private void updateMenuItems() {
        this.mToolbar.updateMenuItems();
    }

    public apu getClientMenuItem() {
        return this.mClientMenuItem;
    }

    public MenuItemOEMV1 getPluginMenuItem() {
        return this.mPluginMenuItem;
    }

    public boolean isVisible() {
        return this.mClientMenuItem.n;
    }

    /* renamed from: lambda$new$0$com-android-car-ui-toolbar-MenuItemAdapterV1, reason: not valid java name */
    public /* synthetic */ void m15lambda$new$0$comandroidcaruitoolbarMenuItemAdapterV1(apu apuVar) {
        updateMenuItem();
        updateMenuItems();
    }
}
