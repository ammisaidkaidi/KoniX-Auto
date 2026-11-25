.class public final Ladn;
.super Lrt;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final d:Landroid/support/v7/widget/RecyclerView;

.field final e:Lgh;

.field final f:Lgh;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lrt;->c:Lrs;

    iput-object v0, p0, Ladn;->e:Lgh;

    new-instance v0, Ladm;

    .line 2
    invoke-direct {v0, p0}, Ladm;-><init>(Ladn;)V

    iput-object v0, p0, Ladn;->f:Lgh;

    iput-object p1, p0, Ladn;->d:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final k()Lgh;
    .locals 1

    iget-object v0, p0, Ladn;->f:Lgh;

    return-object v0
.end method
