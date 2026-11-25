.class final Lif;
.super Lie;
.source "PG"


# static fields
.field static final c:Lih;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Lih;->k(Landroid/view/WindowInsets;)Lih;

    move-result-object v0

    sput-object v0, Lif;->c:Lih;

    return-void
.end method

.method public constructor <init>(Lih;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lie;-><init>(Lih;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;)V
    .locals 0

    return-void
.end method
