.class public final Laur;
.super Latq;
.source "PG"


# direct methods
.method public constructor <init>(Laue;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Latq;-><init>(ILaue;)V

    return-void
.end method


# virtual methods
.method public final c([BJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Latq;->i:Laue;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Laue;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Latq;->i:Laue;

    invoke-virtual {v0}, Laue;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Latq;->i:Laue;

    invoke-virtual {v0}, Laue;->d()V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Latq;->i:Laue;

    invoke-virtual {v0, p1}, Laue;->e(Z)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Latq;->i:Laue;

    invoke-virtual {v0}, Laue;->f()V

    return-void
.end method
