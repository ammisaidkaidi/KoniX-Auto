.class public Lcom/android/car/ui/toolbar/MenuItemAdapterV1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final mClientListener:Laps;

.field private final mClientMenuItem:Lapu;

.field private mPluginMenuItem:Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;

.field private final mToolbar:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;Lapu;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;->builder()Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->build()Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mPluginMenuItem:Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;

    new-instance v0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/MenuItemAdapterV1$$ExternalSyntheticLambda0;-><init>(Lcom/android/car/ui/toolbar/MenuItemAdapterV1;)V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientListener:Laps;

    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mToolbar:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    .line 2
    invoke-virtual {p2, v0}, Lapu;->c(Laps;)V

    .line 3
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->updateMenuItem()V

    return-void
.end method

.method private static convertDisplayBehavior(Lapr;)I
    .locals 1

    .line 1
    sget-object v0, Lapr;->a:Lapr;

    invoke-virtual {p0}, Lapr;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "Unknown display behavior!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMenuItem()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mPluginMenuItem:Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;

    invoke-virtual {v0}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;->copy()Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setKey(I)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-object v1, v1, Lapu;->h:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v1}, Laro;->h(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setTitle(Ljava/lang/String;)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-object v1, v1, Lapu;->i:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-boolean v1, v1, Lapu;->l:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setEnabled(Z)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    .line 6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setPrimary(Z)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    .line 7
    invoke-virtual {v1}, Lapu;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setRestricted(Z)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-boolean v1, v1, Lapu;->d:Z

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setShowIconAndTitle(Z)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-object v1, v1, Lapu;->k:Lapr;

    .line 9
    invoke-static {v1}, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->convertDisplayBehavior(Lapr;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setDisplayBehavior(I)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-boolean v1, v1, Lapu;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setCheckable(Z)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-boolean v3, v3, Lapu;->m:Z

    .line 11
    invoke-virtual {v1, v3}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setChecked(Z)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    :cond_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-boolean v1, v1, Lapu;->b:Z

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setActivatable(Z)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-boolean v2, v2, Lapu;->o:Z

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setActivated(Z)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    :cond_1
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-object v2, v1, Lapu;->j:Lapt;

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lapu;->b:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lapu;->a:Z

    if-nez v2, :cond_3

    .line 14
    invoke-virtual {v1}, Lapu;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setOnClickListener(Ljava/lang/Runnable;)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/car/ui/toolbar/MenuItemAdapterV1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/car/ui/toolbar/MenuItemAdapterV1$$ExternalSyntheticLambda1;-><init>(Lapu;)V

    invoke-virtual {v0, v2}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->setOnClickListener(Ljava/lang/Runnable;)Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;

    .line 17
    :goto_1
    invoke-virtual {v0}, Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1$Builder;->build()Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mPluginMenuItem:Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;

    return-void
.end method

.method private updateMenuItems()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mToolbar:Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1;->updateMenuItems()V

    return-void
.end method


# virtual methods
.method public getClientMenuItem()Lapu;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    return-object v0
.end method

.method public getPluginMenuItem()Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mPluginMenuItem:Lcom/android/car/ui/plugin/oemapis/toolbar/MenuItemOEMV1;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->mClientMenuItem:Lapu;

    iget-boolean v0, v0, Lapu;->n:Z

    return v0
.end method

.method public synthetic lambda$new$0$com-android-car-ui-toolbar-MenuItemAdapterV1(Lapu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->updateMenuItem()V

    .line 2
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItemAdapterV1;->updateMenuItems()V

    return-void
.end method
