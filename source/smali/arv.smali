.class public final synthetic Larv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Larx;

.field public final synthetic b:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Larx;[Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larv;->a:Larx;

    iput-object p2, p0, Larv;->b:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Larv;->a:Larx;

    iget-object v1, p0, Larv;->b:[Ljava/lang/Runnable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Larx;->c(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {v0}, Lhf;->q(Larx;)Z

    return-void
.end method
