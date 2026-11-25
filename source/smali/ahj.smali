.class public final Lahj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lafc;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lahj;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lafb;)Lafd;
    .locals 2

    .line 1
    iget-object v0, p0, Lahj;->a:Landroid/content/Context;

    invoke-static {v0}, Lafb;->a(Landroid/content/Context;)Lafa;

    move-result-object v0

    iget-object v1, p1, Lafb;->b:Ljava/lang/String;

    iput-object v1, v0, Lafa;->b:Ljava/lang/String;

    iget-object p1, p1, Lafb;->c:Laez;

    iput-object p1, v0, Lafa;->c:Laez;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lafa;->d:Z

    new-instance p1, Lafl;

    invoke-direct {p1}, Lafl;-><init>()V

    invoke-virtual {v0}, Lafa;->a()Lafb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lafl;->a(Lafb;)Lafd;

    move-result-object p1

    return-object p1
.end method
