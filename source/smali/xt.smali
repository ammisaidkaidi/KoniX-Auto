.class public Lxt;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ldpd;J)Ldpd;
    .locals 5

    .line 1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lddf;

    .line 3
    invoke-virtual {v0, p0}, Lddf;->n(Lddk;)V

    iget-object p0, v0, Lddf;->b:Lddk;

    .line 4
    check-cast p0, Ldpd;

    iget v1, p0, Ldpd;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-wide v3, p0, Ldpd;->c:J

    sub-long/2addr v3, p1

    iget-boolean p0, v0, Lddf;->c:Z

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_0
    iget-object p0, v0, Lddf;->b:Lddk;

    .line 6
    check-cast p0, Ldpd;

    iget v1, p0, Ldpd;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Ldpd;->a:I

    iput-wide v3, p0, Ldpd;->c:J

    :cond_1
    iget-object p0, v0, Lddf;->b:Lddk;

    .line 7
    check-cast p0, Ldpd;

    iget v1, p0, Ldpd;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget-wide v3, p0, Ldpd;->d:J

    sub-long/2addr v3, p1

    iget-boolean p0, v0, Lddf;->c:Z

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_2
    iget-object p0, v0, Lddf;->b:Lddk;

    .line 9
    check-cast p0, Ldpd;

    iget v1, p0, Ldpd;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Ldpd;->a:I

    iput-wide v3, p0, Ldpd;->d:J

    :cond_3
    iget-object p0, v0, Lddf;->b:Lddk;

    .line 10
    check-cast p0, Ldpd;

    iget v1, p0, Ldpd;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    iget-wide v3, p0, Ldpd;->e:J

    sub-long/2addr v3, p1

    iget-boolean p0, v0, Lddf;->c:Z

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_4
    iget-object p0, v0, Lddf;->b:Lddk;

    .line 12
    check-cast p0, Ldpd;

    iget p1, p0, Ldpd;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Ldpd;->a:I

    iput-wide v3, p0, Ldpd;->e:J

    .line 13
    :cond_5
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object p0

    check-cast p0, Ldpd;

    return-object p0
.end method
