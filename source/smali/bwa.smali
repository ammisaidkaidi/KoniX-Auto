.class final Lbwa;
.super Lbvz;
.source "PG"


# static fields
.field public static final a:Lbwa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbwa;

    invoke-direct {v0}, Lbwa;-><init>()V

    sput-object v0, Lbwa;->a:Lbwa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbvz;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lder;
    .locals 5

    .line 1
    check-cast p2, Landroid/os/health/HealthStats;

    .line 2
    sget-object v0, Ldoq;->e:Ldoq;

    .line 3
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    .line 4
    const v1, 0xc351

    invoke-static {p2, v1}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    iget-boolean v3, v0, Lddf;->c:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_0
    iget-object v3, v0, Lddf;->b:Lddk;

    .line 6
    check-cast v3, Ldoq;

    iget v4, v3, Ldoq;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ldoq;->a:I

    iput v2, v3, Ldoq;->b:I

    :cond_1
    const v2, 0xc352

    .line 7
    invoke-static {p2, v2}, Lbvs;->d(Landroid/os/health/HealthStats;I)J

    move-result-wide v2

    long-to-int p2, v2

    if-eqz p2, :cond_3

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_2
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 9
    check-cast v2, Ldoq;

    iget v3, v2, Ldoq;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ldoq;->a:I

    iput p2, v2, Ldoq;->c:I

    :cond_3
    if-eqz p1, :cond_5

    .line 10
    invoke-static {p1}, Lbvs;->g(Ljava/lang/String;)Ldom;

    move-result-object p1

    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_4
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 11
    check-cast p2, Ldoq;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Ldoq;->d:Ldom;

    iget p1, p2, Ldoq;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p2, Ldoq;->a:I

    .line 13
    :cond_5
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldoq;

    invoke-static {p1}, Lbvs;->n(Ldoq;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    :cond_6
    return-object p1
.end method

.method public final synthetic b(Lder;Lder;)Lder;
    .locals 5

    .line 1
    check-cast p1, Ldoq;

    check-cast p2, Ldoq;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    sget-object v0, Ldoq;->e:Ldoq;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget v1, p1, Ldoq;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p1, Ldoq;->b:I

    iget v3, p2, Ldoq;->b:I

    sub-int/2addr v1, v3

    if-eqz v1, :cond_1

    iget-boolean v3, v0, Lddf;->c:Z

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_0
    iget-object v3, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v3, Ldoq;

    iget v4, v3, Ldoq;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ldoq;->a:I

    iput v1, v3, Ldoq;->b:I

    :cond_1
    iget v1, p1, Ldoq;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget v1, p1, Ldoq;->c:I

    iget p2, p2, Ldoq;->c:I

    sub-int/2addr v1, p2

    if-eqz v1, :cond_3

    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_2
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 6
    check-cast p2, Ldoq;

    iget v3, p2, Ldoq;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p2, Ldoq;->a:I

    iput v1, p2, Ldoq;->c:I

    :cond_3
    iget-object p1, p1, Ldoq;->d:Ldom;

    if-nez p1, :cond_4

    .line 7
    sget-object p1, Ldom;->d:Ldom;

    :cond_4
    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_5

    .line 8
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_5
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 9
    check-cast p2, Ldoq;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Ldoq;->d:Ldom;

    iget p1, p2, Ldoq;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p2, Ldoq;->a:I

    .line 11
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldoq;

    invoke-static {p1}, Lbvs;->n(Ldoq;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    :cond_6
    return-object p1
.end method

.method public final bridge synthetic c(Lder;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Ldoq;

    iget-object p1, p1, Ldoq;->d:Ldom;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ldom;->d:Ldom;

    :cond_0
    iget-object p1, p1, Ldom;->c:Ljava/lang/String;

    return-object p1
.end method
