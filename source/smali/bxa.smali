.class public final synthetic Lbxa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbxb;


# direct methods
.method public synthetic constructor <init>(Lbxb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxa;->a:Lbxb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbxa;->a:Lbxb;

    invoke-virtual {v0}, Lbxb;->a()V

    return-void
.end method
