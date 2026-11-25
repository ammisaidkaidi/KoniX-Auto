.class public final synthetic Lapp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Larr;


# instance fields
.field public final synthetic a:Lapu;


# direct methods
.method public synthetic constructor <init>(Lapu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp;->a:Lapu;

    return-void
.end method


# virtual methods
.method public final a(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2

    iget-object v0, p0, Lapp;->a:Lapu;

    invoke-virtual {v0}, Lapu;->e()Z

    move-result v1

    iput-object p1, v0, Lapu;->g:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v0}, Lapu;->e()Z

    move-result p1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lapu;->d()V

    :cond_0
    return-void
.end method
