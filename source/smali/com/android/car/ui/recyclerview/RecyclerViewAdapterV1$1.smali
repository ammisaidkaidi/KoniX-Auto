.class Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;


# instance fields
.field final synthetic val$layoutStyle:Laoh;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;Laoh;)V
    .locals 0

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;->val$layoutStyle:Laoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;->val$layoutStyle:Laoh;

    invoke-interface {v0}, Laoh;->a()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;->val$layoutStyle:Laoh;

    invoke-interface {v0}, Laoh;->b()I

    move-result v0

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;->val$layoutStyle:Laoh;

    invoke-interface {v0}, Laoh;->e()Z

    move-result v0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;->val$layoutStyle:Laoh;

    invoke-interface {v0}, Laoh;->c()I

    move-result v0

    return v0
.end method
