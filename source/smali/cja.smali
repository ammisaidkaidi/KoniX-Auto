.class public final synthetic Lcja;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcjf;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcjf;I)V
    .locals 0

    iput p2, p0, Lcja;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcja;->a:Lcjf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 3

    .line 1
    iget v0, p0, Lcja;->b:I

    packed-switch v0, :pswitch_data_0

    .line 7
    iget-object v0, p0, Lcja;->a:Lcjf;

    .line 12
    check-cast p1, Ljava/lang/Void;

    iget-object p1, v0, Lcjf;->b:Ldag;

    .line 13
    invoke-static {p1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 12
    invoke-virtual {v0, p1}, Lcjf;->b(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcja;->a:Lcjf;

    check-cast p1, Landroid/net/Uri;

    const-string v1, ".bak"

    .line 2
    invoke-static {p1, v1}, Lbxr;->d(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lcjf;->d:Lchm;

    .line 3
    invoke-virtual {v2, v1}, Lchm;->d(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcjf;->d:Lchm;

    .line 4
    invoke-virtual {v0, v1, p1}, Lchm;->c(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :cond_0
    sget-object p1, Ldad;->a:Ldag;

    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object p1

    .line 6
    :goto_0
    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcja;->a:Lcjf;

    iget-object v0, p1, Lcjf;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Lcjf;->g:Ldag;

    .line 7
    monitor-exit v0

    return-object p1

    .line 5
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 14
    :pswitch_2
    iget-object v0, p0, Lcja;->a:Lcjf;

    iget-object v1, v0, Lcjf;->b:Ldag;

    .line 9
    invoke-static {v1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 10
    invoke-virtual {v0, v1, p1}, Lcjf;->c(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 11
    sget-object p1, Ldad;->a:Ldag;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
