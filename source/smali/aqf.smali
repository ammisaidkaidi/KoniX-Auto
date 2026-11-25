.class public final Laqf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Laqe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Laqe;->c:Ljava/util/List;

    iput-object v0, p0, Laqf;->c:Ljava/util/List;

    iget-object v0, p1, Laqe;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Laqf;->b:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Laqe;->a:Landroid/view/View;

    iput-object p1, p0, Laqf;->a:Landroid/view/View;

    return-void
.end method

.method public static a()Laqe;
    .locals 1

    new-instance v0, Laqe;

    invoke-direct {v0}, Laqe;-><init>()V

    return-object v0
.end method
