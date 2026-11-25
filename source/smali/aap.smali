.class public final Laap;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laag;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Laap;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Laaf;
    .locals 2

    .line 2
    iget v0, p0, Laap;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lct;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lct;-><init>(Z)V

    return-object v0

    :pswitch_0
    new-instance v0, Laaq;

    .line 1
    invoke-direct {v0}, Laaq;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
