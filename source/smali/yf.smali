.class public final Lyf;
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

    iput-object p1, p0, Lyf;->a:Ljava/lang/String;

    iput-object p2, p0, Lyf;->b:Landroid/content/Context;

    iput-object p3, p0, Lyf;->c:Lye;

    iput p4, p0, Lyf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lyf;->a:Ljava/lang/String;

    iget-object v1, p0, Lyf;->b:Landroid/content/Context;

    iget-object v2, p0, Lyf;->c:Lye;

    iget v3, p0, Lyf;->d:I

    invoke-static {v0, v1, v2, v3}, Lyk;->a(Ljava/lang/String;Landroid/content/Context;Lye;I)Lyj;

    move-result-object v0

    return-object v0
.end method
