.class public final Lagh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lagh;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:Lagj;

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lagg;

    invoke-direct {v0}, Lagg;-><init>()V

    new-instance v1, Lagh;

    .line 2
    invoke-direct {v1, v0}, Lagh;-><init>(Lagg;)V

    sput-object v1, Lagh;->a:Lagh;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lagh;->i:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lagh;->f:J

    iput-wide v0, p0, Lagh;->g:J

    new-instance v0, Lagj;

    invoke-direct {v0}, Lagj;-><init>()V

    iput-object v0, p0, Lagh;->h:Lagj;

    return-void
.end method

.method public constructor <init>(Lagg;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lagh;->i:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lagh;->f:J

    iput-wide v1, p0, Lagh;->g:J

    new-instance v3, Lagj;

    invoke-direct {v3}, Lagj;-><init>()V

    iput-object v3, p0, Lagh;->h:Lagj;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lagh;->b:Z

    iput-boolean v3, p0, Lagh;->c:Z

    iput v0, p0, Lagh;->i:I

    iput-boolean v3, p0, Lagh;->d:Z

    iput-boolean v3, p0, Lagh;->e:Z

    iget-object p1, p1, Lagg;->a:Lagj;

    iput-object p1, p0, Lagh;->h:Lagj;

    iput-wide v1, p0, Lagh;->f:J

    iput-wide v1, p0, Lagh;->g:J

    return-void
.end method

.method public constructor <init>(Lagh;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lagh;->i:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lagh;->f:J

    iput-wide v0, p0, Lagh;->g:J

    new-instance v0, Lagj;

    invoke-direct {v0}, Lagj;-><init>()V

    iput-object v0, p0, Lagh;->h:Lagj;

    .line 4
    iget-boolean v0, p1, Lagh;->b:Z

    iput-boolean v0, p0, Lagh;->b:Z

    .line 5
    iget-boolean v0, p1, Lagh;->c:Z

    iput-boolean v0, p0, Lagh;->c:Z

    .line 6
    iget v0, p1, Lagh;->i:I

    iput v0, p0, Lagh;->i:I

    .line 7
    iget-boolean v0, p1, Lagh;->d:Z

    iput-boolean v0, p0, Lagh;->d:Z

    .line 8
    iget-boolean v0, p1, Lagh;->e:Z

    iput-boolean v0, p0, Lagh;->e:Z

    .line 9
    iget-object p1, p1, Lagh;->h:Lagj;

    iput-object p1, p0, Lagh;->h:Lagj;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lagh;->h:Lagj;

    invoke-virtual {v0}, Lagj;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lagh;

    iget-boolean v1, p0, Lagh;->b:Z

    iget-boolean v2, p1, Lagh;->b:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lagh;->c:Z

    iget-boolean v2, p1, Lagh;->c:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lagh;->d:Z

    iget-boolean v2, p1, Lagh;->d:Z

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget-boolean v1, p0, Lagh;->e:Z

    iget-boolean v2, p1, Lagh;->e:Z

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget-wide v1, p0, Lagh;->f:J

    iget-wide v3, p1, Lagh;->f:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    return v0

    :cond_6
    iget-wide v1, p0, Lagh;->g:J

    iget-wide v3, p1, Lagh;->g:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    return v0

    :cond_7
    iget v1, p0, Lagh;->i:I

    iget v2, p1, Lagh;->i:I

    if-eq v1, v2, :cond_8

    return v0

    :cond_8
    iget-object v0, p0, Lagh;->h:Lagj;

    iget-object p1, p1, Lagh;->h:Lagj;

    .line 2
    invoke-virtual {v0, p1}, Lagj;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1
    :cond_9
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 9

    .line 2
    iget v0, p0, Lagh;->i:I

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lagh;->b:Z

    iget-boolean v2, p0, Lagh;->c:Z

    iget-boolean v3, p0, Lagh;->d:Z

    iget-boolean v4, p0, Lagh;->e:Z

    iget-wide v5, p0, Lagh;->f:J

    iget-wide v7, p0, Lagh;->g:J

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v5, v1

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v7, v1

    xor-long/2addr v1, v7

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lagh;->h:Lagj;

    .line 1
    invoke-virtual {v1}, Lagj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 2
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
