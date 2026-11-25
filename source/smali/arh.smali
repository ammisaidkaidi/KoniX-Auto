.class public final synthetic Larh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Larn;

.field public final synthetic b:Lapu;


# direct methods
.method public synthetic constructor <init>(Larn;Lapu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larh;->a:Larn;

    iput-object p2, p0, Larh;->b:Lapu;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Larh;->a:Larn;

    iget-object v1, p0, Larh;->b:Lapu;

    invoke-virtual {v1}, Lapu;->b()V

    iget-object v0, v0, Larn;->i:Landroid/app/AlertDialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    return-void
.end method
