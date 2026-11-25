.class public final Laan;
.super Lzz;
.source "PG"

# interfaces
.implements Laat;


# instance fields
.field public final j:I

.field public final k:Laau;

.field public l:Laao;

.field private m:Lzq;


# direct methods
.method public constructor <init>(Laau;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lzz;-><init>()V

    const v0, 0xd431

    iput v0, p0, Laan;->j:I

    iput-object p1, p0, Laan;->k:Laau;

    iget-object v1, p1, Laau;->e:Laat;

    if-nez v1, :cond_0

    .line 2
    iput-object p0, p1, Laau;->e:Laat;

    iput v0, p1, Laau;->d:I

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string v0, "There is already a listener registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final d()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    invoke-static {v0}, Laam;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Laan;->k:Laau;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laau;->g:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Laau;->i:Z

    iput-boolean v1, v0, Laau;->h:Z

    move-object v1, v0

    check-cast v1, Laas;

    iget-object v2, v1, Laas;->c:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {v1, v2}, Laas;->b(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Laau;->d()V

    new-instance v0, Laar;

    .line 3
    invoke-direct {v0, v1}, Laar;-><init>(Laas;)V

    iput-object v0, v1, Laas;->a:Laar;

    .line 2
    invoke-virtual {v1}, Laas;->a()V

    return-void
.end method

.method protected final e()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    invoke-static {v0}, Laam;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Laan;->k:Laau;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laau;->g:Z

    .line 2
    invoke-virtual {v0}, Laau;->d()V

    return-void
.end method

.method public final f(Laaa;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lzz;->f(Laaa;)V

    const/4 p1, 0x0

    iput-object p1, p0, Laan;->m:Lzq;

    iput-object p1, p0, Laan;->l:Laao;

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Laan;->m:Lzq;

    iget-object v1, p0, Laan;->l:Laao;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Lzz;->f(Laaa;)V

    .line 2
    invoke-virtual {p0, v0, v1}, Lzy;->c(Lzq;Laaa;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    invoke-static {v0}, Laam;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Destroying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Laan;->k:Laau;

    .line 2
    invoke-virtual {v0}, Laau;->d()V

    iget-object v0, p0, Laan;->k:Laau;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laau;->h:Z

    iget-object v0, p0, Laan;->l:Laao;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Lzy;->f(Laaa;)V

    iget-boolean v2, v0, Laao;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-static {v2}, Laam;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Resetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Laao;->a:Laau;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, v0, Laao;->b:Laal;

    check-cast v0, Lchf;

    iget-object v2, v0, Lchf;->a:Landroid/widget/ArrayAdapter;

    .line 5
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, v0, Lchf;->a:Landroid/widget/ArrayAdapter;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Laan;->k:Laau;

    iget-object v2, v0, Laau;->e:Laat;

    if-eqz v2, :cond_4

    .line 7
    if-ne v2, p0, :cond_3

    .line 8
    const/4 v2, 0x0

    iput-object v2, v0, Laau;->e:Laat;

    iput-boolean v1, v0, Laau;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Laau;->g:Z

    iput-boolean v1, v0, Laau;->h:Z

    iput-boolean v1, v0, Laau;->j:Z

    return-void

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Lzq;Laal;)V
    .locals 2

    .line 1
    new-instance v0, Laao;

    iget-object v1, p0, Laan;->k:Laau;

    invoke-direct {v0, v1, p2}, Laao;-><init>(Laau;Laal;)V

    invoke-virtual {p0, p1, v0}, Lzy;->c(Lzq;Laaa;)V

    iget-object p2, p0, Laan;->l:Laao;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lzy;->f(Laaa;)V

    :cond_0
    iput-object p1, p0, Laan;->m:Lzq;

    iput-object v0, p0, Laan;->l:Laao;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laan;->j:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laan;->k:Laau;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laan;->k:Laau;

    .line 10
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
