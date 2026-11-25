.class public final Lbmc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[Lbjb;

.field public final b:Z

.field public final c:I

.field final synthetic d:Lbmb;


# direct methods
.method public constructor <init>(Lbmb;[Lbjb;ZI)V
    .locals 0

    iput-object p1, p0, Lbmc;->d:Lbmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbmc;->a:[Lbjb;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lbmc;->b:Z

    iput p4, p0, Lbmc;->c:I

    return-void
.end method

.method public static a()Lbmb;
    .locals 1

    new-instance v0, Lbmb;

    invoke-direct {v0}, Lbmb;-><init>()V

    return-object v0
.end method
