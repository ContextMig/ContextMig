.class Lcom/dropbox/sync/android/CoreBatteryStateManager;
.super Ljava/lang/Object;
.source "CoreBatteryStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;,
        Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
    }
.end annotation


# static fields
.field private static final BATTERY_HIGH_THRESHOLD:F = 0.7f

.field private static final sInitLock:Ljava/lang/Object;

.field private static sInstance:Lcom/dropbox/sync/android/CoreBatteryStateManager;


# instance fields
.field private mCachedBatteryLowThresholdPct:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->sInitLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    sget-object v1, Lcom/dropbox/sync/android/DbxChargingState;->UNKNOWN:Lcom/dropbox/sync/android/DbxChargingState;

    sget-object v2, Lcom/dropbox/sync/android/DbxBatteryLevel;->UNKNOWN:Lcom/dropbox/sync/android/DbxBatteryLevel;

    invoke-direct {v0, p0, v1, v2}, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;-><init>(Lcom/dropbox/sync/android/CoreBatteryStateManager;Lcom/dropbox/sync/android/DbxChargingState;Lcom/dropbox/sync/android/DbxBatteryLevel;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mCachedBatteryLowThresholdPct:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    return-void
.end method

.method private static getBatteryChangedIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getBatteryLowThreshold()F
    .locals 5

    .prologue
    .line 159
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mCachedBatteryLowThresholdPct:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gez v2, :cond_0

    .line 163
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 164
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "config_lowBatteryWarningLevel"

    const-string v3, "integer"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 166
    .local v0, "lowThresholdPct":I
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mCachedBatteryLowThresholdPct:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 169
    .end local v0    # "lowThresholdPct":I
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mCachedBatteryLowThresholdPct:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    return v2
.end method

.method public static getInstance()Lcom/dropbox/sync/android/CoreBatteryStateManager;
    .locals 2

    .prologue
    .line 49
    sget-object v1, Lcom/dropbox/sync/android/CoreBatteryStateManager;->sInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->sInstance:Lcom/dropbox/sync/android/CoreBatteryStateManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/dropbox/sync/android/CoreBatteryStateManager;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreBatteryStateManager;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->sInstance:Lcom/dropbox/sync/android/CoreBatteryStateManager;

    .line 53
    :cond_0
    sget-object v0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->sInstance:Lcom/dropbox/sync/android/CoreBatteryStateManager;

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyListenersOfStateChange()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->charging:Lcom/dropbox/sync/android/DbxChargingState;

    sget-object v5, Lcom/dropbox/sync/android/DbxChargingState;->UNKNOWN:Lcom/dropbox/sync/android/DbxChargingState;

    if-eq v2, v5, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 70
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->level:Lcom/dropbox/sync/android/DbxBatteryLevel;

    sget-object v5, Lcom/dropbox/sync/android/DbxBatteryLevel;->UNKNOWN:Lcom/dropbox/sync/android/DbxBatteryLevel;

    if-eq v2, v5, :cond_1

    :goto_1
    invoke-static {v3}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 72
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;

    .line 73
    .local v1, "l":Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;
    invoke-interface {v1}, Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;->stateChanged()V

    goto :goto_2

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;
    :cond_0
    move v2, v4

    .line 69
    goto :goto_0

    :cond_1
    move v3, v4

    .line 70
    goto :goto_1

    .line 75
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private setStateHelper(Landroid/content/Context;ZLandroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receivedLowBatteryIntent"    # Z
    .param p3, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 125
    if-eqz p3, :cond_2

    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 126
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 129
    const-string v5, "status"

    invoke-virtual {p3, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 130
    .local v4, "status":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    :cond_0
    move v1, v6

    .line 133
    .local v1, "isCharging":Z
    :goto_1
    const-string v5, "level"

    invoke-virtual {p3, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 134
    .local v2, "levelInt":I
    const-string v5, "scale"

    invoke-virtual {p3, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 135
    .local v3, "scale":I
    int-to-float v5, v2

    int-to-float v6, v3

    div-float v0, v5, v6

    .line 137
    .local v0, "floatLevel":F
    invoke-direct {p0, v1, p2, v0}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->updateState(ZZF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->notifyListenersOfStateChange()V

    .line 140
    :cond_1
    return-void

    .end local v0    # "floatLevel":F
    .end local v1    # "isCharging":Z
    .end local v2    # "levelInt":I
    .end local v3    # "scale":I
    .end local v4    # "status":I
    :cond_2
    move v5, v7

    .line 125
    goto :goto_0

    .restart local v4    # "status":I
    :cond_3
    move v1, v7

    .line 130
    goto :goto_1
.end method

.method private declared-synchronized updateState(ZZF)Z
    .locals 3
    .param p1, "isCharging"    # Z
    .param p2, "receivedLowBatteryIntent"    # Z
    .param p3, "batteryLevel"    # F

    .prologue
    .line 180
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/dropbox/sync/android/DbxChargingState;->CHARGING:Lcom/dropbox/sync/android/DbxChargingState;

    .line 189
    .local v0, "charging":Lcom/dropbox/sync/android/DbxChargingState;
    :goto_0
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getBatteryLowThreshold()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_2

    .line 190
    :cond_0
    sget-object v1, Lcom/dropbox/sync/android/DbxBatteryLevel;->LOW:Lcom/dropbox/sync/android/DbxBatteryLevel;

    .line 197
    .local v1, "level":Lcom/dropbox/sync/android/DbxBatteryLevel;
    :goto_1
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->charging:Lcom/dropbox/sync/android/DbxChargingState;

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->level:Lcom/dropbox/sync/android/DbxBatteryLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_4

    .line 198
    const/4 v2, 0x0

    .line 202
    :goto_2
    monitor-exit p0

    return v2

    .line 180
    .end local v0    # "charging":Lcom/dropbox/sync/android/DbxChargingState;
    .end local v1    # "level":Lcom/dropbox/sync/android/DbxBatteryLevel;
    :cond_1
    :try_start_1
    sget-object v0, Lcom/dropbox/sync/android/DbxChargingState;->UNPLUGGED:Lcom/dropbox/sync/android/DbxChargingState;

    goto :goto_0

    .line 191
    .restart local v0    # "charging":Lcom/dropbox/sync/android/DbxChargingState;
    :cond_2
    const v2, 0x3f333333    # 0.7f

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_3

    .line 192
    sget-object v1, Lcom/dropbox/sync/android/DbxBatteryLevel;->HIGH:Lcom/dropbox/sync/android/DbxBatteryLevel;

    .restart local v1    # "level":Lcom/dropbox/sync/android/DbxBatteryLevel;
    goto :goto_1

    .line 194
    .end local v1    # "level":Lcom/dropbox/sync/android/DbxBatteryLevel;
    :cond_3
    sget-object v1, Lcom/dropbox/sync/android/DbxBatteryLevel;->MEDIUM:Lcom/dropbox/sync/android/DbxBatteryLevel;

    .restart local v1    # "level":Lcom/dropbox/sync/android/DbxBatteryLevel;
    goto :goto_1

    .line 201
    :cond_4
    new-instance v2, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    invoke-direct {v2, p0, v0, v1}, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;-><init>(Lcom/dropbox/sync/android/CoreBatteryStateManager;Lcom/dropbox/sync/android/DbxChargingState;Lcom/dropbox/sync/android/DbxBatteryLevel;)V

    iput-object v2, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    const/4 v2, 0x1

    goto :goto_2

    .line 180
    .end local v0    # "charging":Lcom/dropbox/sync/android/DbxChargingState;
    .end local v1    # "level":Lcom/dropbox/sync/android/DbxBatteryLevel;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public addListener(Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public declared-synchronized getState()Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSet()Z
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    iget-object v0, v0, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->charging:Lcom/dropbox/sync/android/DbxChargingState;

    sget-object v1, Lcom/dropbox/sync/android/DbxChargingState;->UNKNOWN:Lcom/dropbox/sync/android/DbxChargingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBatteryStateManager;->mState:Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    iget-object v0, v0, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->level:Lcom/dropbox/sync/android/DbxBatteryLevel;

    sget-object v1, Lcom/dropbox/sync/android/DbxBatteryLevel;->UNKNOWN:Lcom/dropbox/sync/android/DbxBatteryLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method refreshState(Landroid/content/Context;)Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getBatteryChangedIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->setStateHelper(Landroid/content/Context;ZLandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getState()Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    move-result-object v0

    return-object v0
.end method
