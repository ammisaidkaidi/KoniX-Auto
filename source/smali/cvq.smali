.class final Lcvq;
.super Lcvd;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/logging/Level;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcvd;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcvq;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcvq;->b:Z

    iput-object p4, p0, Lcvq;->c:Ljava/util/logging/Level;

    return-void
.end method


# virtual methods
.method public final c(Lcub;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcub;->i()Lcug;

    move-result-object v0

    sget-object v1, Lctw;->a:Lctt;

    invoke-virtual {v0, v1}, Lcug;->d(Lctt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcvd;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcub;->f()Lcti;

    move-result-object v0

    invoke-virtual {v0}, Lcti;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcvq;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1, v0}, Lcvs;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcvq;->b:Z

    iget-object v2, p0, Lcvq;->c:Ljava/util/logging/Level;

    .line 6
    invoke-static {p1, v0, v1, v2}, Lcvr;->e(Lcub;Ljava/lang/String;ZLjava/util/logging/Level;)V

    return-void
.end method

.method public final d(Ljava/util/logging/Level;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
