.class public final Lbos;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbjy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Lbjq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lbor;

    invoke-direct {v0}, Lbor;-><init>()V

    sput-object v0, Lbos;->b:Lbjq;

    new-instance v1, Lbjy;

    const-string v2, "Phenotype.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lbjy;-><init>(Ljava/lang/String;Lbjq;[B)V

    sput-object v1, Lbos;->a:Lbjy;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lbkc;
    .locals 4

    .line 1
    new-instance v0, Lbkc;

    sget-object v1, Lbos;->a:Lbjy;

    sget-object v2, Lbjw;->a:Lbjv;

    sget-object v3, Lbkb;->a:Lbkb;

    invoke-direct {v0, p0, v1, v2, v3}, Lbkc;-><init>(Landroid/content/Context;Lbjy;Lbjw;Lbkb;)V

    return-object v0
.end method
