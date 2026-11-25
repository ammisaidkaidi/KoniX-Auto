.class public final Laof;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laoh;


# instance fields
.field public a:Lps;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Laof;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laof;->c:Z

    new-instance v0, Lpq;

    invoke-direct {v0}, Lpq;-><init>()V

    iput-object v0, p0, Laof;->a:Lps;

    return-void
.end method

.method public static d(Lra;)Laof;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Laof;

    .line 3
    invoke-direct {v0}, Laof;-><init>()V

    .line 4
    check-cast p0, Landroid/support/v7/widget/GridLayoutManager;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-lez v1, :cond_1

    .line 5
    iput v1, v0, Laof;->b:I

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v1, v0, Laof;->c:Z

    iget-object p0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Lps;

    iput-object p0, v0, Laof;->a:Lps;

    return-object v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 5
    const-string v0, "Span count must be bigger than 0"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 1
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 2
    const-string v0, "GridLayoutManager required."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Laof;->b:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Laof;->c:Z

    return v0
.end method
