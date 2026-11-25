.class public Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;
.super Lrr;
.source "PG"


# instance fields
.field private final mViewHolder:Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;->getItemView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;->mViewHolder:Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    .line 2
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;->isRecyclable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lrr;->setIsRecyclable(Z)V

    return-void
.end method


# virtual methods
.method public getViewHolder()Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapterAdapterV1$ViewHolderWrapper;->mViewHolder:Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    return-object v0
.end method
