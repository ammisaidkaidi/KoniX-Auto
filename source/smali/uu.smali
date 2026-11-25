.class public final Luu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Landroid/view/LayoutInflater;

.field final b:Landroid/os/Handler;

.field public final c:Lut;

.field private final d:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Luq;

    invoke-direct {v0, p0}, Luq;-><init>(Luu;)V

    iput-object v0, p0, Luu;->d:Landroid/os/Handler$Callback;

    .line 2
    new-instance v1, Lur;

    invoke-direct {v1, p1}, Lur;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Luu;->a:Landroid/view/LayoutInflater;

    new-instance p1, Landroid/os/Handler;

    .line 3
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Luu;->b:Landroid/os/Handler;

    .line 4
    sget-object p1, Lut;->a:Lut;

    iput-object p1, p0, Luu;->c:Lut;

    return-void
.end method
