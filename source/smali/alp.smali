.class public final Lalp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lagm;


# instance fields
.field final a:Lajp;

.field final b:Lakl;

.field public final c:Lamh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lajp;Lamh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lalp;->a:Lajp;

    iput-object p3, p0, Lalp;->c:Lamh;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object p1

    iput-object p1, p0, Lalp;->b:Lakl;

    return-void
.end method
