.class public final synthetic Larj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lapt;


# instance fields
.field public final synthetic a:Larn;


# direct methods
.method public synthetic constructor <init>(Larn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larj;->a:Larn;

    return-void
.end method


# virtual methods
.method public final a(Lapu;)V
    .locals 1

    .line 1
    iget-object p1, p0, Larj;->a:Larn;

    iget-object p1, p1, Larn;->i:Landroid/app/AlertDialog;

    if-nez p1, :cond_1

    const/4 p1, 0x6

    const-string v0, "CarUiToolbarController"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Overflow dialog was null when trying to show it!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
