.class public final Lapn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Laqw;

.field public final b:Lj$/util/function/Consumer;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laqw;Ljava/lang/Runnable;Lj$/util/function/Consumer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lapn;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lapn;->d:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lapn;->a:Laqw;

    iput-object p4, p0, Lapn;->b:Lj$/util/function/Consumer;

    new-instance p2, Laqx;

    invoke-direct {p2, p1}, Laqx;-><init>(Landroid/content/Context;)V

    new-instance p4, Lapm;

    const/4 v1, 0x0

    invoke-direct {p4, p0, p3, v1}, Lapm;-><init>(Lapn;Ljava/lang/Runnable;I)V

    iput-object p4, p2, Laqx;->a:Lj$/util/function/Consumer;

    new-instance p2, Lapo;

    .line 2
    invoke-direct {p2, p1}, Lapo;-><init>(Landroid/content/Context;)V

    new-instance p1, Lapm;

    const/4 p4, 0x1

    invoke-direct {p1, p0, p3, p4}, Lapm;-><init>(Lapn;Ljava/lang/Runnable;I)V

    iput-object p1, p2, Lapo;->a:Lj$/util/function/Consumer;

    .line 3
    throw v0
.end method
