.class public final Lws;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static a:I


# instance fields
.field final b:Ljava/util/ArrayList;

.field public c:I

.field public d:I

.field e:Ljava/util/ArrayList;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lws;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lws;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lws;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lws;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lws;->e:Ljava/util/ArrayList;

    iput v0, p0, Lws;->f:I

    sget v0, Lws;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lws;->a:I

    iput v0, p0, Lws;->c:I

    iput p1, p0, Lws;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lvn;I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lws;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lws;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvx;

    iget-object v2, v2, Lvx;->T:Lvx;

    .line 3
    invoke-virtual {p1}, Lvn;->k()V

    .line 4
    invoke-virtual {v2, p1, v1}, Lvx;->b(Lvn;Z)V

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvx;

    .line 7
    invoke-virtual {v4, p1, v1}, Lvx;->b(Lvn;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    move-object v3, v2

    check-cast v3, Lvy;

    .line 8
    iget v4, v3, Lvy;->at:I

    if-lez v4, :cond_2

    .line 9
    invoke-static {v3, p1, v0, v1}, Lhr;->c(Lvy;Lvn;Ljava/util/ArrayList;I)V

    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    move-object v4, v2

    check-cast v4, Lvy;

    .line 10
    iget v5, v4, Lvy;->au:I

    if-lez v5, :cond_3

    .line 11
    invoke-static {v4, p1, v0, v3}, Lhr;->c(Lvy;Lvn;Ljava/util/ArrayList;I)V

    .line 12
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lvn;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 24
    :catch_0
    move-exception v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lws;->e:Ljava/util/ArrayList;

    .line 15
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvx;

    new-instance v4, Lir;

    .line 17
    invoke-direct {v4, v3}, Lir;-><init>(Lvx;)V

    iget-object v3, p0, Lws;->e:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    check-cast v2, Lvy;

    .line 19
    iget-object p2, v2, Lvy;->J:Lvw;

    invoke-static {p2}, Lvn;->o(Ljava/lang/Object;)I

    move-result p2

    .line 20
    iget-object v0, v2, Lvy;->L:Lvw;

    invoke-static {v0}, Lvn;->o(Ljava/lang/Object;)I

    move-result v0

    .line 21
    invoke-virtual {p1}, Lvn;->k()V

    sub-int/2addr v0, p2

    goto :goto_3

    :cond_5
    check-cast v2, Lvy;

    .line 22
    iget-object p2, v2, Lvy;->K:Lvw;

    invoke-static {p2}, Lvn;->o(Ljava/lang/Object;)I

    move-result p2

    .line 23
    iget-object v0, v2, Lvy;->M:Lvw;

    invoke-static {v0}, Lvn;->o(Ljava/lang/Object;)I

    move-result v0

    .line 24
    invoke-virtual {p1}, Lvn;->k()V

    sub-int/2addr v0, p2

    .line 21
    :goto_3
    return v0
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lws;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lws;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lws;

    iget v3, p0, Lws;->f:I

    .line 4
    iget v4, v2, Lws;->c:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lws;->d:I

    .line 5
    invoke-virtual {p0, v3, v2}, Lws;->c(ILws;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final c(ILws;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lws;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvx;

    .line 2
    invoke-virtual {p2, v3}, Lws;->d(Lvx;)Z

    if-nez p1, :cond_0

    iget v4, p2, Lws;->c:I

    .line 4
    iput v4, v3, Lvx;->an:I

    goto :goto_1

    :cond_0
    iget v4, p2, Lws;->c:I

    .line 3
    iput v4, v3, Lvx;->ao:I

    .line 4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p2, Lws;->c:I

    iput p1, p0, Lws;->f:I

    return-void
.end method

.method public final d(Lvx;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lws;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lws;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lws;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "Horizontal"

    goto :goto_0

    .line 4
    :cond_0
    if-ne v0, v1, :cond_1

    const-string v0, "Vertical"

    goto :goto_0

    :cond_1
    const-string v0, "Both"

    .line 1
    :goto_0
    iget v2, p0, Lws;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] <"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lws;->b:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 2
    check-cast v5, Lvx;

    iget-object v5, v5, Lvx;->ah:Ljava/lang/String;

    .line 3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v8, v6

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 4
    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
