.class public final synthetic Lbfg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbfi;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbfi;I)V
    .locals 0

    iput p2, p0, Lbfg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfg;->a:Lbfi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 2
    iget v0, p0, Lbfg;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbfg;->a:Lbfi;

    sget-object v2, Lcaa;->a:Lcaa;

    invoke-static {}, Lbjq;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v2, Lcaa;->j:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcaa;->j:J

    iget-wide v3, v2, Lcaa;->j:J

    .line 4
    const-string v5, "Primes-tti-end-and-length-ms"

    invoke-static {v5, v3, v4}, Lcaa;->b(Ljava/lang/String;J)V

    iget-object v2, v2, Lcaa;->l:Lbzz;

    iput-boolean v1, v2, Lbzz;->k:Z

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object v0, p0, Lbfg;->a:Lbfi;

    invoke-virtual {v0}, Lbfi;->m()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lbfg;

    invoke-direct {v3, v0, v1}, Lbfg;-><init>(Lbfi;I)V

    .line 1
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1
    :catch_0
    move-exception v0

    return-void

    .line 5
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
