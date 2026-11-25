.class final Lkv;
.super Lhw;
.source "PG"


# instance fields
.field final synthetic a:Lkw;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lkw;)V
    .locals 0

    iput-object p1, p0, Lkv;->a:Lkw;

    invoke-direct {p0}, Lhw;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkv;->b:Z

    iput p1, p0, Lkv;->c:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lkv;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkv;->c:I

    iget-object v1, p0, Lkv;->a:Lkw;

    iget-object v1, v1, Lkw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lkv;->a:Lkw;

    iget-object v0, v0, Lkw;->b:Lhv;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lhv;->b()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lkv;->c:I

    iput-boolean v0, p0, Lkv;->b:Z

    iget-object v1, p0, Lkv;->a:Lkw;

    iput-boolean v0, v1, Lkw;->c:Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkv;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkv;->b:Z

    iget-object v0, p0, Lkv;->a:Lkw;

    iget-object v0, v0, Lkw;->b:Lhv;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhv;->c()V

    :cond_1
    return-void
.end method
