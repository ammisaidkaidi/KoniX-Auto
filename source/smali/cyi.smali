.class final Lcyi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcyp;

.field final b:Ldag;


# direct methods
.method public constructor <init>(Lcyp;Ldag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyi;->a:Lcyp;

    iput-object p2, p0, Lcyi;->b:Ldag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcyi;->a:Lcyp;

    sget-boolean v1, Lcyp;->d:Z

    .line 2
    iget-object v0, v0, Lcyp;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcyi;->b:Ldag;

    .line 3
    invoke-static {v0}, Lcyp;->f(Ldag;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcyp;->e:Lcyc;

    iget-object v2, p0, Lcyi;->a:Lcyp;

    .line 4
    invoke-virtual {v1, v2, p0, v0}, Lcyc;->d(Lcyp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcyi;->a:Lcyp;

    .line 5
    invoke-static {v0}, Lcyp;->h(Lcyp;)V

    :cond_1
    return-void
.end method
