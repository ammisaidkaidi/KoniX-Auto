.class public final synthetic Lbbg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lbbh;


# direct methods
.method public synthetic constructor <init>(Lbbh;II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbg;->c:Lbbh;

    iput p2, p0, Lbbg;->a:I

    iput p3, p0, Lbbg;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lbbg;->c:Lbbh;

    iget v1, p0, Lbbg;->a:I

    iget v2, p0, Lbbg;->b:I

    iget-object v3, v0, Lbbh;->a:Lbbl;

    iget-object v3, v3, Lbbl;->f:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "num_minutes_remaining"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 2
    const v1, 0x7f100058

    invoke-static {v3, v1, v5}, Lhf;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lbbh;->a:Lbbl;

    iget-object v5, v3, Lbbl;->f:Landroid/content/Context;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "device"

    aput-object v9, v8, v7

    iget-object v3, v3, Lbbl;->h:Lawo;

    .line 3
    invoke-interface {v3}, Lawo;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v6

    const-string v3, "battery_level"

    aput-object v3, v8, v4

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v8, v3

    const/4 v2, 0x4

    const-string v3, "low_battery_minutes_message"

    aput-object v3, v8, v2

    const/4 v2, 0x5

    aput-object v1, v8, v2

    .line 5
    const v1, 0x7f100059

    invoke-static {v5, v1, v8}, Lhf;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lbbh;->a:Lbbl;

    iget-object v0, v0, Lbbl;->f:Landroid/content/Context;

    .line 6
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
