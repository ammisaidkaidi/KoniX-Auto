.class final Latb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldny;


# instance fields
.field final synthetic a:Latj;


# direct methods
.method public constructor <init>(Latj;)V
    .locals 0

    iput-object p1, p0, Latb;->a:Latj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lati;

    iget-object v1, p0, Latb;->a:Latj;

    iget-object v1, v1, Latj;->b:Latj;

    invoke-direct {v0, v1}, Lati;-><init>(Latj;)V

    return-object v0
.end method
