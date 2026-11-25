.class public final Ldel;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldek;


# direct methods
.method private constructor <init>(Ldgc;Ljava/lang/Object;Ldgc;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldek;

    invoke-direct {v0, p1, p2, p3, p4}, Ldek;-><init>(Ldgc;Ljava/lang/Object;Ldgc;Ljava/lang/Object;)V

    iput-object v0, p0, Ldel;->a:Ldek;

    return-void
.end method

.method public static a(Ldek;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Ldek;->a:Ldgc;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lddb;->a(Ldgc;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Ldek;->c:Ldgc;

    .line 2
    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lddb;->a(Ldgc;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(Ldgc;Ljava/lang/Object;Ldgc;Ljava/lang/Object;)Ldel;
    .locals 1

    new-instance v0, Ldel;

    invoke-direct {v0, p0, p1, p2, p3}, Ldel;-><init>(Ldgc;Ljava/lang/Object;Ldgc;Ljava/lang/Object;)V

    return-object v0
.end method

.method static c(Ldcu;Ldek;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ldek;->a:Ldgc;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lddb;->g(Ldcu;Ldgc;ILjava/lang/Object;)V

    iget-object p1, p1, Ldek;->c:Ldgc;

    .line 2
    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lddb;->g(Ldcu;Ldgc;ILjava/lang/Object;)V

    return-void
.end method
