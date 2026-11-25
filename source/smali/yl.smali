.class public final Lyl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lez;->m(Ljava/lang/Object;)V

    iput-object p1, p0, Lyl;->a:Landroid/net/Uri;

    iput p2, p0, Lyl;->b:I

    iput p3, p0, Lyl;->c:I

    iput-boolean p4, p0, Lyl;->d:Z

    iput p5, p0, Lyl;->e:I

    return-void
.end method
