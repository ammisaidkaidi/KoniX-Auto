.class final Lazb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final synthetic b:I


# instance fields
.field final synthetic a:Lazc;


# direct methods
.method public constructor <init>(Lazc;)V
    .locals 0

    iput-object p1, p0, Lazb;->a:Lazc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p0, Lazb;->a:Lazc;

    monitor-enter v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 13
    :try_start_0
    monitor-exit v1

    goto :goto_1

    .line 1
    :sswitch_0
    iget-object v0, p0, Lazb;->a:Lazc;

    .line 2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v0, Lazc;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v6, v0, Lazc;->b:[F

    .line 3
    invoke-static {p1, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, v0, Lazc;->c:Z

    .line 4
    invoke-virtual {v0}, Lazc;->b()V

    .line 5
    monitor-exit v5

    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 12
    :sswitch_1
    iget-object v0, p0, Lazb;->a:Lazc;

    .line 6
    sget-object v2, Lckw;->t:Lckw;

    new-instance v4, Laza;

    invoke-direct {v4, p1, v3}, Laza;-><init>(Landroid/hardware/SensorEvent;I)V

    invoke-virtual {v0, v2, v4}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lazb;->a:Lazc;

    .line 7
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v0, Lazc;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v6, v0, Lazc;->d:[F

    .line 8
    invoke-static {p1, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, v0, Lazc;->e:Z

    .line 9
    invoke-virtual {v0}, Lazc;->b()V

    .line 10
    monitor-exit v5

    goto :goto_0

    .line 5
    :catchall_1
    move-exception p1

    .line 10
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :sswitch_3
    iget-object v0, p0, Lazb;->a:Lazc;

    .line 11
    sget-object v2, Lckw;->s:Lckw;

    new-instance v3, Laza;

    invoke-direct {v3, p1, v4}, Laza;-><init>(Landroid/hardware/SensorEvent;I)V

    invoke-virtual {v0, v2, v3}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    .line 12
    :goto_0
    monitor-exit v1

    return-void

    .line 13
    :catchall_2
    move-exception p1

    goto :goto_2

    :goto_1
    return-void

    .line 12
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
