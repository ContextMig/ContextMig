.class Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;
.super Ljava/lang/Object;
.source "DbxSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;,
        Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    }
.end annotation


# instance fields
.field private final mConnection:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;

.field private final mContext:Landroid/content/Context;

.field private mState:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;-><init>(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;Lcom/dropbox/sync/android/DbxSyncService$1;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mConnection:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;

    .line 74
    sget-object v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mState:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    .line 108
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method private static debugDumpPackageAndServiceInfo(Landroid/content/Context;)V
    .locals 17
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Dumping package info and running service info."

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 143
    .local v6, "info":Landroid/content/pm/PackageInfo;
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_0

    .line 144
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Registered activities:"

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v3, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v3, v5

    .line 146
    .local v1, "actInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_0
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "No registered activities."

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v13, :cond_2

    .line 153
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Registered services:"

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v3, "arr$":[Landroid/content/pm/ServiceInfo;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v11, v3, v5

    .line 155
    .local v11, "servInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 158
    .end local v3    # "arr$":[Landroid/content/pm/ServiceInfo;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "servInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "No registered services."

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->packageNamePrefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "prefix":Ljava/lang/String;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Running services:"

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v13, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 167
    .local v2, "actMgr":Landroid/app/ActivityManager;
    if-nez v2, :cond_5

    .line 168
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Activity Manager is NULL."

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_4
    :goto_3
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Finished dumping package info."

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .line 160
    .end local v2    # "actMgr":Landroid/app/ActivityManager;
    .end local v9    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 161
    .local v4, "e":Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Can\'t get package info for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", message: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 170
    .end local v4    # "e":Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;
    .restart local v2    # "actMgr":Landroid/app/ActivityManager;
    .restart local v9    # "prefix":Ljava/lang/String;
    :cond_5
    const v13, 0x7fffffff

    invoke-virtual {v2, v13}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v10

    .line 171
    .local v10, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v10, :cond_6

    .line 172
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "List of running services is NULL."

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 174
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 175
    .local v12, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v13, v12, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 176
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v13

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static packageNamePrefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "numSegments"    # I

    .prologue
    const/4 v2, 0x0

    .line 125
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 126
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "segments":[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 128
    const/4 v1, 0x0

    .line 131
    :goto_1
    return-object v1

    .end local v0    # "segments":[Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 125
    goto :goto_0

    .line 131
    .restart local v0    # "segments":[Ljava/lang/String;
    :cond_1
    invoke-static {v0, v2, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "."

    invoke-static {v1, v2}, Lcom/dropbox/sync/android/CoreStringUtil;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mState:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    if-eq v0, v1, :cond_0

    .line 114
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v3, "ActivityTracker destroyed when still active."

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 117
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
    return-void
.end method

.method public final declared-synchronized setState(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;)V
    .locals 4
    .param p1, "newState"    # Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mState:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_0

    .line 234
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->shouldBind()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mState:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->shouldBind()Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTracker: Binding"

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/dropbox/sync/android/DbxSyncService;->access$300(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 203
    .local v0, "svcIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mConnection:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 204
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to bind to DbxSyncService."

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->debugDumpPackageAndServiceInfo(Landroid/content/Context;)V

    .line 206
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v2, "Unable to bind to DbxSyncService.  Did you remember to include it in the application manifest?"

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v0    # "svcIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 209
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->shouldBind()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mState:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->shouldBind()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTracker: Unbinding"

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mConnection:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 218
    :cond_2
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->shouldStart()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mState:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->shouldStart()Z

    move-result v1

    if-nez v1, :cond_3

    .line 219
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTracker: Start(+1)"

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dropbox/sync/android/DbxSyncService;->access$400(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 221
    .restart local v0    # "svcIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_4

    .line 222
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v2, "Unable to start DbxSyncService.  Did you remember to include it in the application manifest?"

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v0    # "svcIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->shouldStart()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mState:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->shouldStart()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/DbxSyncService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTracker: Start(-1)"

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/dropbox/sync/android/DbxSyncService;->access$400(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 231
    .restart local v0    # "svcIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    .end local v0    # "svcIntent":Landroid/content/Intent;
    :cond_4
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->mState:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
