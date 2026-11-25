.class public final synthetic Lcgr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldag;

.field public final synthetic b:Lcfm;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcfm;Ldag;I)V
    .locals 0

    iput p3, p0, Lcgr;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcgr;->b:Lcfm;

    iput-object p2, p0, Lcgr;->a:Ldag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcgr;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcgr;->b:Lcfm;

    iget-object v1, p0, Lcgr;->a:Ldag;

    .line 3
    invoke-virtual {v0, v1}, Lcfm;->e(Ldag;)V

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcgr;->b:Lcfm;

    iget-object v1, p0, Lcgr;->a:Ldag;

    :try_start_0
    invoke-static {v1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    move-exception v1

    iget-object v0, v0, Lcfm;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x49

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to store account on flag read for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " which may lead to stale flags."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProtoDataStoreFlagStore"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
