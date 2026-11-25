.class public final Laia;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lajp;

.field final c:Lagf;

.field final d:Landroidx/work/impl/WorkDatabase;

.field final e:Ljava/lang/String;

.field f:Ljava/util/List;

.field final g:Lamh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lagf;Lamh;Lajp;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfw;

    invoke-direct {v0}, Lfw;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Laia;->a:Landroid/content/Context;

    iput-object p3, p0, Laia;->g:Lamh;

    iput-object p4, p0, Laia;->b:Lajp;

    iput-object p2, p0, Laia;->c:Lagf;

    iput-object p5, p0, Laia;->d:Landroidx/work/impl/WorkDatabase;

    iput-object p6, p0, Laia;->e:Ljava/lang/String;

    return-void
.end method
