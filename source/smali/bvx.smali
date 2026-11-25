.class public final Lbvx;
.super Lbvz;
.source "PG"


# static fields
.field public static final a:Lbvx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbvx;

    invoke-direct {v0}, Lbvx;-><init>()V

    sput-object v0, Lbvx;->a:Lbvx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbvz;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lder;
    .locals 4

    .line 1
    check-cast p2, Landroid/os/health/HealthStats;

    .line 2
    sget-object v0, Ldon;->e:Ldon;

    .line 3
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    sget-object v1, Lbwa;->a:Lbwa;

    .line 4
    const v2, 0x9c41

    invoke-static {p2, v2}, Lbvs;->f(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbvz;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->B(Ljava/lang/Iterable;)V

    sget-object v1, Lbvw;->a:Lbvw;

    if-eqz p2, :cond_0

    .line 5
    const v2, 0x9c42

    invoke-virtual {p2, v2}, Landroid/os/health/HealthStats;->hasMeasurements(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/os/health/HealthStats;->getMeasurements(I)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 6
    :goto_0
    invoke-virtual {v1, p2}, Lbvz;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lddf;->C(Ljava/lang/Iterable;)V

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p1}, Lbvs;->g(Ljava/lang/String;)Ldom;

    move-result-object p1

    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lddf;->k()V

    const/4 p2, 0x0

    iput-boolean p2, v0, Lddf;->c:Z

    :cond_1
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 8
    check-cast p2, Ldon;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Ldon;->d:Ldom;

    iget p1, p2, Ldon;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Ldon;->a:I

    .line 10
    :cond_2
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldon;

    .line 11
    invoke-static {p1}, Lbvs;->l(Ldon;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :cond_3
    return-object p1
.end method

.method public final synthetic b(Lder;Lder;)Lder;
    .locals 4

    .line 1
    check-cast p1, Ldon;

    check-cast p2, Ldon;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    sget-object v0, Ldon;->e:Ldon;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    sget-object v1, Lbwa;->a:Lbwa;

    iget-object v2, p1, Ldon;->b:Lddr;

    iget-object v3, p2, Ldon;->b:Lddr;

    .line 3
    invoke-virtual {v1, v2, v3}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lddf;->B(Ljava/lang/Iterable;)V

    sget-object v1, Lbvw;->a:Lbvw;

    iget-object v2, p1, Ldon;->c:Lddr;

    iget-object p2, p2, Ldon;->c:Lddr;

    .line 4
    invoke-virtual {v1, v2, p2}, Lbvz;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lddf;->C(Ljava/lang/Iterable;)V

    iget-object p1, p1, Ldon;->d:Ldom;

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Ldom;->d:Ldom;

    :cond_0
    iget-boolean p2, v0, Lddf;->c:Z

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {v0}, Lddf;->k()V

    const/4 p2, 0x0

    iput-boolean p2, v0, Lddf;->c:Z

    :cond_1
    iget-object p2, v0, Lddf;->b:Lddk;

    .line 7
    check-cast p2, Ldon;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Ldon;->d:Ldom;

    iget p1, p2, Ldon;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Ldon;->a:I

    .line 9
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldon;

    .line 10
    invoke-static {p1}, Lbvs;->l(Ldon;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method public final bridge synthetic c(Lder;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Ldon;

    iget-object p1, p1, Ldon;->d:Ldom;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ldom;->d:Ldom;

    :cond_0
    iget-object p1, p1, Ldom;->c:Ljava/lang/String;

    return-object p1
.end method
