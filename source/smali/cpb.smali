.class final Lcpb;
.super Lcpe;
.source "PG"


# instance fields
.field final synthetic a:Lcpi;


# direct methods
.method public constructor <init>(Lcpi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcpb;->a:Lcpi;

    invoke-direct {p0, p1}, Lcpe;-><init>(Lcpi;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcpg;

    iget-object v1, p0, Lcpb;->a:Lcpi;

    invoke-direct {v0, v1, p1}, Lcpg;-><init>(Lcpi;I)V

    return-object v0
.end method
