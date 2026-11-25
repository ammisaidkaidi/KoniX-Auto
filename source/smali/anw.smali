.class public final Lanw;
.super Lbr;
.source "PG"

# interfaces
.implements Lanc;


# instance fields
.field public a:Ljava/util/Set;

.field public b:Z

.field private c:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbr;-><init>()V

    return-void
.end method


# virtual methods
.method public final M(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const p2, 0x7f090147

    invoke-static {p1, p2}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    .line 2
    invoke-virtual {p0}, Lbr;->t()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05000b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lanw;->b:Z

    .line 3
    invoke-virtual {p0}, Lbr;->v()Lbr;

    move-result-object p2

    instance-of p2, p2, Lany;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lbr;->v()Lbr;

    move-result-object p2

    check-cast p2, Lany;

    invoke-virtual {p2}, Lany;->aq()Lare;

    move-result-object p2

    goto :goto_0

    .line 37
    :cond_0
    move-object p2, v0

    .line 4
    :goto_0
    iget-object v1, p0, Lbr;->n:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 5
    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lbr;->v()Lbr;

    move-result-object v2

    check-cast v2, Lacd;

    if-eqz v1, :cond_8

    .line 7
    if-eqz v2, :cond_7

    .line 9
    invoke-interface {v2, v1}, Lacd;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 10
    instance-of v2, v1, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    if-eqz v2, :cond_6

    .line 12
    check-cast v1, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    iput-object v1, p0, Lanw;->c:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    .line 13
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setClipToPadding(Z)V

    if-eqz p2, :cond_2

    iget-object v2, p0, Lanw;->c:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    .line 14
    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v2}, Lare;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    invoke-interface {p2, v0}, Lare;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 16
    invoke-interface {p2}, Lare;->isStateSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    sget-object v2, Lard;->b:Lard;

    invoke-interface {p2, v2}, Lare;->setState(Lard;)V

    goto :goto_1

    .line 18
    :cond_1
    sget-object v2, Laqa;->a:Laqa;

    invoke-interface {p2, v2}, Lare;->setNavButtonMode(Laqa;)V

    .line 17
    :goto_1
    nop

    .line 19
    invoke-interface {p2, v0}, Lare;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-interface {p2, v0}, Lare;->setMenuItems(Ljava/util/List;)V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lare;->setTabs(Ljava/util/List;)V

    :cond_2
    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lanw;->c:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    .line 22
    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lanw;->a:Ljava/util/Set;

    iget-object p2, p0, Lanw;->c:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    .line 23
    invoke-virtual {p2}, Landroidx/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lanw;->c:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    .line 24
    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 25
    array-length v2, p2

    array-length v3, v0

    if-ne v2, v3, :cond_4

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lanw;->c:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    .line 28
    invoke-virtual {v3}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v3

    :goto_2
    array-length v4, p2

    if-ge v1, v4, :cond_3

    .line 29
    aget-object v4, p2, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    aget-object v5, v0, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Laoe;

    .line 31
    sget-object v7, Laob;->c:Laob;

    invoke-direct {v6, v7}, Laoe;-><init>(Laob;)V

    .line 32
    invoke-virtual {v6, v4}, Laoe;->b(Ljava/lang/CharSequence;)V

    .line 33
    aget-boolean v4, v3, v1

    invoke-virtual {v6, v4}, Laoe;->a(Z)V

    new-instance v4, Lanv;

    invoke-direct {v4, p0, v5}, Lanv;-><init>(Lanw;Ljava/lang/String;)V

    iput-object v4, v6, Laoe;->h:Laod;

    .line 34
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance p2, Laop;

    .line 35
    invoke-direct {p2, v2}, Laop;-><init>(Ljava/util/List;)V

    .line 36
    invoke-interface {p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setAdapter(Lqq;)V

    return-void

    .line 25
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    const-string p2, "MultiSelectListPreference entries array length does not match entryValues array length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    const-string p2, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string p2, "Cannot use MultiSelectListPreferenceFragment with a preference that is not of type CarUiMultiSelectListPreference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    const-string p2, "Target fragment must be registered before displaying MultiSelectListPreference screen."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    const-string p2, "MultiSelectListPreference key not found in Fragment arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    const-string p2, "Preference arguments cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final a(Lcom/android/car/ui/baselayout/Insets;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lbr;->B()Landroid/view/View;

    move-result-object v0

    .line 2
    const v1, 0x7f090147

    invoke-static {v0, v1}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getRight()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/FocusArea;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/android/car/ui/FocusArea;->d(IIII)V

    .line 7
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result p1

    invoke-virtual {v0, v4, v1, v4, p1}, Lcom/android/car/ui/FocusArea;->c(IIII)V

    :cond_0
    return-void
.end method

.method public final ag(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    const v0, 0x7f0c002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lanw;->c:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    iget-object v1, p0, Lanw;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanw;->c:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    iget-object v1, p0, Lanw;->a:Ljava/util/Set;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbr;->h()V

    .line 2
    invoke-virtual {p0}, Lbr;->v()Lbr;

    move-result-object v0

    instance-of v0, v0, Lany;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lbr;->v()Lbr;

    move-result-object v0

    check-cast v0, Lany;

    invoke-virtual {v0}, Lany;->ap()Lcom/android/car/ui/baselayout/Insets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lanw;->a(Lcom/android/car/ui/baselayout/Insets;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbr;->i()V

    iget-boolean v0, p0, Lanw;->b:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lanw;->b()V

    :cond_0
    return-void
.end method
