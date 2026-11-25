.class public final synthetic Lawl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:Lawn;

.field public final synthetic b:I

.field public final synthetic c:Ljava/text/NumberFormat;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lawn;ILjava/text/NumberFormat;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawl;->a:Lawn;

    iput p2, p0, Lawl;->b:I

    iput-object p3, p0, Lawl;->c:Ljava/text/NumberFormat;

    iput p4, p0, Lawl;->d:I

    iput p5, p0, Lawl;->e:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lawl;->a:Lawn;

    iget v1, p0, Lawl;->b:I

    iget-object v2, p0, Lawl;->c:Ljava/text/NumberFormat;

    iget v3, p0, Lawl;->d:I

    iget v4, p0, Lawl;->e:I

    check-cast p1, Lddf;

    sget-object v5, Ld;->d:Ld;

    .line 2
    invoke-virtual {v5}, Lddk;->n()Lddf;

    move-result-object v5

    iget-boolean v6, v5, Lddf;->c:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 3
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v7, v5, Lddf;->c:Z

    :cond_0
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 4
    check-cast v6, Ld;

    iput v1, v6, Ld;->a:I

    int-to-double v8, v3

    const-wide v10, 0x408f400000000000L    # 1000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    .line 5
    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v5, Lddf;->c:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v7, v5, Lddf;->c:Z

    :cond_1
    iget-object v2, v5, Lddf;->b:Lddk;

    .line 7
    check-cast v2, Ld;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Ld;->b:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v4, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    add-int/lit8 v4, v4, -0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x3

    .line 8
    :goto_0
    invoke-static {v1}, Lr;->d(I)I

    move-result v1

    iput v1, v2, Ld;->c:I

    iget-boolean v1, p1, Lddf;->c:Z

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v7, p1, Lddf;->c:Z

    :cond_3
    iget-object v1, p1, Lddf;->b:Lddk;

    .line 10
    check-cast v1, Lm;

    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v2

    check-cast v2, Ld;

    sget-object v3, Lm;->e:Lm;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lm;->a:Ld;

    iget-object v1, v0, Lawn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lawn;->j:Lddf;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v7, v0, Lddf;->c:Z

    :cond_4
    iget-object v0, v0, Lddf;->b:Lddk;

    .line 13
    check-cast v0, Lk;

    .line 14
    invoke-virtual {p1}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Lm;

    .line 13
    sget-object v2, Lk;->e:Lk;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {v0}, Lk;->b()V

    iget-object v0, v0, Lk;->a:Lddr;

    .line 17
    invoke-interface {v0, v7, p1}, Lddr;->add(ILjava/lang/Object;)V

    .line 18
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
