.class final Laow;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Larr;


# instance fields
.field final synthetic a:Laox;


# direct methods
.method public constructor <init>(Laox;)V
    .locals 0

    iput-object p1, p0, Laow;->a:Laox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 3

    .line 1
    iget-object v0, p0, Laow;->a:Laox;

    iget-object v0, v0, Laox;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->e()Lqq;

    move-result-object v0

    .line 2
    instance-of v1, v0, Laoq;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getMaxCumulativeContentItems()I

    move-result p1

    goto :goto_0

    .line 9
    :cond_1
    const/4 p1, -0x1

    .line 5
    :goto_0
    invoke-virtual {v0}, Lqq;->getItemCount()I

    move-result v1

    .line 6
    move-object v2, v0

    check-cast v2, Laoq;

    invoke-interface {v2, p1}, Laoq;->a(I)V

    .line 7
    invoke-virtual {v0}, Lqq;->getItemCount()I

    move-result p1

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    if-ge p1, v1, :cond_3

    sub-int/2addr v1, p1

    .line 8
    invoke-virtual {v0, p1, v1}, Lqq;->notifyItemRangeRemoved(II)V

    return-void

    :cond_3
    sub-int/2addr p1, v1

    .line 9
    invoke-virtual {v0, v1, p1}, Lqq;->notifyItemRangeInserted(II)V

    return-void
.end method
