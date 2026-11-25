.class public final Lvw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Lvx;

.field public e:Lvw;

.field public f:I

.field g:I

.field public h:Lvs;

.field public final i:I


# direct methods
.method public constructor <init>(Lvx;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvw;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lvw;->f:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lvw;->g:I

    iput-object p1, p0, Lvw;->d:Lvx;

    iput p2, p0, Lvw;->i:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Lvw;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lvw;->b:I

    return v0
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Lvw;->d:Lvx;

    iget v0, v0, Lvx;->ag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lvw;->g:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lvw;->e:Lvw;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lvw;->d:Lvx;

    iget v2, v2, Lvx;->ag:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lvw;->f:I

    return v0
.end method

.method public final c(ILjava/util/ArrayList;Lws;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvw;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvw;

    .line 2
    iget-object v1, v1, Lvw;->d:Lvx;

    invoke-static {v1, p1, p2, p3}, Lio;->d(Lvx;ILjava/util/ArrayList;Lws;)Lws;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvw;->e:Lvw;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lvw;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lvw;->e:Lvw;

    .line 2
    iget-object v0, v0, Lvw;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvw;->e:Lvw;

    .line 3
    iput-object v1, v0, Lvw;->a:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Lvw;->a:Ljava/util/HashSet;

    iput-object v1, p0, Lvw;->e:Lvw;

    const/4 v0, 0x0

    iput v0, p0, Lvw;->f:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lvw;->g:I

    iput-boolean v0, p0, Lvw;->c:Z

    iput v0, p0, Lvw;->b:I

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lvw;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lvw;->c:Z

    return-void
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lvw;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvw;

    iget v3, v2, Lvw;->i:I

    add-int/lit8 v3, v3, -0x1

    packed-switch v3, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v2, v2, Lvw;->d:Lvx;

    iget-object v2, v2, Lvx;->K:Lvw;

    goto :goto_0

    :pswitch_1
    iget-object v2, v2, Lvw;->d:Lvx;

    iget-object v2, v2, Lvx;->J:Lvw;

    goto :goto_0

    :pswitch_2
    iget-object v2, v2, Lvw;->d:Lvx;

    iget-object v2, v2, Lvx;->M:Lvw;

    goto :goto_0

    :pswitch_3
    iget-object v2, v2, Lvw;->d:Lvx;

    iget-object v2, v2, Lvx;->L:Lvw;

    :goto_0
    invoke-virtual {v2}, Lvw;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lvw;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lvw;->e:Lvw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvw;->h:Lvs;

    if-nez v0, :cond_0

    new-instance v0, Lvs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lvs;-><init>(I)V

    iput-object v0, p0, Lvw;->h:Lvs;

    return-void

    :cond_0
    invoke-virtual {v0}, Lvs;->c()V

    return-void
.end method

.method public final j(Lvw;II)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lvw;->d()V

    return-void

    :cond_0
    iput-object p1, p0, Lvw;->e:Lvw;

    .line 2
    iget-object v0, p1, Lvw;->a:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p1, Lvw;->a:Ljava/util/HashSet;

    :cond_1
    iget-object p1, p0, Lvw;->e:Lvw;

    .line 4
    iget-object p1, p1, Lvw;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iput p2, p0, Lvw;->f:I

    iput p3, p0, Lvw;->g:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lvw;->d:Lvx;

    iget-object v0, v0, Lvx;->ah:Ljava/lang/String;

    iget v1, p0, Lvw;->i:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "CENTER_Y"

    goto :goto_0

    :pswitch_0
    const-string v1, "CENTER_X"

    goto :goto_0

    :pswitch_1
    const-string v1, "CENTER"

    goto :goto_0

    :pswitch_2
    const-string v1, "BASELINE"

    goto :goto_0

    :pswitch_3
    const-string v1, "BOTTOM"

    goto :goto_0

    :pswitch_4
    const-string v1, "RIGHT"

    goto :goto_0

    :pswitch_5
    const-string v1, "TOP"

    goto :goto_0

    :pswitch_6
    const-string v1, "LEFT"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
