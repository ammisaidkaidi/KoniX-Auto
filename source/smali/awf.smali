.class final Lawf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbdr;


# instance fields
.field final synthetic a:Lawg;

.field final synthetic b:Lawh;


# direct methods
.method public constructor <init>(Lawh;Lawg;)V
    .locals 0

    iput-object p1, p0, Lawf;->b:Lawh;

    iput-object p2, p0, Lawf;->a:Lawg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(I)V
    .locals 0

    return-void
.end method

.method public final b(Lbdt;)V
    .locals 4

    .line 1
    sget-object v0, Lclc;->g:Lclc;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-object v1, p1, Lbdt;->a:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_0
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v2, Lclc;

    iget v3, v2, Lclc;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lclc;->a:I

    iput-object v1, v2, Lclc;->b:Ljava/lang/String;

    iget-object v1, p1, Lbdt;->b:Ljava/lang/String;

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lclc;->a:I

    iput-object v1, v2, Lclc;->d:Ljava/lang/String;

    iget-object v1, p1, Lbdt;->c:Ljava/lang/String;

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lclc;->a:I

    iput-object v1, v2, Lclc;->c:Ljava/lang/String;

    const/16 v1, 0x8

    iput v1, v2, Lclc;->e:I

    or-int/2addr v1, v3

    iput v1, v2, Lclc;->a:I

    iget p1, p1, Lbdt;->e:I

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lclc;->f:I

    or-int/lit8 p1, v1, 0x10

    iput p1, v2, Lclc;->a:I

    :cond_1
    iget-object p1, p0, Lawf;->b:Lawh;

    iget-object v1, p0, Lawf;->a:Lawg;

    .line 5
    invoke-virtual {v1}, Lawg;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v1, v2, v0}, Lawh;->j(Ljava/lang/String;ILder;)V

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method
