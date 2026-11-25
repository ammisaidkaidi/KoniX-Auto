.class final Lakg;
.super Laej;
.source "PG"


# direct methods
.method public constructor <init>(Laee;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Laej;-><init>(Laee;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE from WorkProgress where work_spec_id=?"

    return-object v0
.end method
