.class public final Lbwf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbvv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbvv;

    invoke-direct {v0}, Lbvv;-><init>()V

    iput-object v0, p0, Lbwf;->b:Lbvv;

    iput-object p1, p0, Lbwf;->a:Landroid/content/Context;

    return-void
.end method
