.class final Lbe;
.super Lbf;
.source "PG"


# instance fields
.field private final c:Z

.field private d:Z

.field private e:Lbw;


# direct methods
.method public constructor <init>(Ldl;Lxv;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lbf;-><init>(Ldl;Lxv;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbe;->d:Z

    iput-boolean p3, p0, Lbe;->c:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)Lbw;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lbe;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbf;->a:Ldl;

    iget-object v1, v0, Ldl;->a:Lbr;

    iget v0, v0, Ldl;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lbe;->c:Z

    invoke-static {p1, v1, v0, v2}, Lr;->e(Landroid/content/Context;Lbr;ZZ)Lbw;

    move-result-object p1

    iput-object p1, p0, Lbe;->e:Lbw;

    iput-boolean v3, p0, Lbe;->d:Z

    return-object p1

    :cond_1
    iget-object p1, p0, Lbe;->e:Lbw;

    return-object p1
.end method
