.class final Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

.field private mIsNight:Z

.field private mTwilightManager:Landroid/support/v7/app/TwilightManager;

.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/support/v7/app/TwilightManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImplV14;
    .param p2, "twilightManager"    # Landroid/support/v7/app/TwilightManager;

    .prologue
    .line 324
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    .line 326
    invoke-virtual {p2}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mIsNight:Z

    .line 327
    return-void
.end method


# virtual methods
.method final cleanup()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    :cond_0
    return-void
.end method

.method final dispatchTimeChanged()V
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {v1}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    .line 337
    .local v0, "isNight":Z
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mIsNight:Z

    if-eq v0, v1, :cond_0

    .line 338
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mIsNight:Z

    .line 339
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    .line 341
    :cond_0
    return-void
.end method

.method final getApplyableNightMode()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {v0}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mIsNight:Z

    .line 332
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mIsNight:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final setup()V
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    .line 349
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    .line 362
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    return-void
.end method
