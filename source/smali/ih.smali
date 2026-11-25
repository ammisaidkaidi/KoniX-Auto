.class public Lih;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lih;


# instance fields
.field private final b:Lig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lif;->c:Lih;

    sput-object v0, Lih;->a:Lih;

    return-void

    .line 2
    :cond_0
    sget-object v0, Lig;->d:Lih;

    sput-object v0, Lih;->a:Lih;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lif;

    invoke-direct {v0, p0, p1}, Lif;-><init>(Lih;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Lih;->b:Lig;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lie;

    invoke-direct {v0, p0, p1}, Lie;-><init>(Lih;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lid;

    invoke-direct {v0, p0, p1}, Lid;-><init>(Lih;Landroid/view/WindowInsets;)V

    goto :goto_0
.end method

.method public constructor <init>(Lih;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lig;

    invoke-direct {p1, p0}, Lig;-><init>(Lih;)V

    iput-object p1, p0, Lih;->b:Lig;

    return-void
.end method

.method static e(Leh;IIII)Leh;
    .locals 5

    .line 1
    iget v0, p0, Leh;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    iget v2, p0, Leh;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    iget v3, p0, Leh;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    iget v4, p0, Leh;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Leh;->b(IIII)Leh;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/view/WindowInsets;)Lih;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lih;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lih;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/view/WindowInsets;Landroid/view/View;)Lih;
    .locals 1

    .line 1
    new-instance v0, Lih;

    invoke-static {p0}, Lez;->m(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lih;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lhs;->F(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Lhs;->l(Landroid/view/View;)Lih;

    move-result-object p0

    invoke-virtual {v0, p0}, Lih;->p(Lih;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lih;->n(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0}, Lig;->a()Leh;

    move-result-object v0

    iget v0, v0, Leh;->e:I

    return v0
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0}, Lig;->a()Leh;

    move-result-object v0

    iget v0, v0, Leh;->b:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0}, Lig;->a()Leh;

    move-result-object v0

    iget v0, v0, Leh;->d:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0}, Lig;->a()Leh;

    move-result-object v0

    iget v0, v0, Leh;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lih;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lih;

    iget-object v0, p0, Lih;->b:Lig;

    .line 3
    iget-object p1, p1, Lih;->b:Lig;

    .line 4
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lih;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0}, Lig;->m()Lih;

    move-result-object v0

    return-object v0
.end method

.method public g()Lih;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0}, Lig;->h()Lih;

    move-result-object v0

    return-object v0
.end method

.method public h()Lih;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0}, Lig;->i()Lih;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lig;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(IIII)Lih;
    .locals 1

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lig;->b(IIII)Lih;

    move-result-object p1

    return-object p1
.end method

.method public j(IIII)Lih;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lhx;

    invoke-direct {v0, p0}, Lhx;-><init>(Lih;)V

    invoke-static {p1, p2, p3, p4}, Leh;->b(IIII)Leh;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lhx;->b(Leh;)V

    .line 3
    invoke-virtual {v0}, Lhx;->a()Lih;

    move-result-object p1

    return-object p1
.end method

.method public m()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    instance-of v1, v0, Lib;

    if-eqz v1, :cond_0

    check-cast v0, Lib;

    iget-object v0, v0, Lib;->a:Landroid/view/WindowInsets;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0, p1}, Lig;->c(Landroid/view/View;)V

    return-void
.end method

.method public o([Leh;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lih;->b:Lig;

    invoke-virtual {p1}, Lig;->e()V

    return-void
.end method

.method public p(Lih;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lih;->b:Lig;

    invoke-virtual {p1}, Lig;->f()V

    return-void
.end method

.method public q(Leh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0, p1}, Lig;->j(Leh;)V

    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lih;->b:Lig;

    invoke-virtual {v0}, Lig;->k()Z

    move-result v0

    return v0
.end method
