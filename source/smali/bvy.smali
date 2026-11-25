.class public final Lbvy;
.super Lbvz;
.source "PG"


# static fields
.field public static final a:Lbvy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbvy;

    invoke-direct {v0}, Lbvy;-><init>()V

    sput-object v0, Lbvy;->a:Lbvy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbvz;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lder;
    .locals 8

    .line 1
    check-cast p2, Landroid/os/health/HealthStats;

    .line 2
    sget-object v0, Ldop;->i:Ldop;

    .line 3
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    .line 4
    const/16 v1, 0x7531

    invoke-static {p2, v1}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_1

    iget-boolean v6, v0, Lddf;->c:Z

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_0
    iget-object v6, v0, Lddf;->b:Lddk;

    .line 6
    check-cast v6, Ldop;

    iget v7, v6, Ldop;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Ldop;->a:I

    iput-wide v1, v6, Ldop;->b:J

    :cond_1
    const/16 v1, 0x7532

    .line 7
    invoke-static {p2, v1}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lddf;->c:Z

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_2
    iget-object v6, v0, Lddf;->b:Lddk;

    .line 9
    check-cast v6, Ldop;

    iget v7, v6, Ldop;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Ldop;->a:I

    iput-wide v1, v6, Ldop;->c:J

    :cond_3
    const/16 v1, 0x7533

    .line 10
    invoke-static {p2, v1}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lddf;->c:Z

    if-eqz v6, :cond_4

    .line 11
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_4
    iget-object v6, v0, Lddf;->b:Lddk;

    .line 12
    check-cast v6, Ldop;

    iget v7, v6, Ldop;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Ldop;->a:I

    iput-wide v1, v6, Ldop;->d:J

    :cond_5
    const/16 v1, 0x7534

    .line 13
    invoke-static {p2, v1}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_7

    iget-boolean v6, v0, Lddf;->c:Z

    if-eqz v6, :cond_6

    .line 14
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_6
    iget-object v6, v0, Lddf;->b:Lddk;

    .line 15
    check-cast v6, Ldop;

    iget v7, v6, Ldop;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Ldop;->a:I

    iput-wide v1, v6, Ldop;->e:J

    :cond_7
    const/16 v1, 0x7535

    .line 16
    invoke-static {p2, v1}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_9

    iget-boolean v6, v0, Lddf;->c:Z

    if-eqz v6, :cond_8

    .line 17
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_8
    iget-object v6, v0, Lddf;->b:Lddk;

    .line 18
    check-cast v6, Ldop;

    iget v7, v6, Ldop;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Ldop;->a:I

    iput-wide v1, v6, Ldop;->f:J

    :cond_9
    const/16 v1, 0x7536

    .line 19
    invoke-static {p2, v1}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long p2, v1, v3

    if-eqz p2, :cond_b

    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_a

    .line 20
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_a
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 21
    check-cast p2, Ldop;

    iget v3, p2, Ldop;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p2, Ldop;->a:I

    iput-wide v1, p2, Ldop;->g:J

    :cond_b
    if-eqz p1, :cond_d

    .line 22
    invoke-static {p1}, Lbvs;->g(Ljava/lang/String;)Ldom;

    move-result-object p1

    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_c

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_c
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 23
    check-cast p2, Ldop;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Ldop;->h:Ldom;

    iget p1, p2, Ldop;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p2, Ldop;->a:I

    .line 25
    :cond_d
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldop;

    invoke-static {p1}, Lbvs;->m(Ldop;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p1, 0x0

    :cond_e
    return-object p1
.end method

.method public final synthetic b(Lder;Lder;)Lder;
    .locals 9

    .line 1
    check-cast p1, Ldop;

    check-cast p2, Ldop;

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    sget-object v0, Ldop;->i:Ldop;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget v1, p1, Ldop;->a:I

    and-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-wide v5, p1, Ldop;->b:J

    iget-wide v7, p2, Ldop;->b:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_0
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v1, Ldop;

    iget v7, v1, Ldop;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v1, Ldop;->a:I

    iput-wide v5, v1, Ldop;->b:J

    :cond_1
    iget v1, p1, Ldop;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget-wide v5, p1, Ldop;->c:J

    iget-wide v7, p2, Ldop;->c:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_2
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 6
    check-cast v1, Ldop;

    iget v7, v1, Ldop;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v1, Ldop;->a:I

    iput-wide v5, v1, Ldop;->c:J

    :cond_3
    iget v1, p1, Ldop;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    iget-wide v5, p1, Ldop;->d:J

    iget-wide v7, p2, Ldop;->d:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_4
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 8
    check-cast v1, Ldop;

    iget v7, v1, Ldop;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v1, Ldop;->a:I

    iput-wide v5, v1, Ldop;->d:J

    :cond_5
    iget v1, p1, Ldop;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    iget-wide v5, p1, Ldop;->e:J

    iget-wide v7, p2, Ldop;->e:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_6
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 10
    check-cast v1, Ldop;

    iget v7, v1, Ldop;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v1, Ldop;->a:I

    iput-wide v5, v1, Ldop;->e:J

    :cond_7
    iget v1, p1, Ldop;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    iget-wide v5, p1, Ldop;->f:J

    iget-wide v7, p2, Ldop;->f:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_8

    .line 11
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_8
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 12
    check-cast v1, Ldop;

    iget v7, v1, Ldop;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v1, Ldop;->a:I

    iput-wide v5, v1, Ldop;->f:J

    :cond_9
    iget v1, p1, Ldop;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    iget-wide v5, p1, Ldop;->g:J

    iget-wide v7, p2, Ldop;->g:J

    sub-long/2addr v5, v7

    cmp-long p2, v5, v2

    if-eqz p2, :cond_b

    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_a

    .line 13
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_a
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 14
    check-cast p2, Ldop;

    iget v1, p2, Ldop;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p2, Ldop;->a:I

    iput-wide v5, p2, Ldop;->g:J

    :cond_b
    iget-object p1, p1, Ldop;->h:Ldom;

    if-nez p1, :cond_c

    .line 15
    sget-object p1, Ldom;->d:Ldom;

    :cond_c
    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_d

    .line 16
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_d
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 17
    check-cast p2, Ldop;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Ldop;->h:Ldom;

    iget p1, p2, Ldop;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p2, Ldop;->a:I

    .line 19
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldop;

    invoke-static {p1}, Lbvs;->m(Ldop;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p1, 0x0

    :cond_e
    return-object p1
.end method

.method public final bridge synthetic c(Lder;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Ldop;

    iget-object p1, p1, Ldop;->h:Ldom;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ldom;->d:Ldom;

    :cond_0
    iget-object p1, p1, Ldom;->c:Ljava/lang/String;

    return-object p1
.end method
