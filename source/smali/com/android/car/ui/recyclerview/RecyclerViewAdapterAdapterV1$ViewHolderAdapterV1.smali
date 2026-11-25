.class Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;


# instance fields
.field private mViewHolder:Lrr;


# direct methods
.method public constructor <init>(Lrr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;->mViewHolder:Lrr;

    return-void
.end method


# virtual methods
.method public getItemView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;->mViewHolder:Lrr;

    iget-object v0, v0, Lrr;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewHolder()Lrr;
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;->mViewHolder:Lrr;

    return-object v0
.end method

.method public isRecyclable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterAdapterV1$ViewHolderAdapterV1;->mViewHolder:Lrr;

    invoke-virtual {v0}, Lrr;->isRecyclable()Z

    move-result v0

    return v0
.end method
