.class final Ljx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgr;


# instance fields
.field final synthetic a:Ljy;


# direct methods
.method public constructor <init>(Ljy;)V
    .locals 0

    iput-object p1, p0, Ljx;->a:Ljy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aU(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljx;->a:Ljy;

    invoke-virtual {v0, p1}, Ljy;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
