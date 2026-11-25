.class public final Lanu;
.super Lbr;
.source "PG"

# interfaces
.implements Lanc;


# instance fields
.field public a:Laoe;

.field public b:I

.field public c:Z

.field private d:Landroidx/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbr;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lanu;->b:I

    return-void
.end method


# virtual methods
.method public final M(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

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

    iput-boolean p2, p0, Lanu;->c:Z

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

    .line 19
    :cond_0
    move-object p2, v0

    .line 4
    :goto_0
    nop

    .line 5
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setClipToPadding(Z)V

    iget-object v2, p0, Lbr;->n:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    .line 6
    nop

    .line 7
    const-string v3, "key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lbr;->v()Lbr;

    move-result-object v3

    check-cast v3, Lacd;

    if-eqz v2, :cond_9

    .line 9
    if-eqz v3, :cond_8

    .line 11
    invoke-interface {v3, v2}, Lacd;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 12
    instance-of v3, v2, Landroidx/preference/ListPreference;

    if-eqz v3, :cond_7

    .line 14
    check-cast v2, Landroidx/preference/ListPreference;

    iput-object v2, p0, Lanu;->d:Landroidx/preference/ListPreference;

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v2}, Lare;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    invoke-interface {p2, v0}, Lare;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 17
    invoke-interface {p2}, Lare;->isStateSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    sget-object v2, Lard;->b:Lard;

    invoke-interface {p2, v2}, Lare;->setState(Lard;)V

    goto :goto_1

    .line 19
    :cond_1
    sget-object v2, Laqa;->a:Laqa;

    invoke-interface {p2, v2}, Lare;->setNavButtonMode(Laqa;)V

    .line 18
    :goto_1
    nop

    .line 20
    invoke-interface {p2, v0}, Lare;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-interface {p2, v0}, Lare;->setMenuItems(Ljava/util/List;)V

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lare;->setTabs(Ljava/util/List;)V

    :cond_2
    iget-object p2, p0, Lanu;->d:Landroidx/preference/ListPreference;

    .line 23
    invoke-virtual {p2}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lanu;->d:Landroidx/preference/ListPreference;

    .line 24
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 25
    array-length v2, p2

    array-length v0, v0

    if-ne v2, v0, :cond_5

    .line 26
    iget-object v0, p0, Lanu;->d:Landroidx/preference/ListPreference;

    .line 27
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanu;->b:I

    new-instance v0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laop;

    .line 29
    invoke-direct {v2, v0}, Laop;-><init>(Ljava/util/List;)V

    :goto_2
    array-length v3, p2

    if-ge v1, v3, :cond_4

    .line 30
    aget-object v3, p2, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Laoe;

    .line 31
    sget-object v5, Laob;->d:Laob;

    invoke-direct {v4, v5}, Laoe;-><init>(Laob;)V

    .line 32
    invoke-virtual {v4, v3}, Laoe;->b(Ljava/lang/CharSequence;)V

    iget v3, p0, Lanu;->b:I

    if-ne v1, v3, :cond_3

    .line 33
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Laoe;->a(Z)V

    iput-object v4, p0, Lanu;->a:Laoe;

    :cond_3
    new-instance v3, Lant;

    invoke-direct {v3, p0, v2, v0}, Lant;-><init>(Lanu;Laop;Ljava/util/List;)V

    iput-object v3, v4, Laoe;->h:Laod;

    .line 34
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 35
    :cond_4
    invoke-interface {p1, v2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setAdapter(Lqq;)V

    return-void

    .line 25
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    const-string p2, "ListPreference entries array length does not match entryValues array length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    const-string p2, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    const-string p2, "Cannot use ListPreferenceFragment with a preference that is not of type ListPreference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    const-string p2, "Target fragment must be registered before displaying ListPreference screen."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    const-string p2, "ListPreference key not found in Fragment arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not have any arguments."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

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
    iget v0, p0, Lanu;->b:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lanu;->d:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lanu;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanu;->d:Landroidx/preference/ListPreference;

    .line 2
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanu;->d:Landroidx/preference/ListPreference;

    .line 3
    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

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
    invoke-virtual {p0, v0}, Lanu;->a(Lcom/android/car/ui/baselayout/Insets;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbr;->i()V

    iget-boolean v0, p0, Lanu;->c:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lanu;->b()V

    :cond_0
    return-void
.end method
