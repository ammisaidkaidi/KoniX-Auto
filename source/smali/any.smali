.class public abstract Lany;
.super Lada;
.source "PG"

# interfaces
.implements Lanc;


# static fields
.field private static final f:Ljava/util/List;


# instance fields
.field private ad:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/DropDownPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiDropDownPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/ListPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiListPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/MultiSelectListPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/EditTextPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiEditTextPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/SwitchPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiSwitchPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/Preference;

    const-class v3, Lcom/android/car/ui/preference/CarUiPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lany;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lada;-><init>()V

    return-void
.end method

.method public static ao(Landroidx/preference/Preference;)Landroidx/preference/Preference;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lany;->f:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 3
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    .line 4
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Lacq;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lacq;)V

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Lacp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lacp;)V

    .line 11
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 14
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 16
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 17
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 18
    invoke-virtual {p0}, Landroidx/preference/Preference;->isIconSpaceReserved()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 19
    invoke-virtual {p0}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 20
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Lact;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPreferenceDataStore(Lact;)V

    .line 21
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSingleLineTitle()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 22
    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 23
    invoke-virtual {p0}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 24
    invoke-virtual {p0}, Landroidx/preference/Preference;->isCopyingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setCopyingEnabled(Z)V

    .line 25
    instance-of v1, v0, Laoa;

    if-nez v1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroidx/preference/Preference;->getShouldDisableView()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Lacs;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Lacs;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummaryProvider(Lacs;)V

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->peekExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->peekExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 32
    :cond_3
    instance-of v1, p0, Landroidx/preference/DialogPreference;

    if-eqz v1, :cond_4

    .line 33
    move-object v1, p0

    check-cast v1, Landroidx/preference/DialogPreference;

    .line 34
    move-object v2, v0

    check-cast v2, Landroidx/preference/DialogPreference;

    .line 35
    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/DialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 39
    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_4
    instance-of v1, p0, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 42
    check-cast p0, Landroidx/preference/ListPreference;

    .line 43
    move-object v1, v0

    check-cast v1, Landroidx/preference/ListPreference;

    .line 44
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_5
    instance-of v1, p0, Landroidx/preference/EditTextPreference;

    if-eqz v1, :cond_6

    .line 48
    check-cast p0, Landroidx/preference/EditTextPreference;

    .line 49
    move-object v1, v0

    check-cast v1, Landroidx/preference/EditTextPreference;

    .line 50
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_6
    instance-of v1, p0, Landroidx/preference/MultiSelectListPreference;

    if-eqz v1, :cond_7

    .line 52
    check-cast p0, Landroidx/preference/MultiSelectListPreference;

    .line 53
    move-object v1, v0

    check-cast v1, Landroidx/preference/MultiSelectListPreference;

    .line 54
    invoke-virtual {p0}, Landroidx/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Landroidx/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    goto :goto_1

    .line 57
    :cond_7
    instance-of v1, p0, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_8

    .line 58
    move-object v1, p0

    check-cast v1, Landroidx/preference/TwoStatePreference;

    .line 59
    move-object v2, v0

    check-cast v2, Landroidx/preference/TwoStatePreference;

    .line 60
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 62
    instance-of v1, p0, Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_8

    .line 63
    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 64
    move-object v1, v0

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 65
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->getSwitchTextOn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->getSwitchTextOff()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_8
    :goto_1
    return-object v0

    .line 68
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    .line 67
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 29
    :cond_9
    if-eq v0, v2, :cond_b

    const-class v0, Landroidx/preference/Preference;

    if-ne v3, v0, :cond_a

    goto :goto_2

    .line 68
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Subclass of "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was used, preventing us from substituting it with "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "CarUiPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 29
    :cond_b
    :goto_2
    return-object p0

    .line 67
    :cond_c
    return-object p0
.end method


