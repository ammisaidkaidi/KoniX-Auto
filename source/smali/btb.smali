.class public final Lbtb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbtd;


# instance fields
.field private final a:Lbik;


# direct methods
.method public constructor <init>(Lbik;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtb;->a:Lbik;

    return-void
.end method


# virtual methods
.method public final a(Ldgn;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lbtb;->a:Lbik;

    invoke-virtual {v0, p1}, Lbik;->a(Lder;)Lbih;

    move-result-object p1

    iget-object v0, p1, Lbih;->j:Lddh;

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_0
    iget-object v0, v0, Lddh;->b:Lddk;

    .line 3
    check-cast v0, Ldgt;

    sget-object v1, Ldgt;->j:Ldgt;

    iget v1, v0, Ldgt;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Ldgt;->a:I

    const/4 v1, 0x1

    iput v1, v0, Ldgt;->e:I

    .line 4
    invoke-virtual {p1}, Lbih;->a()Lho;

    :cond_1
    return-void
.end method
