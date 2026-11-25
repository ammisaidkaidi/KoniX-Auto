.class public final Lchk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcig;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lchj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lchj;->a:Lcig;

    iput-object v0, p0, Lchk;->a:Lcig;

    iget-object v0, p1, Lchj;->b:Ljava/util/List;

    iput-object v0, p0, Lchk;->b:Ljava/util/List;

    iget-object v0, p1, Lchj;->c:Ljava/util/List;

    iput-object v0, p0, Lchk;->c:Ljava/util/List;

    iget-object p1, p1, Lchj;->d:Landroid/net/Uri;

    iput-object p1, p0, Lchk;->d:Landroid/net/Uri;

    return-void
.end method
