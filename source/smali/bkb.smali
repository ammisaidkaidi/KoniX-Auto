.class public final Lbkb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbkb;


# instance fields
.field public final b:Landroid/os/Looper;

.field public final c:Lho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbka;

    invoke-direct {v0}, Lbka;-><init>()V

    invoke-virtual {v0}, Lbka;->a()Lbkb;

    move-result-object v0

    sput-object v0, Lbkb;->a:Lbkb;

    return-void
.end method

.method public constructor <init>(Lho;Landroid/os/Looper;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->c:Lho;

    iput-object p2, p0, Lbkb;->b:Landroid/os/Looper;

    return-void
.end method
