.class Lig;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final d:Lih;


# instance fields
.field final e:Lih;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhx;

    invoke-direct {v0}, Lhx;-><init>()V

    .line 2
    invoke-virtual {v0}, Lhx;->a()Lih;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lih;->f()Lih;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lih;->g()Lih;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lih;->h()Lih;

    move-result-object v0

    sput-object v0, Lig;->d:Lih;

    return-void
.end method

.method public constructor <init>(Lih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lig;->e:Lih;

    return-void
.end method


# virtual methods
.method public a()Leh;
    .locals 1

    sget-object v0, Leh;->a:Leh;

    return-object v0
.end method

.method public b(IIII)Lih;
    .locals 0

    sget-object p1, Lig;->d:Lih;

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lig;

    .line 3
    invoke-virtual {p0}, Lig;->d()Z

    move-result v1

    invoke-virtual {p1}, Lig;->d()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lig;->k()Z

    move-result v1

    invoke-virtual {p1}, Lig;->k()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lig;->a()Leh;

    move-result-object v1

    invoke-virtual {p1}, Lig;->a()Leh;

    move-result-object v3

    .line 6
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lig;->g()Leh;

    move-result-object v1

    invoke-virtual {p1}, Lig;->g()Leh;

    move-result-object v3

    .line 8
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lig;->l()Lgq;

    move-result-object v1

    invoke-virtual {p1}, Lig;->l()Lgq;

    move-result-object p1

    .line 10
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Leh;
    .locals 1

    sget-object v0, Leh;->a:Leh;

    return-object v0
.end method

.method public h()Lih;
    .locals 1

    iget-object v0, p0, Lig;->e:Lih;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lig;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lig;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lig;->a()Leh;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lig;->g()Leh;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lig;->l()Lgq;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Lih;
    .locals 1

    iget-object v0, p0, Lig;->e:Lih;

    return-object v0
.end method

.method public j(Leh;)V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lgq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lih;
    .locals 1

    iget-object v0, p0, Lig;->e:Lih;

    return-object v0
.end method
