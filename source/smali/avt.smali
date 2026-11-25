.class public final synthetic Lavt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lavx;

.field public final synthetic b:Lavv;


# direct methods
.method public synthetic constructor <init>(Lavx;Lavv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavt;->a:Lavx;

    iput-object p2, p0, Lavt;->b:Lavv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lavt;->a:Lavx;

    iget-object v1, p0, Lavt;->b:Lavv;

    iget-object v0, v0, Lavx;->d:Lawa;

    iget-object v1, v1, Lavv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawa;->a(Ljava/lang/String;)V

    return-void
.end method
