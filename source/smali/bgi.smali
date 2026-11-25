.class public final Lbgi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Lbgj;

.field public final c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/vec/HotwordManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbgi;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbbl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbgj;

    invoke-direct {v0, p1}, Lbgj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbgi;->b:Lbgj;

    new-instance v0, Lbgh;

    .line 2
    invoke-direct {v0, p0}, Lbgh;-><init>(Lbgi;)V

    iput-object v0, p0, Lbgi;->c:Landroid/content/BroadcastReceiver;

    iget-object p2, p2, Lbbl;->F:Lzn;

    new-instance v0, Lcom/google/android/apps/auto/aareceiver/vec/HotwordManager$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/auto/aareceiver/vec/HotwordManager$2;-><init>(Lbgi;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2, v0}, Lzn;->b(Lzp;)V

    return-void
.end method
