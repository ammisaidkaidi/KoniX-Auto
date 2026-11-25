package com.android.car.ui.toolbar;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.android.car.ui.plugin.oemapis.toolbar.ImeSearchInterfaceOEMV1;
import com.android.car.ui.plugin.oemapis.toolbar.ToolbarControllerOEMV1;
import com.android.car.ui.toolbar.ToolbarControllerAdapterV1;
import defpackage.apn;
import defpackage.apu;
import defpackage.apz;
import defpackage.aqa;
import defpackage.aqb;
import defpackage.aqd;
import defpackage.aqe;
import defpackage.aqf;
import defpackage.aqg;
import defpackage.aqs;
import defpackage.aqt;
import defpackage.aqu;
import defpackage.aqw;
import defpackage.aqy;
import defpackage.aqz;
import defpackage.ara;
import defpackage.arb;
import defpackage.arc;
import defpackage.ard;
import defpackage.are;
import defpackage.aro;
import defpackage.xr;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.function.Consumer;
import j$.util.function.Function;
import j$.util.function.Predicate;
import j$.util.function.Supplier;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ToolbarControllerAdapterV1 implements are {
    private static final String TAG = ToolbarControllerAdapterV1.class.getName();
    private final Context mContext;
    private final ToolbarControllerOEMV1 mOemToolbar;
    private final ProgressBarControllerAdapterV1 mProgressBar;
    private String mSearchHint;
    private final aqs mSearchWidescreenController;
    private final boolean mSupportsImeSearch;
    private ToolbarAdapterState mAdapterState = new ToolbarAdapterState();
    private final Set mOnTabSelectedListeners = new HashSet();
    private final Set mDeprecatedBackListeners = new HashSet();
    private final Set mBackListeners = new HashSet();
    private final Set mDeprecatedSearchListeners = new HashSet();
    private final Set mDeprecatedSearchCompletedListeners = new HashSet();
    private final Set mSearchListeners = new HashSet();
    private final Set mSearchCompletedListeners = new HashSet();
    private List mClientMenuItems = Collections.emptyList();
    private final List mDeprecatedTabs = new ArrayList();
    private boolean mBackgroundShown = true;
    private final aqe mSearchConfigBuilder = aqf.a();

    /* compiled from: PG */
    /* renamed from: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$car$ui$toolbar$SearchMode;
        static final /* synthetic */ int[] $SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode;

        static {
            int[] iArr = new int[aqg.values().length];
            $SwitchMap$com$android$car$ui$toolbar$SearchMode = iArr;
            try {
                iArr[aqg.SEARCH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$car$ui$toolbar$SearchMode[aqg.EDIT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[aqy.values().length];
            $SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode = iArr2;
            try {
                iArr2[aqy.BACK.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode[aqy.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode[aqy.CLOSE.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode[aqy.DISABLED.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public ToolbarControllerAdapterV1(Context context, ToolbarControllerOEMV1 toolbarControllerOEMV1) {
        this.mOemToolbar = toolbarControllerOEMV1;
        this.mProgressBar = new ProgressBarControllerAdapterV1(toolbarControllerOEMV1.getProgressBar());
        this.mContext = context;
        final Activity d = aro.d(context);
        final aqs aqsVar = new aqs(context);
        this.mSearchWidescreenController = aqsVar;
        ImeSearchInterfaceOEMV1 imeSearchInterface = toolbarControllerOEMV1.getImeSearchInterface();
        this.mSupportsImeSearch = imeSearchInterface != null;
        if (imeSearchInterface != null) {
            imeSearchInterface.setOnPrivateImeCommandListener(aqsVar.c());
            aqsVar.getClass();
            imeSearchInterface.setSearchTextViewConsumer(new Consumer() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda3
                @Override // j$.util.function.Consumer
                public final void accept(Object obj) {
                    aqs.this.e((TextView) obj);
                }

                @Override // j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer.CC.$default$andThen(this, consumer);
                }
            });
        }
        toolbarControllerOEMV1.setBackListener(new Runnable() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ToolbarControllerAdapterV1.this.m19x9901a3c6(d);
            }
        });
        toolbarControllerOEMV1.setSearchListener(new Consumer() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda4
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                ToolbarControllerAdapterV1.this.m20xc255f907((String) obj);
            }

            @Override // j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
        toolbarControllerOEMV1.setSearchCompletedListener(new Runnable() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ToolbarControllerAdapterV1.this.m21xebaa4e48();
            }
        });
    }

    private Drawable getDrawable(int i) {
        if (i == 0) {
            return null;
        }
        return xr.a(this.mContext, i);
    }

    private void update(ToolbarAdapterState toolbarAdapterState) {
        ToolbarAdapterState toolbarAdapterState2 = this.mAdapterState;
        this.mAdapterState = toolbarAdapterState;
        if (!TextUtils.equals(toolbarAdapterState.getShownTitle(), toolbarAdapterState2.getShownTitle())) {
            this.mOemToolbar.setTitle(toolbarAdapterState.getTitle());
        }
        if (!TextUtils.equals(toolbarAdapterState.getShownSubtitle(), toolbarAdapterState2.getShownSubtitle())) {
            this.mOemToolbar.setSubtitle(toolbarAdapterState.getSubtitle());
        }
        if (toolbarAdapterState.getShownLogo() != toolbarAdapterState2.getShownLogo()) {
            this.mOemToolbar.setLogo(toolbarAdapterState.getShownLogo());
        } else if (toolbarAdapterState.getShownLogo() != null && toolbarAdapterState.getLogoDirty()) {
            this.mOemToolbar.setLogo(toolbarAdapterState.getShownLogo());
        }
        boolean z = false;
        if (toolbarAdapterState.getSearchMode() != toolbarAdapterState2.getSearchMode()) {
            aqg aqgVar = aqg.DISABLED;
            aqy aqyVar = aqy.BACK;
            switch (toolbarAdapterState.getSearchMode().ordinal()) {
                case 1:
                    this.mOemToolbar.setSearchMode(1);
                    break;
                case 2:
                    this.mOemToolbar.setSearchMode(2);
                    break;
                default:
                    this.mOemToolbar.setSearchMode(0);
                    break;
            }
        }
        if (toolbarAdapterState2.getNavButtonMode() != toolbarAdapterState.getNavButtonMode()) {
            if (toolbarAdapterState.getNavButtonMode() == aqa.DISABLED) {
                this.mOemToolbar.setNavButtonMode(0);
            } else if (toolbarAdapterState.getNavButtonMode() == aqa.CLOSE) {
                this.mOemToolbar.setNavButtonMode(2);
            } else if (toolbarAdapterState.getNavButtonMode() == aqa.DOWN) {
                this.mOemToolbar.setNavButtonMode(3);
            } else {
                this.mOemToolbar.setNavButtonMode(1);
            }
        }
        boolean z2 = toolbarAdapterState.hasTabs() && !toolbarAdapterState2.hasTabs();
        if (!toolbarAdapterState.hasTabs() && toolbarAdapterState2.hasTabs()) {
            z = true;
        }
        if (z2) {
            this.mOemToolbar.setTabs((List) Collection.EL.stream(toolbarAdapterState.getTabs()).map(new Function() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda8
                @Override // j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // j$.util.function.Function
                public final Object apply(Object obj) {
                    return ((TabAdapterV1) obj).getPluginTab();
                }

                @Override // j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            }).collect(Collectors.toList()), toolbarAdapterState.getSelectedTab());
        } else if (z) {
            this.mOemToolbar.setTabs(Collections.emptyList(), -1);
        } else if (toolbarAdapterState.hasTabs() && toolbarAdapterState.getTabsDirty()) {
            this.mOemToolbar.setTabs((List) Collection.EL.stream(toolbarAdapterState.getTabs()).map(new Function() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda8
                @Override // j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // j$.util.function.Function
                public final Object apply(Object obj) {
                    return ((TabAdapterV1) obj).getPluginTab();
                }

                @Override // j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            }).collect(Collectors.toList()), toolbarAdapterState.getSelectedTab());
        } else if (toolbarAdapterState.hasTabs() && toolbarAdapterState.getSelectedTab() != toolbarAdapterState2.getSelectedTab()) {
            this.mOemToolbar.selectTab(toolbarAdapterState.getSelectedTab(), true);
        }
        if (Objects.equals(toolbarAdapterState.getShownMenuItems(), toolbarAdapterState2.getShownMenuItems())) {
            return;
        }
        this.mOemToolbar.setMenuItems(toolbarAdapterState.getShownMenuItems());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateModernTabsFromDeprecatedOnes() {
        ArrayList arrayList = new ArrayList();
        for (apn apnVar : this.mDeprecatedTabs) {
            aqt aqtVar = new aqt();
            aqtVar.a = apnVar.c;
            aqtVar.b = apnVar.d;
            aqtVar.c = apnVar.b;
            arrayList.add(new aqu(aqtVar));
        }
        update(this.mAdapterState.copy().setTabs(aro.j(arrayList, ToolbarControllerAdapterV1$$ExternalSyntheticLambda9.INSTANCE)).build());
    }

    public void addTab(final aqw aqwVar) {
        this.mDeprecatedTabs.add(new apn(this.mContext, aqwVar, new Runnable() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ToolbarControllerAdapterV1.this.updateModernTabsFromDeprecatedOnes();
            }
        }, new Consumer() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda5
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                ToolbarControllerAdapterV1.this.m18x8cd2e4f7(aqwVar, (aqu) obj);
            }

            @Override // j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        }));
        updateModernTabsFromDeprecatedOnes();
    }

    public boolean canShowSearchResultItems() {
        return getSearchCapabilities().b;
    }

    public boolean canShowSearchResultsView() {
        return getSearchCapabilities().a;
    }

    public void clearAllTabs() {
        setTabs(Collections.emptyList());
    }

    public apu findMenuItemById(int i) {
        for (apu apuVar : getMenuItems()) {
            if (apuVar.f == i) {
                return apuVar;
            }
        }
        return null;
    }

    public boolean getBackgroundShown() {
        return this.mBackgroundShown;
    }

    public List getMenuItems() {
        return this.mClientMenuItems;
    }

    public aqa getNavButtonMode() {
        return this.mAdapterState.getNavButtonMode();
    }

    public aqb getProgressBar() {
        return this.mProgressBar;
    }

    public aqd getSearchCapabilities() {
        return !this.mSupportsImeSearch ? aqd.a().a() : this.mSearchWidescreenController.b();
    }

    public CharSequence getSearchHint() {
        return this.mSearchHint;
    }

    public aqg getSearchMode() {
        return this.mAdapterState.getSearchMode();
    }

    public int getSelectedTab() {
        int selectedTab = this.mAdapterState.getSelectedTab();
        if (!this.mAdapterState.getTabs().isEmpty() || selectedTab == -1) {
            return selectedTab;
        }
        throw new IllegalStateException("mSelectedTab should've been -1");
    }

    public boolean getShowMenuItemsWhileSearching() {
        return this.mAdapterState.getShowMenuItemsWhileSearching();
    }

    public boolean getShowTabsInSubpage() {
        return this.mAdapterState.getShowTabsInSubpage();
    }

    public ard getState() {
        return this.mAdapterState.getState();
    }

    public CharSequence getSubtitle() {
        return this.mAdapterState.getSubtitle();
    }

    public aqw getTab(int i) {
        return ((apn) this.mDeprecatedTabs.get(i)).a;
    }

    public int getTabCount() {
        return this.mDeprecatedTabs.size();
    }

    public int getTabPosition(aqw aqwVar) {
        for (int i = 0; i < this.mDeprecatedTabs.size(); i++) {
            if (((apn) this.mDeprecatedTabs.get(i)).a == aqwVar) {
                return i;
            }
        }
        return -1;
    }

    public List getTabs() {
        return Collections.unmodifiableList((List) Collection.EL.stream(this.mAdapterState.getTabs()).map(new Function() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda7
            @Override // j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return ((TabAdapterV1) obj).getClientTab();
            }

            @Override // j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        }).collect(Collectors.toList()));
    }

    public CharSequence getTitle() {
        return this.mAdapterState.getTitle();
    }

    @Override // defpackage.are
    public boolean isStateSet() {
        return this.mAdapterState.isStateSet();
    }

    /* renamed from: lambda$addTab$3$com-android-car-ui-toolbar-ToolbarControllerAdapterV1, reason: not valid java name */
    public /* synthetic */ void m18x8cd2e4f7(aqw aqwVar, aqu aquVar) {
        Iterator it = this.mOnTabSelectedListeners.iterator();
        while (it.hasNext()) {
            ((arc) it.next()).a();
        }
    }

    /* renamed from: lambda$new$0$com-android-car-ui-toolbar-ToolbarControllerAdapterV1, reason: not valid java name */
    public /* synthetic */ void m19x9901a3c6(Activity activity) {
        Iterator it = this.mDeprecatedBackListeners.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= ((aqz) it.next()).a();
        }
        Iterator it2 = this.mBackListeners.iterator();
        while (it2.hasNext()) {
            z |= ((Boolean) ((Supplier) it2.next()).get()).booleanValue();
        }
        if (z || activity == null) {
            return;
        }
        activity.onBackPressed();
    }

    /* renamed from: lambda$new$1$com-android-car-ui-toolbar-ToolbarControllerAdapterV1, reason: not valid java name */
    public /* synthetic */ void m20xc255f907(String str) {
        Iterator it = this.mDeprecatedSearchListeners.iterator();
        while (it.hasNext()) {
            ((arb) it.next()).a();
        }
        Iterator it2 = this.mSearchListeners.iterator();
        while (it2.hasNext()) {
            ((Consumer) it2.next()).accept(str);
        }
    }

    /* renamed from: lambda$new$2$com-android-car-ui-toolbar-ToolbarControllerAdapterV1, reason: not valid java name */
    public /* synthetic */ void m21xebaa4e48() {
        Iterator it = this.mDeprecatedSearchCompletedListeners.iterator();
        while (it.hasNext()) {
            ((ara) it.next()).a();
        }
        Iterator it2 = this.mSearchCompletedListeners.iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
    }

    /* renamed from: lambda$setMenuItems$4$com-android-car-ui-toolbar-ToolbarControllerAdapterV1, reason: not valid java name */
    public /* synthetic */ MenuItemAdapterV1 m22x12ce43a3(apu apuVar) {
        return new MenuItemAdapterV1(this, apuVar);
    }

    public void registerBackListener(Supplier supplier) {
        this.mBackListeners.add(supplier);
    }

    public void registerOnBackListener(aqz aqzVar) {
        this.mDeprecatedBackListeners.add(aqzVar);
    }

    public void registerOnSearchCompletedListener(ara araVar) {
        this.mDeprecatedSearchCompletedListeners.add(araVar);
    }

    public void registerOnSearchListener(arb arbVar) {
        this.mDeprecatedSearchListeners.add(arbVar);
    }

    public void registerOnTabSelectedListener(arc arcVar) {
        this.mOnTabSelectedListeners.add(arcVar);
    }

    public void registerSearchCompletedListener(Runnable runnable) {
        this.mSearchCompletedListeners.add(runnable);
    }

    public void registerSearchListener(Consumer consumer) {
        this.mSearchListeners.add(consumer);
    }

    public apu requireMenuItemById(int i) {
        apu findMenuItemById = findMenuItemById(i);
        if (findMenuItemById != null) {
            return findMenuItemById;
        }
        throw new IllegalArgumentException("ID does not reference a MenuItem on this Toolbar");
    }

    public void selectTab(int i) {
        if (i >= 0 && i < this.mAdapterState.getTabs().size()) {
            update(this.mAdapterState.copy().setSelectedTab(i).build());
            return;
        }
        StringBuilder sb = new StringBuilder(36);
        sb.append("Tab position is invalid: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public void setBackgroundShown(boolean z) {
        this.mBackgroundShown = z;
        this.mOemToolbar.setBackgroundShown(z);
    }

    public void setLogo(int i) {
        setLogo(getDrawable(i));
    }

    public List setMenuItems(int i) {
        List a = apz.a(this.mContext, i);
        setMenuItems(a);
        return a;
    }

    @Override // defpackage.are
    public void setNavButtonMode(aqa aqaVar) {
        update(this.mAdapterState.copy().setNavButtonMode(aqaVar).build());
    }

    public void setSearchConfig(aqf aqfVar) {
        this.mSearchWidescreenController.d(aqfVar);
    }

    public void setSearchHint(int i) {
        setSearchHint(this.mContext.getString(i));
    }

    public void setSearchIcon(int i) {
        setSearchIcon(getDrawable(i));
    }

    public void setSearchMode(aqg aqgVar) {
        update(this.mAdapterState.copy().setSearchMode(aqgVar).build());
    }

    public void setSearchQuery(String str) {
        this.mOemToolbar.setSearchQuery(str);
    }

    public void setSearchResultItems(List list) {
        aqe aqeVar = this.mSearchConfigBuilder;
        if (list == null || list.size() == 0) {
            aqeVar.c = null;
        } else {
            aqeVar.c = Collections.unmodifiableList(new ArrayList(list));
        }
        setSearchConfig(this.mSearchConfigBuilder.a());
    }

    public void setSearchResultsInputViewIcon(Drawable drawable) {
        aqe aqeVar = this.mSearchConfigBuilder;
        aqeVar.b = drawable;
        setSearchConfig(aqeVar.a());
    }

    public void setSearchResultsView(View view) {
        aqe aqeVar = this.mSearchConfigBuilder;
        aqeVar.a = view;
        setSearchConfig(aqeVar.a());
    }

    public void setShowMenuItemsWhileSearching(boolean z) {
        update(this.mAdapterState.copy().setShowMenuItemsWhileSearching(z).build());
    }

    public void setShowTabsInSubpage(boolean z) {
        update(this.mAdapterState.copy().setShowTabsInSubpage(z).build());
    }

    @Override // defpackage.are
    public void setState(ard ardVar) {
        update(this.mAdapterState.copy().setState(ardVar).build());
    }

    public void setSubtitle(int i) {
        setSubtitle(i == 0 ? null : this.mContext.getString(i));
    }

    @Override // defpackage.are
    public void setTabs(List list) {
        setTabs(list, 0);
    }

    public void setTitle(int i) {
        setTitle(i == 0 ? null : this.mContext.getString(i));
    }

    public boolean unregisterBackListener(Supplier supplier) {
        return this.mBackListeners.remove(supplier);
    }

    public boolean unregisterOnBackListener(aqz aqzVar) {
        return this.mDeprecatedBackListeners.remove(aqzVar);
    }

    public boolean unregisterOnSearchCompletedListener(ara araVar) {
        return this.mDeprecatedSearchCompletedListeners.remove(araVar);
    }

    public boolean unregisterOnSearchListener(arb arbVar) {
        return this.mDeprecatedSearchListeners.remove(arbVar);
    }

    public boolean unregisterOnTabSelectedListener(arc arcVar) {
        return this.mOnTabSelectedListeners.remove(arcVar);
    }

    public boolean unregisterSearchCompletedListener(Runnable runnable) {
        return this.mSearchCompletedListeners.remove(runnable);
    }

    public boolean unregisterSearchListener(Consumer consumer) {
        return this.mSearchListeners.remove(consumer);
    }

    public void updateMenuItems() {
        this.mOemToolbar.setMenuItems(this.mAdapterState.getShownMenuItems());
    }

    @Override // defpackage.are
    public void setLogo(Drawable drawable) {
        update(this.mAdapterState.copy().setLogo(drawable).build());
    }

    @Override // defpackage.are
    public void setNavButtonMode(aqy aqyVar) {
        aqg aqgVar = aqg.DISABLED;
        aqy aqyVar2 = aqy.BACK;
        switch (aqyVar) {
            case BACK:
                setNavButtonMode(aqa.BACK);
                break;
            case CLOSE:
                setNavButtonMode(aqa.CLOSE);
                break;
            case DOWN:
                setNavButtonMode(aqa.DOWN);
                break;
            default:
                setNavButtonMode(aqa.DISABLED);
                break;
        }
    }

    public void setSearchHint(CharSequence charSequence) {
        String h = aro.h(charSequence);
        this.mSearchHint = h;
        this.mOemToolbar.setSearchHint(h);
    }

    public void setSearchIcon(Drawable drawable) {
        this.mOemToolbar.setSearchIcon(drawable);
    }

    @Override // defpackage.are
    public void setSubtitle(CharSequence charSequence) {
        update(this.mAdapterState.copy().setSubtitle(aro.h(charSequence)).build());
    }

    public void setTabs(List list, int i) {
        this.mDeprecatedTabs.clear();
        if (list == null) {
            i = 0;
        } else if (list.isEmpty()) {
            i = 0;
        } else if (i < 0 || i >= list.size()) {
            StringBuilder sb = new StringBuilder(36);
            sb.append("Tab position is invalid: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        update(this.mAdapterState.copy().setTabs(aro.j(list, ToolbarControllerAdapterV1$$ExternalSyntheticLambda9.INSTANCE)).setSelectedTab(i).build());
    }

    @Override // defpackage.are
    public void setTitle(CharSequence charSequence) {
        update(this.mAdapterState.copy().setTitle(aro.h(charSequence)).build());
    }

    @Override // defpackage.are
    public void setMenuItems(List list) {
        this.mClientMenuItems = list;
        update(this.mAdapterState.copy().setMenuItems(aro.j(list, new Function() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$$ExternalSyntheticLambda6
            @Override // j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return ToolbarControllerAdapterV1.this.m22x12ce43a3((apu) obj);
            }

            @Override // j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        })).build());
    }

    /* compiled from: PG */
    class ToolbarAdapterState {
        private final Drawable mLogo;
        private final boolean mLogoDirty;
        private final List mMenuItems;
        private final aqa mNavButtonMode;
        private final aqg mSearchMode;
        private final int mSelectedTab;
        private final boolean mShowMenuItemsWhileSearching;
        private final boolean mShowTabsInSubpage;
        private final ard mState;
        private final boolean mStateSet;
        private final String mSubtitle;
        private final List mTabs;
        private final boolean mTabsDirty;
        private final String mTitle;

        /* compiled from: PG */
        public class Builder {
            private Drawable mLogo;
            private List mMenuItems;
            private aqa mNavButtonMode;
            private aqg mSearchMode;
            private int mSelectedTab;
            private boolean mShowMenuItemsWhileSearching;
            private boolean mShowTabsInSubpage;
            private ard mState;
            private final ToolbarAdapterState mStateClonedFrom;
            private boolean mStateSet;
            private String mSubtitle;
            private List mTabs;
            private String mTitle;
            private boolean mWasChanged = false;
            private boolean mTabsDirty = false;
            private boolean mLogoDirty = false;

            public Builder(ToolbarAdapterState toolbarAdapterState) {
                this.mStateClonedFrom = toolbarAdapterState;
                this.mState = toolbarAdapterState.mState;
                this.mStateSet = toolbarAdapterState.mStateSet;
                this.mShowTabsInSubpage = toolbarAdapterState.mShowTabsInSubpage;
                this.mTabs = toolbarAdapterState.mTabs;
                this.mMenuItems = toolbarAdapterState.mMenuItems;
                this.mShowMenuItemsWhileSearching = toolbarAdapterState.mShowMenuItemsWhileSearching;
                this.mSelectedTab = toolbarAdapterState.mSelectedTab;
                this.mTitle = toolbarAdapterState.mTitle;
                this.mSubtitle = toolbarAdapterState.mSubtitle;
                this.mLogo = toolbarAdapterState.mLogo;
                this.mNavButtonMode = toolbarAdapterState.mNavButtonMode;
                this.mSearchMode = toolbarAdapterState.mSearchMode;
            }

            public Builder addTab(TabAdapterV1 tabAdapterV1) {
                ArrayList arrayList = new ArrayList(this.mTabs);
                arrayList.add(tabAdapterV1);
                this.mTabs = Collections.unmodifiableList(arrayList);
                this.mWasChanged = true;
                this.mTabsDirty = true;
                return this;
            }

            public ToolbarAdapterState build() {
                return !this.mWasChanged ? this.mStateClonedFrom : new ToolbarAdapterState(this);
            }

            public Builder setLogo(Drawable drawable) {
                if (this.mLogo != drawable) {
                    this.mLogo = drawable;
                    this.mWasChanged = true;
                    this.mLogoDirty = true;
                }
                return this;
            }

            public Builder setMenuItems(List list) {
                if (list == null) {
                    list = Collections.emptyList();
                }
                if (!Objects.equals(this.mMenuItems, list)) {
                    this.mMenuItems = list;
                    this.mWasChanged = true;
                }
                return this;
            }

            public Builder setNavButtonMode(aqa aqaVar) {
                if (aqaVar != this.mNavButtonMode) {
                    this.mNavButtonMode = aqaVar;
                    this.mWasChanged = true;
                }
                return this;
            }

            public Builder setSearchMode(aqg aqgVar) {
                if (this.mStateSet) {
                    throw new IllegalStateException("Cannot use setSearchMode() with setState()");
                }
                if (this.mSearchMode != aqgVar) {
                    this.mSearchMode = aqgVar;
                    this.mWasChanged = true;
                }
                return this;
            }

            public Builder setSelectedTab(int i) {
                if (this.mSelectedTab != i) {
                    this.mSelectedTab = i;
                    this.mWasChanged = true;
                }
                return this;
            }

            public Builder setShowMenuItemsWhileSearching(boolean z) {
                if (this.mShowMenuItemsWhileSearching != z) {
                    this.mShowMenuItemsWhileSearching = z;
                    this.mWasChanged = true;
                }
                return this;
            }

            public Builder setShowTabsInSubpage(boolean z) {
                if (this.mShowTabsInSubpage != z) {
                    this.mShowTabsInSubpage = z;
                    this.mWasChanged = true;
                }
                return this;
            }

            public Builder setState(ard ardVar) {
                if (this.mSearchMode != aqg.DISABLED) {
                    throw new IllegalStateException("Cannot use setSearchMode() with setState()");
                }
                if (ardVar != this.mState) {
                    this.mState = ardVar;
                    this.mStateSet = true;
                    this.mWasChanged = true;
                }
                return this;
            }

            public Builder setSubtitle(String str) {
                if (!Objects.equals(this.mSubtitle, str)) {
                    this.mSubtitle = str;
                    this.mWasChanged = true;
                }
                return this;
            }

            public Builder setTabs(List list) {
                if (list == null) {
                    list = Collections.emptyList();
                }
                if (!Objects.equals(list, this.mTabs)) {
                    List unmodifiableList = Collections.unmodifiableList(list);
                    this.mTabs = unmodifiableList;
                    this.mSelectedTab = true != unmodifiableList.isEmpty() ? 0 : -1;
                    this.mWasChanged = true;
                    this.mTabsDirty = true;
                }
                return this;
            }

            public Builder setTitle(String str) {
                if (!Objects.equals(this.mTitle, str)) {
                    this.mTitle = str;
                    this.mWasChanged = true;
                }
                return this;
            }
        }

        public ToolbarAdapterState() {
            this.mState = ard.HOME;
            this.mStateSet = false;
            this.mShowTabsInSubpage = false;
            this.mTabs = Collections.emptyList();
            this.mMenuItems = Collections.emptyList();
            this.mSelectedTab = -1;
            this.mTitle = null;
            this.mSubtitle = null;
            this.mLogo = null;
            this.mShowMenuItemsWhileSearching = false;
            this.mTabsDirty = false;
            this.mLogoDirty = false;
            this.mNavButtonMode = aqa.DISABLED;
            this.mSearchMode = aqg.DISABLED;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public aqg getSearchMode() {
            return this.mStateSet ? this.mState == ard.SEARCH ? aqg.SEARCH : this.mState == ard.EDIT ? aqg.EDIT : aqg.DISABLED : this.mSearchMode;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List getShownMenuItems() {
            aqg searchMode = getSearchMode();
            Stream stream = Collection.EL.stream(this.mMenuItems);
            if (searchMode == aqg.EDIT && !this.mShowMenuItemsWhileSearching) {
                stream = Stream.CC.empty();
            } else if (searchMode == aqg.SEARCH) {
                stream = this.mShowMenuItemsWhileSearching ? Collection.EL.stream(this.mMenuItems).filter(new Predicate() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda2
                    @Override // j$.util.function.Predicate
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        return Predicate.CC.$default$and(this, predicate);
                    }

                    @Override // j$.util.function.Predicate
                    public /* synthetic */ Predicate negate() {
                        return Predicate.CC.$default$negate(this);
                    }

                    @Override // j$.util.function.Predicate
                    public /* synthetic */ Predicate or(Predicate predicate) {
                        return Predicate.CC.$default$or(this, predicate);
                    }

                    @Override // j$.util.function.Predicate
                    public final boolean test(Object obj) {
                        return ToolbarControllerAdapterV1.ToolbarAdapterState.lambda$getShownMenuItems$0((MenuItemAdapterV1) obj);
                    }
                }) : Stream.CC.empty();
            }
            return Collections.unmodifiableList((List) stream.filter(new Predicate() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda1
                @Override // j$.util.function.Predicate
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Predicate.CC.$default$and(this, predicate);
                }

                @Override // j$.util.function.Predicate
                public /* synthetic */ Predicate negate() {
                    return Predicate.CC.$default$negate(this);
                }

                @Override // j$.util.function.Predicate
                public /* synthetic */ Predicate or(Predicate predicate) {
                    return Predicate.CC.$default$or(this, predicate);
                }

                @Override // j$.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((MenuItemAdapterV1) obj).isVisible();
                }
            }).map(new Function() { // from class: com.android.car.ui.toolbar.ToolbarControllerAdapterV1$ToolbarAdapterState$$ExternalSyntheticLambda0
                @Override // j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // j$.util.function.Function
                public final Object apply(Object obj) {
                    return ((MenuItemAdapterV1) obj).getPluginMenuItem();
                }

                @Override // j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            }).collect(Collectors.toList()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasTabs() {
            return !this.mStateSet ? !getTabs().isEmpty() : (this.mState == ard.HOME || (this.mState == ard.SUBPAGE && getShowTabsInSubpage())) && !getTabs().isEmpty();
        }

        static /* synthetic */ boolean lambda$getShownMenuItems$0(MenuItemAdapterV1 menuItemAdapterV1) {
            return !menuItemAdapterV1.getClientMenuItem().c;
        }

        public Builder copy() {
            return new Builder(this);
        }

        public Drawable getLogo() {
            return this.mLogo;
        }

        public boolean getLogoDirty() {
            return this.mLogoDirty;
        }

        public aqa getNavButtonMode() {
            return (this.mStateSet && this.mNavButtonMode == aqa.DISABLED && this.mState != ard.HOME) ? aqa.BACK : this.mNavButtonMode;
        }

        public int getSelectedTab() {
            return this.mSelectedTab;
        }

        public boolean getShowMenuItemsWhileSearching() {
            return this.mShowMenuItemsWhileSearching;
        }

        public boolean getShowTabsInSubpage() {
            return this.mShowTabsInSubpage;
        }

        public Drawable getShownLogo() {
            if (!this.mStateSet || this.mState == ard.HOME || this.mState == ard.SUBPAGE) {
                return this.mLogo;
            }
            return null;
        }

        public String getShownSubtitle() {
            String str;
            return ((!this.mStateSet || this.mState == ard.HOME || this.mState == ard.SUBPAGE) && (str = this.mSubtitle) != null) ? str : "";
        }

        public String getShownTitle() {
            String str;
            return ((!this.mStateSet || this.mState == ard.HOME || this.mState == ard.SUBPAGE) && (str = this.mTitle) != null) ? str : "";
        }

        public ard getState() {
            return this.mState;
        }

        public String getSubtitle() {
            String str = this.mSubtitle;
            return str == null ? "" : str;
        }

        public List getTabs() {
            return this.mTabs;
        }

        public boolean getTabsDirty() {
            return this.mTabsDirty;
        }

        public String getTitle() {
            String str = this.mTitle;
            return str == null ? "" : str;
        }

        public boolean isStateSet() {
            return this.mStateSet;
        }

        private ToolbarAdapterState(Builder builder) {
            this.mState = builder.mState;
            this.mStateSet = builder.mStateSet;
            this.mShowTabsInSubpage = builder.mShowTabsInSubpage;
            this.mTabs = builder.mTabs;
            this.mMenuItems = builder.mMenuItems;
            this.mSelectedTab = builder.mSelectedTab;
            this.mTitle = builder.mTitle;
            this.mSubtitle = builder.mSubtitle;
            this.mLogo = builder.mLogo;
            this.mShowMenuItemsWhileSearching = builder.mShowMenuItemsWhileSearching;
            this.mTabsDirty = builder.mTabsDirty;
            this.mLogoDirty = builder.mLogoDirty;
            this.mNavButtonMode = builder.mNavButtonMode;
            this.mSearchMode = builder.mSearchMode;
        }
    }
}
