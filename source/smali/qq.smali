.class public abstract Lqq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lqr;

.field private mStateRestorationPolicy:Lqp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqr;

    invoke-direct {v0}, Lqr;-><init>()V

    iput-object v0, p0, Lqq;->mObservable:Lqr;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqq;->mHasStableIds:Z

    .line 2
    sget-object v0, Lqp;->a:Lqp;

    iput-object v0, p0, Lqq;->mStateRestorationPolicy:Lqp;

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lrr;I)V
    .locals 4

    .line 1
    iget-object v0, p1, Lrr;->mBindingAdapter:Lqq;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iput p2, p1, Lrr;->mPosition:I

    invoke-virtual {p0}, Lqq;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lqq;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Lrr;->mItemId:J

    :cond_0
    const/16 v2, 0x207

    .line 4
    invoke-virtual {p1, v1, v2}, Lrr;->setFlags(II)V

    .line 5
    const-string v2, "RV OnBindView"

    invoke-static {v2}, Lxz;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iput-object p0, p1, Lrr;->mBindingAdapter:Lqq;

    .line 7
    invoke-virtual {p1}, Lrr;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lqq;->onBindViewHolder(Lrr;ILjava/util/List;)V

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lrr;->clearPayload()V

    .line 9
    iget-object p1, p1, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 10
    instance-of p2, p1, Lrb;

    if-eqz p2, :cond_2

    .line 11
    check-cast p1, Lrb;

    iput-boolean v1, p1, Lrb;->e:Z

    .line 12
    :cond_2
    invoke-static {}, Lxz;->b()V

    :cond_3
    return-void
.end method

.method public canRestoreState()Z
    .locals 3

    .line 1
    sget-object v0, Lqp;->a:Lqp;

    iget-object v0, p0, Lqq;->mStateRestorationPolicy:Lqp;

    invoke-virtual {v0}, Lqp;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    return v1

    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p0}, Lqq;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lrr;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "RV CreateView"

    invoke-static {v0}, Lxz;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lqq;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lrr;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lrr;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iput p2, p1, Lrr;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Lxz;->b()V

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Lxz;->b()V

    .line 7
    throw p1
.end method

.method public findRelativeAdapterPositionIn(Lqq;Lrr;I)I
    .locals 0

    if-ne p1, p0, :cond_0

    return p3

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getStateRestorationPolicy()Lqp;
    .locals 1

    iget-object v0, p0, Lqq;->mStateRestorationPolicy:Lqp;

    return-object v0
.end method

.method public final hasObservers()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {v0}, Lqr;->h()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    iget-boolean v0, p0, Lqq;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {v0}, Lqr;->a()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lqr;->c(II)V

    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lqr;->d(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lqr;->e(II)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {v0, p1, p2}, Lqr;->b(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {v0, p1, p2}, Lqr;->c(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {v0, p1, p2, p3}, Lqr;->d(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {v0, p1, p2}, Lqr;->e(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {v0, p1, p2}, Lqr;->f(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lqr;->f(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract onBindViewHolder(Lrr;I)V
.end method

.method public onBindViewHolder(Lrr;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lqq;->onBindViewHolder(Lrr;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lrr;
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onFailedToRecycleView(Lrr;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Lrr;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Lrr;)V
    .locals 0

    return-void
.end method

.method public onViewRecycled(Lrr;)V
    .locals 0

    return-void
.end method

.method public registerAdapterDataObserver(Lqs;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {v0, p1}, Lqr;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqq;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lqq;->mHasStableIds:Z

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStateRestorationPolicy(Lqp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqq;->mStateRestorationPolicy:Lqp;

    iget-object p1, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {p1}, Lqr;->g()V

    return-void
.end method

.method public unregisterAdapterDataObserver(Lqs;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqq;->mObservable:Lqr;

    invoke-virtual {v0, p1}, Lqr;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
