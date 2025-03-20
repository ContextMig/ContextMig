.class public Lcom/fsck/k9/NotificationSetting;
.super Ljava/lang/Object;
.source "NotificationSetting.java"


# instance fields
.field private ledColor:I

.field private ledEnabled:Z

.field private ringEnabled:Z

.field private ringtoneUri:Ljava/lang/String;

.field private vibrateEnabled:Z

.field private vibratePattern:I

.field private vibrateTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVibration(II)[J
    .locals 13
    .param p0, "pattern"    # I
    .param p1, "times"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x2

    .line 102
    new-array v1, v9, [J

    fill-array-data v1, :array_0

    .line 103
    .local v1, "pattern0":[J
    new-array v2, v9, [J

    fill-array-data v2, :array_1

    .line 104
    .local v2, "pattern1":[J
    new-array v3, v9, [J

    fill-array-data v3, :array_2

    .line 105
    .local v3, "pattern2":[J
    new-array v4, v9, [J

    fill-array-data v4, :array_3

    .line 106
    .local v4, "pattern3":[J
    new-array v5, v9, [J

    fill-array-data v5, :array_4

    .line 107
    .local v5, "pattern4":[J
    new-array v6, v9, [J

    fill-array-data v6, :array_5

    .line 109
    .local v6, "pattern5":[J
    move-object v8, v1

    .line 111
    .local v8, "selectedPattern":[J
    packed-switch p0, :pswitch_data_0

    .line 129
    :goto_0
    array-length v9, v8

    mul-int/2addr v9, p1

    new-array v7, v9, [J

    .line 130
    .local v7, "repeatedPattern":[J
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-ge v0, p1, :cond_0

    .line 131
    array-length v9, v8

    mul-int/2addr v9, v0

    array-length v10, v8

    invoke-static {v8, v12, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v0    # "n":I
    .end local v7    # "repeatedPattern":[J
    :pswitch_0
    move-object v8, v2

    .line 114
    goto :goto_0

    .line 116
    :pswitch_1
    move-object v8, v3

    .line 117
    goto :goto_0

    .line 119
    :pswitch_2
    move-object v8, v4

    .line 120
    goto :goto_0

    .line 122
    :pswitch_3
    move-object v8, v5

    .line 123
    goto :goto_0

    .line 125
    :pswitch_4
    move-object v8, v6

    goto :goto_0

    .line 134
    .restart local v0    # "n":I
    .restart local v7    # "repeatedPattern":[J
    :cond_0
    const-wide/16 v10, 0x0

    aput-wide v10, v7, v12

    .line 135
    return-object v7

    .line 102
    nop

    :array_0
    .array-data 8
        0x12c
        0xc8
    .end array-data

    .line 103
    :array_1
    .array-data 8
        0x64
        0xc8
    .end array-data

    .line 104
    :array_2
    .array-data 8
        0x64
        0x1f4
    .end array-data

    .line 105
    :array_3
    .array-data 8
        0xc8
        0xc8
    .end array-data

    .line 106
    :array_4
    .array-data 8
        0xc8
        0x1f4
    .end array-data

    .line 107
    :array_5
    .array-data 8
        0x1f4
        0x1f4
    .end array-data

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getLedColor()I
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/NotificationSetting;->ledColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/NotificationSetting;->ringtoneUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVibratePattern()I
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/NotificationSetting;->vibratePattern:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVibrateTimes()I
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/NotificationSetting;->vibrateTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVibration()[J
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/fsck/k9/NotificationSetting;->vibratePattern:I

    iget v1, p0, Lcom/fsck/k9/NotificationSetting;->vibrateTimes:I

    invoke-static {v0, v1}, Lcom/fsck/k9/NotificationSetting;->getVibration(II)[J

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isLedEnabled()Z
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/NotificationSetting;->ledEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRingEnabled()Z
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/NotificationSetting;->ringEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isVibrateEnabled()Z
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/NotificationSetting;->vibrateEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLed(Z)V
    .locals 1
    .param p1, "led"    # Z

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/NotificationSetting;->ledEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/NotificationSetting;->ledColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRingEnabled(Z)V
    .locals 1
    .param p1, "ringEnabled"    # Z

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/NotificationSetting;->ringEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRingtone(Ljava/lang/String;)V
    .locals 1
    .param p1, "ringtoneUri"    # Ljava/lang/String;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/NotificationSetting;->ringtoneUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVibrate(Z)V
    .locals 1
    .param p1, "vibrate"    # Z

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/NotificationSetting;->vibrateEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVibratePattern(I)V
    .locals 1
    .param p1, "pattern"    # I

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/NotificationSetting;->vibratePattern:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVibrateTimes(I)V
    .locals 1
    .param p1, "times"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/NotificationSetting;->vibrateTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
