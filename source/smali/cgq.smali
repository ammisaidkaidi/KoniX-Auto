.class public final synthetic Lcgq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcfm;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcfm;I)V
    .locals 0

    iput p2, p0, Lcgq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcgq;->a:Lcfm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 3
    iget v0, p0, Lcgq;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcgq;->a:Lcfm;

    iget-object v1, v0, Lcfm;->b:Lcdz;

    iget-object v2, v0, Lcfm;->c:Ljava/lang/String;

    invoke-static {v1}, Lcfr;->a(Lcdz;)Lcjp;

    move-result-object v3

    new-instance v4, Lcfq;

    invoke-direct {v4, v2}, Lcfq;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcdz;->d()Ldai;

    move-result-object v1

    .line 5
    invoke-virtual {v3, v4, v1}, Lcjp;->b(Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v1

    new-instance v2, Lcgr;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcgr;-><init>(Lcfm;Ldag;I)V

    iget-object v0, v0, Lcfm;->b:Lcdz;

    .line 6
    invoke-virtual {v0}, Lcdz;->d()Ldai;

    move-result-object v0

    .line 7
    invoke-interface {v1, v2, v0}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcgq;->a:Lcfm;

    .line 1
    invoke-virtual {v0}, Lcfm;->b()Ldag;

    return-void

    :pswitch_1
    iget-object v0, p0, Lcgq;->a:Lcfm;

    .line 2
    invoke-virtual {v0}, Lcfm;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
