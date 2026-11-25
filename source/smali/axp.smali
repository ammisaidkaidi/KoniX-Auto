.class public final synthetic Laxp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Laxr;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Laxr;IIZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laxp;->a:Laxr;

    iput p2, p0, Laxp;->b:I

    iput p3, p0, Laxp;->c:I

    iput-boolean p4, p0, Laxp;->d:Z

    iput-boolean p5, p0, Laxp;->e:Z

    iput-boolean p6, p0, Laxp;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Laxp;->a:Laxr;

    iget v2, v0, Laxp;->b:I

    iget v3, v0, Laxp;->c:I

    iget-boolean v4, v0, Laxp;->d:Z

    iget-boolean v5, v0, Laxp;->e:Z

    iget-boolean v6, v0, Laxp;->f:Z

    iget-object v1, v1, Laxr;->a:Laxs;

    iget-object v7, v1, Laxs;->c:Lfu;

    if-eqz v7, :cond_3

    packed-switch v2, :pswitch_data_0

    const-wide/16 v8, -0x1

    goto :goto_0

    .line 6
    :pswitch_0
    const-wide/16 v8, 0x5

    goto :goto_0

    :pswitch_1
    const-wide/16 v8, 0x3

    goto :goto_0

    :pswitch_2
    const-wide/16 v8, 0x4

    .line 1
    :goto_0
    iget-object v15, v1, Laxs;->b:Lfx;

    const/16 v17, 0x0

    const/4 v14, 0x2

    packed-switch v2, :pswitch_data_1

    const/4 v11, 0x0

    goto :goto_1

    .line 6
    :pswitch_3
    const/4 v11, 0x2

    goto :goto_1

    :pswitch_4
    const/4 v10, 0x3

    const/4 v11, 0x3

    goto :goto_1

    :pswitch_5
    const/4 v11, 0x1

    .line 1
    :goto_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v3

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    if-ne v2, v14, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    .line 6
    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object v10, v15

    const/4 v3, 0x1

    const/16 v20, 0x2

    move v14, v2

    move-object v2, v15

    move-wide/from16 v15, v18

    invoke-virtual/range {v10 .. v16}, Lfx;->b(IJFJ)V

    const-wide/16 v10, 0x30

    or-long/2addr v8, v10

    iput-wide v8, v2, Lfx;->a:J

    .line 3
    invoke-virtual {v2}, Lfx;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    .line 4
    invoke-virtual {v7, v2}, Lfu;->h(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object v2, v1, Laxs;->c:Lfu;

    iget-object v2, v2, Lfu;->b:Lfo;

    .line 5
    invoke-interface {v2, v4}, Lfo;->j(I)V

    if-eqz v5, :cond_2

    if-eq v3, v6, :cond_1

    const/4 v3, 0x2

    goto :goto_3

    .line 6
    :cond_1
    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 5
    :goto_3
    iget-object v1, v1, Laxs;->c:Lfu;

    iget-object v1, v1, Lfu;->b:Lfo;

    .line 6
    invoke-interface {v1, v3}, Lfo;->i(I)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
