.class final Labu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgb;

.field final synthetic c:Labw;

.field final synthetic d:Labx;

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Labw;Labx;Ljava/lang/String;Lgb;I)V
    .locals 0

    iput p5, p0, Labu;->e:I

    iput-object p1, p0, Labu;->c:Labw;

    iput-object p2, p0, Labu;->d:Labx;

    iput-object p3, p0, Labu;->a:Ljava/lang/String;

    iput-object p4, p0, Labu;->b:Lgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 6
    iget v0, p0, Labu;->e:I

    const-string v1, "MBServiceCompat"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Labu;->d:Labx;

    invoke-virtual {v0}, Labx;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Labu;->c:Labw;

    iget-object v2, v2, Labw;->a:Labz;

    iget-object v2, v2, Labz;->b:Lvb;

    .line 7
    invoke-virtual {v2, v0}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labe;

    if-nez v0, :cond_2

    iget-object v0, p0, Labu;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getMediaItem for callback that isn\'t registered id="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Labu;->d:Labx;

    .line 1
    invoke-virtual {v0}, Labx;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Labu;->c:Labw;

    iget-object v2, v2, Labw;->a:Labz;

    iget-object v2, v2, Labz;->b:Lvb;

    .line 2
    invoke-virtual {v2, v0}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labe;

    if-nez v0, :cond_0

    iget-object v0, p0, Labu;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "search for callback that isn\'t registered query="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Labu;->a:Ljava/lang/String;

    iget-object v1, p0, Labu;->b:Lgb;

    new-instance v2, Labb;

    invoke-direct {v2, v0, v1}, Labb;-><init>(Ljava/lang/Object;Lgb;)V

    const/4 v1, 0x4

    iput v1, v2, Labo;->h:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v2, v1}, Labo;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Labo;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    return-void

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSearch must call detach() or sendResult() before returning for query="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    iget-object v0, p0, Labu;->a:Ljava/lang/String;

    iget-object v1, p0, Labu;->b:Lgb;

    new-instance v2, Laba;

    invoke-direct {v2, v0, v1}, Laba;-><init>(Ljava/lang/Object;Lgb;)V

    .line 9
    invoke-static {v2}, Labz;->d(Labo;)V

    invoke-virtual {v2}, Labo;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    return-void

    .line 9
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
