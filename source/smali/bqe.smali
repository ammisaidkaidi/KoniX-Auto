.class public final Lbqe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbqe;->a:I

    iput v0, p0, Lbqe;->b:I

    iput v0, p0, Lbqe;->c:I

    iput v0, p0, Lbqe;->d:I

    iput v0, p0, Lbqe;->e:I

    iput v0, p0, Lbqe;->f:I

    iput v0, p0, Lbqe;->g:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    iget v0, p0, Lbqe;->e:I

    iget v1, p0, Lbqe;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final b()Z
    .locals 4

    iget v0, p0, Lbqe;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lbqe;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lbqe;->e:I

    if-eqz v0, :cond_3

    iget v0, p0, Lbqe;->g:I

    if-eq v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget v2, p0, Lbqe;->a:I

    if-lez v2, :cond_2

    iget v3, p0, Lbqe;->c:I

    if-ne v3, v1, :cond_2

    if-nez v0, :cond_2

    iget v0, p0, Lbqe;->b:I

    if-eqz v0, :cond_3

    :cond_2
    if-lez v2, :cond_4

    iget v0, p0, Lbqe;->c:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lbqe;->b:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbqe;->a()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
