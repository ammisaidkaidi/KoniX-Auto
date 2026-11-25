.class public final Lyh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lye;

.field final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lye;I)V
    .locals 0

    iput-object p1, p0, Lyh;->a:Ljava/lang/String;

    iput-object p2, p0, Lyh;->b:Landroid/content/Context;

    iput-object p3, p0, Lyh;->c:Lye;

    iput p4, p0, Lyh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lyj;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lyh;->a:Ljava/lang/String;

    iget-object v1, p0, Lyh;->b:Landroid/content/Context;

    iget-object v2, p0, Lyh;->c:Lye;

    iget v3, p0, Lyh;->d:I

    invoke-static {v0, v1, v2, v3}, Lyk;->a(Ljava/lang/String;Landroid/content/Context;Lye;I)Lyj;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v0, Lyj;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lyj;-><init>(I)V

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyh;->a()Lyj;

    move-result-object v0

    return-object v0
.end method
