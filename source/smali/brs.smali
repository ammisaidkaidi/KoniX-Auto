.class public final Lbrs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Latz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Latz;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Latz;-><init>(I)V

    sput-object v0, Lbrs;->a:Latz;

    return-void
.end method
