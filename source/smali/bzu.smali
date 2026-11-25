.class public final synthetic Lbzu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbzy;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbzy;I)V
    .locals 0

    iput p2, p0, Lbzu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzu;->a:Lbzy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 5
    iget v0, p0, Lbzu;->b:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbzu;->a:Lbzy;

    invoke-static {}, Lbjq;->f()V

    iget-object v4, v0, Lbzy;->b:Lcaa;

    iget-wide v4, v4, Lcaa;->h:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    return-void

    .line 6
    :pswitch_0
    iget-object v0, p0, Lbzu;->a:Lbzy;

    .line 1
    invoke-static {}, Lbjq;->f()V

    iget-object v4, v0, Lbzy;->b:Lcaa;

    iget-wide v4, v4, Lcaa;->i:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lbzy;->b:Lcaa;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcaa;->i:J

    iget-object v0, v0, Lbzy;->b:Lcaa;

    iget-object v0, v0, Lcaa;->l:Lbzz;

    iput-boolean v1, v0, Lbzz;->j:Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lbzu;->a:Lbzy;

    .line 3
    invoke-static {v0}, Lbzw;->b(Lbzy;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lbzu;->a:Lbzy;

    .line 4
    invoke-static {v0}, Lbzw;->c(Lbzy;)V

    return-void

    .line 5
    :cond_1
    iget-object v2, v0, Lbzy;->b:Lcaa;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcaa;->h:J

    iget-object v0, v0, Lbzy;->b:Lcaa;

    iget-object v0, v0, Lcaa;->l:Lbzz;

    iput-boolean v1, v0, Lbzz;->i:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
