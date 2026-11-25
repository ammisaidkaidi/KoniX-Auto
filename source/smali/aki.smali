.class public final Laki;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Laee;

.field public final b:Laej;

.field public final c:Laej;


# direct methods
.method public constructor <init>(Laee;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laki;->a:Laee;

    new-instance v0, Lakf;

    invoke-direct {v0, p1}, Lakf;-><init>(Laee;)V

    new-instance v0, Lakg;

    .line 2
    invoke-direct {v0, p1}, Lakg;-><init>(Laee;)V

    iput-object v0, p0, Laki;->b:Laej;

    new-instance v0, Lakh;

    .line 3
    invoke-direct {v0, p1}, Lakh;-><init>(Laee;)V

    iput-object v0, p0, Laki;->c:Laej;

    return-void
.end method
