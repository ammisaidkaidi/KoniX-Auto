.class public final Lml;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhv;


# instance fields
.field a:I

.field final synthetic b:Lmm;

.field private c:Z


# direct methods
.method protected constructor <init>(Lmm;)V
    .locals 0

    iput-object p1, p0, Lml;->b:Lmm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lml;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lml;->c:Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lml;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lml;->b:Lmm;

    const/4 v1, 0x0

    iput-object v1, v0, Lmm;->f:Lbew;

    iget v1, p0, Lml;->a:I

    invoke-static {v0, v1}, Lmm;->b(Lmm;I)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lml;->b:Lmm;

    invoke-static {v0}, Lmm;->d(Lmm;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lml;->c:Z

    return-void
.end method

.method public final d(Lbew;I)V
    .locals 1

    iget-object v0, p0, Lml;->b:Lmm;

    iput-object p1, v0, Lmm;->f:Lbew;

    iput p2, p0, Lml;->a:I

    return-void
.end method
