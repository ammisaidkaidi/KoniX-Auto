.class public final synthetic Lciy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcjf;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcjf;I)V
    .locals 0

    iput p2, p0, Lciy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lciy;->a:Lcjf;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 4

    .line 1
    iget v0, p0, Lciy;->b:I

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lciy;->a:Lcjf;

    iget-object v1, v0, Lcjf;->b:Ldag;

    new-instance v2, Lcja;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcja;-><init>(Lcjf;I)V

    .line 10
    invoke-static {v2}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v2

    iget-object v0, v0, Lcjf;->c:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {v1, v2, v0}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lhh;->k(Ldag;)Ldag;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lciy;->a:Lcjf;

    iget-object v1, v0, Lcjf;->b:Ldag;

    invoke-static {v1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Lcjf;->b(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :catch_0
    move-exception v1

    new-instance v2, Lcje;

    invoke-direct {v2, v0}, Lcje;-><init>(Lcjf;)V

    .line 4
    instance-of v3, v1, Lchu;

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lchu;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, v0, Lcjf;->e:Lcim;

    .line 7
    invoke-virtual {v3, v1, v2}, Lcim;->a(Ljava/io/IOException;Lcje;)Ldag;

    move-result-object v1

    new-instance v2, Lcja;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcja;-><init>(Lcjf;I)V

    .line 8
    invoke-static {v2}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v2

    iget-object v0, v0, Lcjf;->c:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {v1, v2, v0}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {v1}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object v0

    .line 3
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
