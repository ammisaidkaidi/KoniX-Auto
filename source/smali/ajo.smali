.class public final Lajo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static e:Lajo;


# instance fields
.field public final a:Lajf;

.field public final b:Lajg;

.field public final c:Lajm;

.field public final d:Lajn;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lamh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    new-instance v0, Lajf;

    invoke-direct {v0, p1, p2}, Lajf;-><init>(Landroid/content/Context;Lamh;)V

    iput-object v0, p0, Lajo;->a:Lajf;

    .line 3
    new-instance v0, Lajg;

    invoke-direct {v0, p1, p2}, Lajg;-><init>(Landroid/content/Context;Lamh;)V

    iput-object v0, p0, Lajo;->b:Lajg;

    .line 4
    new-instance v0, Lajm;

    invoke-direct {v0, p1, p2}, Lajm;-><init>(Landroid/content/Context;Lamh;)V

    iput-object v0, p0, Lajo;->c:Lajm;

    .line 5
    new-instance v0, Lajn;

    invoke-direct {v0, p1, p2}, Lajn;-><init>(Landroid/content/Context;Lamh;)V

    iput-object v0, p0, Lajo;->d:Lajn;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lamh;)Lajo;
    .locals 2

    const-class v0, Lajo;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lajo;->e:Lajo;

    if-nez v1, :cond_0

    new-instance v1, Lajo;

    invoke-direct {v1, p0, p1}, Lajo;-><init>(Landroid/content/Context;Lamh;)V

    sput-object v1, Lajo;->e:Lajo;

    :cond_0
    sget-object p0, Lajo;->e:Lajo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
