.class public final synthetic Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/android/car/ui/plugin/oemapis/recyclerview/SpanSizeLookupOEMV1;


# instance fields
.field public synthetic f$0:Laoh;


# direct methods
.method public synthetic constructor <init>(Laoh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$$ExternalSyntheticLambda0;->f$0:Laoh;

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$$ExternalSyntheticLambda0;->f$0:Laoh;

    invoke-static {v0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->lambda$setLayoutStyle$0(Laoh;I)I

    const/4 p1, 0x1

    return p1
.end method
