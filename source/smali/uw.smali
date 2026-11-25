.class final Luw;
.super Lvf;
.source "PG"


# instance fields
.field final synthetic a:Lvb;


# direct methods
.method public constructor <init>(Lvb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luw;->a:Lvb;

    iget p1, p1, Lvb;->j:I

    invoke-direct {p0, p1}, Lvf;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Luw;->a:Lvb;

    invoke-virtual {v0, p1}, Lvi;->f(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Luw;->a:Lvb;

    invoke-virtual {v0, p1}, Lvi;->g(I)Ljava/lang/Object;

    return-void
.end method
