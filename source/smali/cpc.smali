.class final Lcpc;
.super Lcpe;
.source "PG"


# instance fields
.field final synthetic a:Lcpi;


# direct methods
.method public constructor <init>(Lcpi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcpc;->a:Lcpi;

    invoke-direct {p0, p1}, Lcpe;-><init>(Lcpi;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcpc;->a:Lcpi;

    invoke-virtual {v0, p1}, Lcpi;->h(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
