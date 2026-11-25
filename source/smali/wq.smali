.class final Lwq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:I


# instance fields
.field b:Lwt;

.field final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lwt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lwq;->b:Lwt;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwq;->c:Ljava/util/ArrayList;

    sget v0, Lwq;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lwq;->a:I

    iput-object p1, p0, Lwq;->b:Lwt;

    return-void
.end method


# virtual methods
.method public final a(Lwk;J)J
    .locals 8

    .line 1
    iget-object v0, p1, Lwk;->d:Lwt;

    .line 2
    instance-of v1, v0, Lwo;

    if-eqz v1, :cond_0

    return-wide p2

    .line 3
    :cond_0
    iget-object v1, p1, Lwk;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-wide v3, p2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4
    iget-object v5, p1, Lwk;->j:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwi;

    .line 5
    instance-of v6, v5, Lwk;

    if-eqz v6, :cond_2

    .line 6
    check-cast v5, Lwk;

    .line 7
    iget-object v6, v5, Lwk;->d:Lwt;

    if-ne v6, v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget v6, v5, Lwk;->e:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    invoke-virtual {p0, v5, v6, v7}, Lwq;->a(Lwk;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    nop

    .line 7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, v0, Lwt;->j:Lwk;

    if-ne p1, v1, :cond_4

    .line 9
    invoke-virtual {v0}, Lwt;->a()J

    move-result-wide v1

    sub-long/2addr p2, v1

    iget-object p1, v0, Lwt;->i:Lwk;

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lwq;->a(Lwk;J)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object p1, v0, Lwt;->i:Lwk;

    .line 11
    iget p1, p1, Lwk;->e:I

    int-to-long v3, p1

    sub-long/2addr p2, v3

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v3
.end method

.method public final b(Lwk;J)J
    .locals 8

    .line 1
    iget-object v0, p1, Lwk;->d:Lwt;

    .line 2
    instance-of v1, v0, Lwo;

    if-eqz v1, :cond_0

    return-wide p2

    .line 3
    :cond_0
    iget-object v1, p1, Lwk;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-wide v3, p2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4
    iget-object v5, p1, Lwk;->j:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwi;

    .line 5
    instance-of v6, v5, Lwk;

    if-eqz v6, :cond_2

    .line 6
    check-cast v5, Lwk;

    .line 7
    iget-object v6, v5, Lwk;->d:Lwt;

    if-ne v6, v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget v6, v5, Lwk;->e:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    invoke-virtual {p0, v5, v6, v7}, Lwq;->b(Lwk;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    nop

    .line 7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, v0, Lwt;->i:Lwk;

    if-ne p1, v1, :cond_4

    .line 9
    invoke-virtual {v0}, Lwt;->a()J

    move-result-wide v1

    add-long/2addr p2, v1

    iget-object p1, v0, Lwt;->j:Lwk;

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lwq;->b(Lwk;J)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object p1, v0, Lwt;->j:Lwk;

    .line 11
    iget p1, p1, Lwk;->e:I

    int-to-long v3, p1

    sub-long/2addr p2, v3

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v3
.end method
