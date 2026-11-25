.class public final synthetic Lcat;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcau;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ldpz;


# direct methods
.method public synthetic constructor <init>(Lcau;Ljava/lang/String;JLdpz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcat;->a:Lcau;

    iput-object p2, p0, Lcat;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcat;->c:J

    iput-object p5, p0, Lcat;->d:Ldpz;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 7

    .line 1
    iget-object v0, p0, Lcat;->a:Lcau;

    iget-object v1, p0, Lcat;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcat;->c:J

    iget-object v4, p0, Lcat;->d:Ldpz;

    iget-object v5, v0, Lcau;->e:Lcol;

    invoke-interface {v5}, Lcol;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcbu;

    invoke-virtual {v5}, Lcbu;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 9
    sget-object v0, Ldad;->a:Ldag;

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcau;->d:Ldgz;

    .line 2
    invoke-interface {v5}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcap;

    iget-object v5, v5, Lcap;->c:Lcoc;

    iget-object v0, v0, Lcau;->b:Lbwn;

    .line 3
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v5

    const/4 v6, 0x1

    .line 4
    invoke-virtual {v5, v6}, Lbwi;->b(Z)V

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lbwi;->d:Ljava/lang/Long;

    .line 6
    invoke-virtual {v5, v4}, Lbwi;->d(Ldpz;)V

    iput-object v1, v5, Lbwi;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v5, Lbwi;->b:Ldot;

    .line 7
    invoke-virtual {v5}, Lbwi;->a()Lbwj;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object v0

    .line 9
    :goto_0
    return-object v0
.end method
