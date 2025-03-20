.class public abstract Lcom/dropbox/sync/android/AnalyticsEvent;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final mAcct:Lcom/dropbox/sync/android/DbxAccount;

.field private final mLedger:Lcom/dropbox/ledger/android/Ledger;

.field private mLogged:Z

.field private mStartTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/dropbox/sync/android/AnalyticsEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/AnalyticsEvent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 1
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 96
    invoke-static {}, Lcom/dropbox/sync/android/AnalyticsEvent;->defaultLedgerProvider()Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/sync/android/AnalyticsEvent;-><init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;)V

    .line 97
    return-void
.end method

.method protected constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;)V
    .locals 3
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "ledgerProvider"    # Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    .line 75
    :goto_0
    if-eqz p1, :cond_2

    .line 76
    invoke-interface {p2, p1}, Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;->get(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/ledger/android/Ledger;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    .line 87
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mValues:Lorg/json/JSONObject;

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mLogged:Z

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mStartTimes:Ljava/util/Map;

    .line 90
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/dropbox/sync/android/DbxAccountManager;->hasInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-static {}, Lcom/dropbox/sync/android/DbxAccountManager;->getInstance()Lcom/dropbox/sync/android/DbxAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxAccountManager;->getLinkedAccount()Lcom/dropbox/sync/android/DbxAccount;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    goto :goto_0

    .line 72
    :cond_1
    iput-object v2, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Lcom/dropbox/sync/android/DbxAccountManager;->getInstance()Lcom/dropbox/sync/android/DbxAccountManager;

    move-result-object v0

    .line 81
    .local v0, "acctMgr":Lcom/dropbox/sync/android/DbxAccountManager;
    if-nez v0, :cond_3

    .line 82
    iput-object v2, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    goto :goto_1

    .line 84
    :cond_3
    invoke-interface {p2, v0}, Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;->get(Lcom/dropbox/sync/android/DbxAccountManager;)Lcom/dropbox/ledger/android/Ledger;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    goto :goto_1
.end method

.method public static defaultLedgerProvider()Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/dropbox/sync/android/AnalyticsEvent$1;

    invoke-direct {v0}, Lcom/dropbox/sync/android/AnalyticsEvent$1;-><init>()V

    return-object v0
.end method

.method private static timestamp()Ljava/lang/String;
    .locals 8

    .prologue
    .line 145
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.02f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mValues:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    return-object p0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v2, "The value was not JSON-able"

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected log()V
    .locals 8

    .prologue
    .line 152
    sget-boolean v5, Lcom/dropbox/sync/android/AnalyticsEvent;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mLogged:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 153
    :cond_0
    iget-object v5, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    if-eqz v5, :cond_2

    .line 154
    const-string v5, "boot_ts"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/dropbox/sync/android/AnalyticsEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 155
    const-string v5, "ts"

    invoke-static {}, Lcom/dropbox/sync/android/AnalyticsEvent;->timestamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/dropbox/sync/android/AnalyticsEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v4, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 159
    iget-object v5, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 162
    .local v1, "ja_uids":Lorg/json/JSONArray;
    const-string v5, "user_ids"

    invoke-virtual {p0, v5, v1}, Lcom/dropbox/sync/android/AnalyticsEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 164
    invoke-static {}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getInstance()Lcom/dropbox/sync/android/CoreBatteryStateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getState()Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    move-result-object v0

    .line 165
    .local v0, "batteryState":Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
    const-string v5, "battery_level"

    iget-object v6, v0, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->level:Lcom/dropbox/sync/android/DbxBatteryLevel;

    invoke-virtual {p0, v5, v6}, Lcom/dropbox/sync/android/AnalyticsEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 166
    const-string v5, "charging_state"

    iget-object v6, v0, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->charging:Lcom/dropbox/sync/android/DbxChargingState;

    invoke-virtual {p0, v5, v6}, Lcom/dropbox/sync/android/AnalyticsEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 168
    invoke-static {}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;

    move-result-object v3

    .line 169
    .local v3, "networkStatus":Lcom/dropbox/sync/android/CoreNetworkStatus;
    const-string v5, "network_status"

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getStatus(Landroid/content/Context;)Lcom/dropbox/sync/android/DbxNetworkStatus;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/dropbox/sync/android/AnalyticsEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 171
    iget-object v5, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mValues:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "json":Ljava/lang/String;
    iget-object v5, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    invoke-virtual {v5, v2}, Lcom/dropbox/ledger/android/Ledger;->log(Ljava/lang/String;)V

    .line 173
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mLogged:Z

    .line 175
    .end local v0    # "batteryState":Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
    .end local v1    # "ja_uids":Lorg/json/JSONArray;
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "networkStatus":Lcom/dropbox/sync/android/CoreNetworkStatus;
    .end local v4    # "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method protected startTimerForKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mStartTimes:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method protected stopTimerForKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/dropbox/sync/android/AnalyticsEvent;->mStartTimes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 135
    .local v0, "time":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v2, "Must call startTimerForKey before stopTimerForKey"

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/sync/android/AnalyticsEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 138
    return-void
.end method
