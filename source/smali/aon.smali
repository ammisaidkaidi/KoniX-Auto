.class public final synthetic Laon;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Laoe;


# direct methods
.method public synthetic constructor <init>(Laoe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laon;->a:Laoe;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Laon;->a:Laoe;

    sget v0, Laoo;->p:I

    invoke-virtual {p1, p2}, Laoe;->a(Z)V

    return-void
.end method
