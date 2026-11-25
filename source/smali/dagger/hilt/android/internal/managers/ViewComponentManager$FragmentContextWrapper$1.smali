.class public Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzo;


# instance fields
.field final synthetic a:Ldhp;


# direct methods
.method public constructor <init>(Ldhp;)V
    .locals 0

    iput-object p1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper$1;->a:Ldhp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lzq;Lzl;)V
    .locals 0

    sget-object p1, Lzl;->ON_DESTROY:Lzl;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper$1;->a:Ldhp;

    const/4 p2, 0x0

    iput-object p2, p1, Ldhp;->a:Lbr;

    iput-object p2, p1, Ldhp;->b:Landroid/view/LayoutInflater;

    iput-object p2, p1, Ldhp;->c:Landroid/view/LayoutInflater;

    :cond_0
    return-void
.end method
