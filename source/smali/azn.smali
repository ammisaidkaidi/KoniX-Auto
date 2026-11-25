.class public final synthetic Lazn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lazy;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lazy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazn;->a:Lazy;

    iput p2, p0, Lazn;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lazn;->a:Lazy;

    iget v1, p0, Lazn;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Lazy;->i:Lbah;

    iget-object v0, v0, Lazy;->d:Lawo;

    invoke-virtual {v1, v0}, Lbah;->w(Lawo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lbah;->d:Lbby;

    .line 2
    sget-object v4, Lbcq;->c:Lbcq;

    invoke-interface {v3, v0, v4}, Lbby;->h(Lawo;Lbcq;)Lawo;

    .line 1
    invoke-virtual {v1, v0}, Lbah;->g(Lawo;)Lbaf;

    move-result-object v0

    iput v2, v0, Lbaf;->f:I

    invoke-virtual {v1}, Lbah;->t()V

    :cond_0
    return-void

    :cond_1
    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lazy;->i:Lbah;

    iget-object v0, v0, Lazy;->d:Lawo;

    .line 3
    invoke-virtual {v1, v0}, Lbah;->m(Lawo;)V

    return-void

    :cond_2
    sget-object v0, Lazy;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v1, 0x19d

    .line 4
    const-string v2, "com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler"

    const-string v3, "lambda$onVideoFocusModeChange$6"

    const-string v4, "AndroidAutoHeadunitProjectionHandler.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/4 v1, 0x3

    const-string v2, "Unexpected video focus: %d"

    invoke-interface {v0, v2, v1}, Lcsx;->o(Ljava/lang/String;I)V

    return-void
.end method
