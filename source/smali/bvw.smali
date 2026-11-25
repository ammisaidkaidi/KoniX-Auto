.class final Lbvw;
.super Lbvz;
.source "PG"


# static fields
.field public static final a:Lbvw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbvw;

    invoke-direct {v0}, Lbvw;-><init>()V

    sput-object v0, Lbvw;->a:Lbvw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbvz;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lder;
    .locals 4

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ldol;->d:Ldol;

    .line 4
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-boolean v1, v0, Lddf;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_1
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 5
    check-cast v1, Ldol;

    iget v3, v1, Ldol;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Ldol;->a:I

    iput p2, v1, Ldol;->b:I

    if-eqz p1, :cond_3

    .line 6
    invoke-static {p1}, Lbvs;->g(Ljava/lang/String;)Ldom;

    move-result-object p1

    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_2
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 8
    check-cast p2, Ldol;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Ldol;->c:Ldom;

    iget p1, p2, Ldol;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p2, Ldol;->a:I

    .line 10
    :cond_3
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldol;

    .line 2
    :goto_0
    return-object p1
.end method

.method public final synthetic b(Lder;Lder;)Lder;
    .locals 4

    .line 1
    check-cast p1, Ldol;

    check-cast p2, Ldol;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Ldol;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Ldol;->d:Ldol;

    .line 2
    invoke-virtual {v1}, Lddk;->n()Lddf;

    move-result-object v1

    iget-object v2, p1, Ldol;->c:Ldom;

    if-nez v2, :cond_1

    .line 3
    sget-object v2, Ldom;->d:Ldom;

    :cond_1
    iget-boolean v3, v1, Lddf;->c:Z

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v1}, Lddf;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lddf;->c:Z

    :cond_2
    iget-object v3, v1, Lddf;->b:Lddk;

    .line 5
    check-cast v3, Ldol;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Ldol;->c:Ldom;

    iget v2, v3, Ldol;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v3, Ldol;->a:I

    iget p1, p1, Ldol;->b:I

    iget p2, p2, Ldol;->b:I

    sub-int/2addr p1, p2

    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    or-int/lit8 p2, v2, 0x1

    iput p2, v3, Ldol;->a:I

    iput p1, v3, Ldol;->b:I

    .line 7
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldol;

    return-object p1

    :cond_4
    move-object p1, v0

    goto :goto_0

    :cond_5
    nop

    .line 1
    :goto_0
    return-object p1
.end method

.method public final bridge synthetic c(Lder;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Ldol;

    iget-object p1, p1, Ldol;->c:Ldom;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ldom;->d:Ldom;

    :cond_0
    iget-object p1, p1, Ldom;->c:Ljava/lang/String;

    return-object p1
.end method
