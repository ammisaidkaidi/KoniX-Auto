.class public final Lawz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;


# direct methods
.method public constructor <init>(Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawz;->a:Ldny;

    return-void
.end method

.method public static c(Landroid/content/Context;)Lawy;
    .locals 1

    .line 1
    new-instance v0, Lawy;

    invoke-direct {v0, p0}, Lawy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lawz;->b()Lawy;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lawy;
    .locals 1

    .line 1
    iget-object v0, p0, Lawz;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lawz;->c(Landroid/content/Context;)Lawy;

    move-result-object v0

    return-object v0
.end method