# virtual methods
.method public final M(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lada;->b()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_0
    iget-boolean p1, p0, Lada;->c:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lada;->l()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lada;->d:Z

    .line 5
    invoke-virtual {p0}, Lany;->aq()Lare;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    sget-object p2, Laqy;->a:Laqy;

    invoke-interface {p1, p2}, Lare;->setNavButtonMode(Laqy;)V

    .line 7
    invoke-virtual {p0}, Lada;->b()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lare;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 9
    invoke-interface {p1, p2}, Lare;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/car/ui/baselayout/Insets;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lbr;->B()Landroid/view/View;

    move-result-object v0

    .line 2
    const v1, 0x7f090087

    invoke-static {v0, v1}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/FocusArea;

    .line 3
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/android/car/ui/FocusArea;->d(IIII)V

    .line 4
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/android/car/ui/FocusArea;->c(IIII)V

    iget-object v1, p0, Lany;->ad:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    .line 5
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result v3

    invoke-interface {v1, v4, v2, v4, v3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setPadding(IIII)V

    .line 6
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getRight()I

    move-result p1

    invoke-virtual {v0, v1, v4, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final aj(Landroidx/preference/Preference;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    instance-of v0, v0, Lacx;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    .line 2
    check-cast v0, Lacx;

    .line 3
    invoke-interface {v0}, Lacx;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lbr;->A()Lcr;

    move-result-object v0

    .line 5
    const-string v1, "com.android.car.ui.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1}, Lcr;->d(Ljava/lang/String;)Lbr;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    const-string v2, "key"

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lans;

    .line 8
    invoke-direct {v0}, Lans;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    .line 9
    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 10
    invoke-virtual {v4, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v4}, Lbr;->Q(Landroid/os/Bundle;)V

    goto :goto_1

    .line 12
    :cond_3
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lanu;

    .line 14
    invoke-direct {v0}, Lanu;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    .line 15
    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 16
    invoke-virtual {v4, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v4}, Lbr;->Q(Landroid/os/Bundle;)V

    goto :goto_1

    .line 18
    :cond_4
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lanw;

    .line 20
    invoke-direct {v0}, Lanw;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    .line 21
    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 22
    invoke-virtual {v4, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v4}, Lbr;->Q(Landroid/os/Bundle;)V

    goto :goto_1

    .line 24
    :cond_5
    instance-of v0, p1, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;

    if-eqz v0, :cond_9

    .line 25
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lanz;

    .line 26
    invoke-direct {v0}, Lanz;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    .line 27
    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 28
    invoke-virtual {v4, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v4}, Lbr;->Q(Landroid/os/Bundle;)V

    .line 30
    :goto_1
    invoke-virtual {v0, p0}, Lbr;->af(Lbr;)V

    .line 31
    instance-of p1, v0, Lbm;

    if-eqz p1, :cond_6

    .line 32
    check-cast v0, Lbm;

    iget-object p1, p0, Lbr;->A:Lcr;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lbm;->d:Z

    iput-boolean v3, v0, Lbm;->e:Z

    .line 33
    invoke-virtual {p1}, Lcr;->h()Lda;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lda;->m()V

    .line 35
    invoke-virtual {p1, v2, v0, v1, v3}, Lda;->c(ILbr;Ljava/lang/String;I)V

    .line 36
    invoke-virtual {p1}, Lda;->g()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lbr;->P:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 38
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lbv;->aI()Lcr;

    move-result-object v1

    invoke-virtual {v1}, Lcr;->h()Lda;

    move-result-object v1

    const v2, 0x10102e5

    .line 40
    invoke-static {p1, v2}, Laro;->c(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x10102e6

    .line 41
    invoke-static {p1, v3}, Laro;->c(Landroid/content/Context;I)I

    move-result v3

    const v4, 0x10102e7

    .line 42
    invoke-static {p1, v4}, Laro;->c(Landroid/content/Context;I)I

    move-result v4

    const v5, 0x10102e8

    .line 43
    invoke-static {p1, v5}, Laro;->c(Landroid/content/Context;I)I

    move-result p1

    iput v2, v1, Lda;->e:I

    iput v3, v1, Lda;->f:I

    iput v4, v1, Lda;->g:I

    iput p1, v1, Lda;->h:I

    iget-object p1, p0, Lbr;->P:Landroid/view/View;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lda;->n(ILbr;)V

    .line 45
    invoke-virtual {v1}, Lda;->k()V

    .line 46
    invoke-virtual {v1}, Lda;->g()V

    return-void

    .line 36
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    const-string v0, "Preference fragment must have a layout."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    const-string v0, "Preference fragment is not attached to an Activity."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit16 v1, v1, 0xa4

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final am(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView;
    .locals 3

    .line 1
    const v0, 0x7f090171

    invoke-static {p2, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    iput-object v1, p0, Lany;->ad:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    .line 2
    invoke-interface {v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x7f0c0072

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    .line 6
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    invoke-direct {p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    .line 7
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->Z(Lra;)V

    .line 8
    new-instance p2, Ladn;

    invoke-direct {p2, p1}, Ladn;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->X(Lrt;)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected final ap()Lcom/android/car/ui/baselayout/Insets;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/ui/core/BaseLayoutController;->getBaseLayoutController(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/car/ui/core/BaseLayoutController;->getInsets()Lcom/android/car/ui/baselayout/Insets;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final aq()Lare;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/ui/core/BaseLayoutController;->getBaseLayoutController(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/car/ui/core/BaseLayoutController;->getToolbarController()Lare;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()V
    .locals 1

    .line 1
    invoke-super {p0}, Lada;->h()V

    .line 2
    invoke-virtual {p0}, Lany;->ap()Lcom/android/car/ui/baselayout/Insets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lany;->a(Lcom/android/car/ui/baselayout/Insets;)V

    :cond_0
    return-void
.end method
