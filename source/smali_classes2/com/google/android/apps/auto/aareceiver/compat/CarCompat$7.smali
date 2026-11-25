.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->startProjectionAccessPoint(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$mainHandler:Landroid/os/Handler;

.field final synthetic val$wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/os/Handler;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$mainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1037
    move-object/from16 v1, p0

    const-string v2, "AAReceiverCompat"

    :try_start_0
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$200(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1039
    const/4 v3, 0x0

    :try_start_1
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "location_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    const-string v0, "settings put secure location_mode 3"

    const/16 v4, 0x7d0

    invoke-static {v0, v4}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$300(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1042
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 1045
    :try_start_2
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$400(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    if-eqz v0, :cond_1

    .line 1047
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 1049
    :cond_1
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    .line 1050
    invoke-static {v6}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$602(Z)Z

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disabling client Wi-Fi (prev STA IP="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$500()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ") for Wireless AA SoftAP"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1053
    move v0, v3

    :goto_1
    const/16 v7, 0x14

    if-ge v0, v7, :cond_2

    iget-object v7, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1054
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    :cond_2
    const-wide/16 v7, 0xfa

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1060
    :cond_3
    nop

    .line 1062
    :try_start_3
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1063
    goto :goto_2

    :catchall_1
    move-exception v0

    move v0, v3

    .line 1064
    :goto_2
    if-eqz v0, :cond_4

    :try_start_4
    filled-new-array {v6, v3}, [I

    move-result-object v0

    goto :goto_3

    :cond_4
    filled-new-array {v3}, [I

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :goto_3
    move-object v7, v0

    .line 1066
    nop

    .line 1067
    nop

    .line 1068
    :try_start_5
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$700()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v9, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v9, 0x0

    .line 1070
    :goto_4
    :try_start_6
    array-length v10, v7

    move v11, v3

    :goto_5
    if-ge v11, v10, :cond_e

    aget v12, v7, v11

    .line 1071
    invoke-static {v12}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$800(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 1072
    invoke-static {v13}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$102(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1073
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v13}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$900(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 1075
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$ctx:Landroid/content/Context;

    iget-object v14, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$mainHandler:Landroid/os/Handler;

    invoke-static {v0, v14}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1000(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1076
    nop

    .line 1077
    if-nez v14, :cond_5

    if-eqz v9, :cond_5

    .line 1079
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v15, "startSoftAp"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v16, Landroid/net/wifi/WifiConfiguration;

    aput-object v16, v8, v3

    invoke-virtual {v0, v15, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1080
    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1081
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1084
    goto :goto_6

    .line 1082
    :catchall_3
    move-exception v0

    .line 1083
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IWifiManager.startSoftAp failed on band="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ": "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_5
    move v0, v3

    :goto_6
    if-nez v14, :cond_6

    if-nez v0, :cond_6

    .line 1088
    goto/16 :goto_c

    .line 1091
    :cond_6
    nop

    .line 1092
    move v8, v3

    :goto_7
    const/16 v15, 0x24

    if-ge v8, v15, :cond_9

    .line 1093
    iget-object v15, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-static {v15}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1100(Landroid/net/wifi/WifiManager;)I

    move-result v15

    .line 1094
    const/16 v3, 0xd

    if-ne v15, v3, :cond_7

    .line 1095
    nop

    .line 1096
    move v3, v6

    goto :goto_9

    .line 1098
    :cond_7
    const/16 v3, 0xe

    if-ne v15, v3, :cond_8

    const/4 v3, 0x3

    if-lt v8, v3, :cond_8

    .line 1099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SoftAP reported WIFI_AP_STATE_FAILED (14) on band="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    goto :goto_8

    .line 1102
    :cond_8
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1092
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto :goto_7

    .line 1105
    :cond_9
    :goto_8
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_b

    .line 1106
    invoke-static {v14}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1202(Z)Z

    .line 1107
    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1302(Z)Z

    .line 1108
    nop

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoftAP ENABLED on band="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-ne v12, v6, :cond_a

    const-string v3, "5GHz"

    goto :goto_a

    :cond_a
    const-string v3, "2.4GHz"

    :goto_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (tether="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ssid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    goto :goto_d

    .line 1113
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SoftAP did not reach ENABLED on band="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", cleaning up before fallback"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    if-eqz v14, :cond_c

    iget-object v3, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1400(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1115
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v9, :cond_d

    .line 1116
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "stopSoftAp"

    const/4 v8, 0x0

    new-array v12, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    .line 1118
    :cond_d
    :goto_b
    const-wide/16 v12, 0x15e

    :try_start_a
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 1070
    :goto_c
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_e
    const/4 v13, 0x0

    .line 1123
    :goto_d
    if-eqz v13, :cond_13

    .line 1124
    nop

    .line 1125
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_e
    const/16 v3, 0x19

    if-ge v8, v3, :cond_10

    .line 1126
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApHostInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1127
    if-eqz v0, :cond_f

    goto :goto_f

    .line 1128
    :cond_f
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1125
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 1130
    :cond_10
    :goto_f
    if-nez v0, :cond_12

    .line 1131
    const-string v3, "SoftAP enabled without IPv4 after 2.5s -> provisioning 192.168.43.1 + dnsmasq"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1500()V

    .line 1133
    const/4 v3, 0x0

    :goto_10
    const/16 v6, 0xf

    if-ge v3, v6, :cond_12

    .line 1134
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApHostInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_11

    goto :goto_11

    .line 1136
    :cond_11
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1133
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1139
    :cond_12
    :goto_11
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getApBssidSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1140
    invoke-static {v13}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$102(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering v8 AP onStarted: SSID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " BSSID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hostIp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-static {v13}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1600(Landroid/net/wifi/WifiConfiguration;)V

    .line 1144
    return-void

    .line 1148
    :cond_13
    const-string v0, "Tethered SoftAP unavailable; trying startLocalOnlyHotspot backup"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1150
    iget-object v3, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;

    invoke-direct {v4, v1, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7$1;-><init>(Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1188
    goto :goto_12

    .line 1184
    :catchall_5
    move-exception v0

    .line 1185
    const-string v3, "v8 startProjectionAccessPoint failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    iget-object v0, v1, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$7;->val$wm:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1800(Landroid/net/wifi/WifiManager;)V

    .line 1187
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$1900(I)V

    .line 1189
    :goto_12
    return-void
.end method
