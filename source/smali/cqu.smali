.class public Lcqu;
.super Lcpz;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcpz;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcqu;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Lcqw;
    .locals 2

    .line 3
    iget v0, p0, Lcqu;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcqu;->a:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcqw;->l(I[Ljava/lang/Object;)Lcqw;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcqw;->size()I

    move-result v1

    iput v1, p0, Lcqu;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcqu;->c:Z

    return-object v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcqu;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_1
    sget-object v0, Lcsf;->a:Lcsf;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-super {p0, p1}, Lcpz;->e(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-super {p0, p1}, Lcpz;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lcqu;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcqu;->a:[Ljava/lang/Object;

    iget p1, p1, Lcqu;->b:I

    invoke-virtual {p0, v0, p1}, Lcpz;->b([Ljava/lang/Object;I)V

    return-void
.end method
