.class public final Lafl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lafc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lafb;)Lafd;
    .locals 4

    new-instance v0, Lafk;

    iget-object v1, p1, Lafb;->a:Landroid/content/Context;

    iget-object v2, p1, Lafb;->b:Ljava/lang/String;

    iget-object v3, p1, Lafb;->c:Laez;

    iget-boolean p1, p1, Lafb;->d:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lafk;-><init>(Landroid/content/Context;Ljava/lang/String;Laez;Z)V

    return-object v0
.end method
