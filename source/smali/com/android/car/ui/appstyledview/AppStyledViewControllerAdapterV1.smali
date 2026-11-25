.class public Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lana;


# instance fields
.field private final mOemController:Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;->mOemController:Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;->setNavIcon(I)V

    return-void
.end method


# virtual methods
.method public getAppStyledView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;->mOemController:Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;->setContent(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;->mOemController:Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;

    .line 2
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getDialogWindowLayoutParam(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;->mOemController:Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;->getDialogWindowLayoutParam(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public setNavIcon(I)V
    .locals 3

    .line 3
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown nav icon style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;->mOemController:Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;

    const/4 v0, 0x2

    .line 1
    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;->setNavIcon(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;->mOemController:Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;->setNavIcon(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnNavIconClickListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/appstyledview/AppStyledViewControllerAdapterV1;->mOemController:Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/appstyledview/AppStyledViewControllerOEMV1;->setOnBackClickListener(Ljava/lang/Runnable;)V

    return-void
.end method
