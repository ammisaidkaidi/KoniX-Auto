.class public final synthetic Lbpd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbps;


# direct methods
.method public synthetic constructor <init>(Lbps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbpd;->a:Lbps;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbpd;->a:Lbps;

    invoke-virtual {v0}, Lbps;->i()V

    return-void
.end method
