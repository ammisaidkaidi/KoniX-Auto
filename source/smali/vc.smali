.class final Lvc;
.super Lvf;
.source "PG"


# instance fields
.field final synthetic a:Lvd;


# direct methods
.method public constructor <init>(Lvd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvc;->a:Lvd;

    iget p1, p1, Lvd;->b:I

    invoke-direct {p0, p1}, Lvf;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lvc;->a:Lvd;

    invoke-virtual {v0, p1}, Lvd;->b(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvc;->a:Lvd;

    invoke-virtual {v0, p1}, Lvd;->c(I)V

    return-void
.end method
