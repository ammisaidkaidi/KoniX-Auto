.class final Lawc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbdr;


# instance fields
.field final synthetic a:Lawo;

.field final synthetic b:Lawh;


# direct methods
.method public constructor <init>(Lawh;Lawo;)V
    .locals 0

    iput-object p1, p0, Lawc;->b:Lawh;

    iput-object p2, p0, Lawc;->a:Lawo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(I)V
    .locals 0

    return-void
.end method

.method public final b(Lbdt;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lawc;->b:Lawh;

    iget-object v0, p1, Lawh;->e:Lazy;

    iget-object v1, p1, Lawh;->c:Landroid/content/Context;

    sget-object v2, Lawp;->b:Lawp;

    iget-object v3, p0, Lawc;->a:Lawo;

    iget-object p1, p0, Lawc;->b:Lawh;

    iget-object p1, p1, Lawh;->j:Lawy;

    .line 2
    invoke-virtual {p1}, Lawy;->b()I

    move-result v4

    iget-object p1, p0, Lawc;->b:Lawh;

    iget-object p1, p1, Lawh;->j:Lawy;

    .line 3
    invoke-virtual {p1}, Lawy;->a()I

    move-result v5

    .line 1
    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lazy;->d(Landroid/content/Context;Lawp;Lawo;IIZ)V

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method
