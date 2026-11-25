.class public final Laqu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:Lj$/util/function/Consumer;

.field public final d:Z


# direct methods
.method public constructor <init>(Laqt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Laqt;->a:Ljava/lang/String;

    iput-object v0, p0, Laqu;->a:Ljava/lang/String;

    iget-object v0, p1, Laqt;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Laqu;->b:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Laqt;->c:Lj$/util/function/Consumer;

    iput-object p1, p0, Laqu;->c:Lj$/util/function/Consumer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Laqu;->d:Z

    return-void
.end method
