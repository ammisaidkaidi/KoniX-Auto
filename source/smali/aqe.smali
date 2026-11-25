.class public final Laqe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Laqf;
    .locals 2

    .line 1
    iget-object v0, p0, Laqe;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqe;->c:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both searchResultItems and searchResultsView can\'t be set at the same time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Laqf;

    invoke-direct {v0, p0}, Laqf;-><init>(Laqe;)V

    return-object v0
.end method
