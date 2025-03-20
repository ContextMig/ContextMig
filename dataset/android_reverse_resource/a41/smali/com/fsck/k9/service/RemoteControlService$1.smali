.class Lcom/fsck/k9/service/RemoteControlService$1;
.super Ljava/lang/Object;
.source "RemoteControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/service/RemoteControlService;->startService(Landroid/content/Intent;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/service/RemoteControlService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method constructor <init>(Lcom/fsck/k9/service/RemoteControlService;Landroid/content/Intent;Lcom/fsck/k9/Preferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/service/RemoteControlService;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    iput-object p2, p0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/fsck/k9/service/RemoteControlService$1;->val$preferences:Lcom/fsck/k9/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 55
    const/4 v14, 0x0

    .line 56
    .local v14, "needsReschedule":Z
    const/4 v13, 0x0

    .line 57
    .local v13, "needsPushRestart":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "com.fsck.k9.K9RemoteControl.accountUuid"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 58
    .local v28, "uuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "com.fsck.k9.K9RemoteControl.allAccounts"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 60
    .local v6, "allAccounts":Z
    if-eqz v6, :cond_8

    .line 61
    const-string v30, "RemoteControlService changing settings for all accounts"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$preferences:Lcom/fsck/k9/Preferences;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v5

    .line 67
    .local v5, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_0
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/Account;

    .line 69
    .local v4, "account":Lcom/fsck/k9/Account;
    if-nez v6, :cond_1

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 71
    :cond_1
    const-string v30, "RemoteControlService changing settings for account %s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    .line 72
    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    .line 71
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.notificationEnabled"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 75
    .local v20, "notificationEnabled":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.ringEnabled"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 76
    .local v24, "ringEnabled":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.vibrateEnabled"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 77
    .local v29, "vibrateEnabled":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.pushClasses"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 78
    .local v23, "pushClasses":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.pollClasses"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 79
    .local v21, "pollClasses":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.pollFrequency"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 81
    .local v22, "pollFrequency":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 82
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/fsck/k9/Account;->setNotifyNewMail(Z)V

    .line 84
    :cond_2
    if-eqz v24, :cond_3

    .line 85
    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v30

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/fsck/k9/NotificationSetting;->setRingEnabled(Z)V

    .line 87
    :cond_3
    if-eqz v29, :cond_4

    .line 88
    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/fsck/k9/NotificationSetting;->setVibrate(Z)V

    .line 90
    :cond_4
    if-eqz v23, :cond_5

    .line 91
    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/fsck/k9/Account;->setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)Z

    move-result v30

    or-int v13, v13, v30

    .line 93
    :cond_5
    if-eqz v21, :cond_6

    .line 94
    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/fsck/k9/Account;->setFolderSyncMode(Lcom/fsck/k9/Account$FolderMode;)Z

    move-result v30

    or-int v14, v14, v30

    .line 96
    :cond_6
    if-eqz v22, :cond_a

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/service/RemoteControlService;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v32, 0x7f090003

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "allowedFrequencies":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v32, v0

    const/16 v30, 0x0

    :goto_2
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    aget-object v8, v7, v30

    .line 99
    .local v8, "allowedFrequency":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 101
    .local v17, "newInterval":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/fsck/k9/Account;->setAutomaticCheckIntervalMinutes(I)Z

    move-result v33

    or-int v14, v14, v33

    .line 98
    .end local v17    # "newInterval":Ljava/lang/Integer;
    :cond_7
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 63
    .end local v4    # "account":Lcom/fsck/k9/Account;
    .end local v5    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .end local v7    # "allowedFrequencies":[Ljava/lang/String;
    .end local v8    # "allowedFrequency":Ljava/lang/String;
    .end local v20    # "notificationEnabled":Ljava/lang/String;
    .end local v21    # "pollClasses":Ljava/lang/String;
    .end local v22    # "pollFrequency":Ljava/lang/String;
    .end local v23    # "pushClasses":Ljava/lang/String;
    .end local v24    # "ringEnabled":Ljava/lang/String;
    .end local v29    # "vibrateEnabled":Ljava/lang/String;
    :cond_8
    const-string v30, "RemoteControlService changing settings for account with UUID %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v28, v31, v32

    invoke-static/range {v30 .. v31}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 144
    .end local v6    # "allAccounts":Z
    .end local v28    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 145
    .local v10, "e":Ljava/lang/Exception;
    const-string v30, "Could not handle K9_SET"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v10, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v30, v0

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v27

    .line 147
    .local v27, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    .line 149
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v27    # "toast":Landroid/widget/Toast;
    :cond_9
    :goto_3
    return-void

    .line 105
    .restart local v4    # "account":Lcom/fsck/k9/Account;
    .restart local v5    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .restart local v6    # "allAccounts":Z
    .restart local v20    # "notificationEnabled":Ljava/lang/String;
    .restart local v21    # "pollClasses":Ljava/lang/String;
    .restart local v22    # "pollFrequency":Ljava/lang/String;
    .restart local v23    # "pushClasses":Ljava/lang/String;
    .restart local v24    # "ringEnabled":Ljava/lang/String;
    .restart local v28    # "uuid":Ljava/lang/String;
    .restart local v29    # "vibrateEnabled":Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    goto/16 :goto_1

    .line 109
    .end local v4    # "account":Lcom/fsck/k9/Account;
    .end local v20    # "notificationEnabled":Ljava/lang/String;
    .end local v21    # "pollClasses":Ljava/lang/String;
    .end local v22    # "pollFrequency":Ljava/lang/String;
    .end local v23    # "pushClasses":Ljava/lang/String;
    .end local v24    # "ringEnabled":Ljava/lang/String;
    .end local v29    # "vibrateEnabled":Ljava/lang/String;
    :cond_b
    const-string v30, "RemoteControlService changing global settings"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "com.fsck.k9.K9RemoteControl.backgroundOperations"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, "backgroundOps":Ljava/lang/String;
    const-string v30, "ALWAYS"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_c

    const-string v30, "NEVER"

    .line 113
    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_c

    const-string v30, "WHEN_CHECKED_AUTO_SYNC"

    .line 114
    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 115
    :cond_c
    invoke-static {v9}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$BACKGROUND_OPS;

    move-result-object v16

    .line 116
    .local v16, "newBackgroundOps":Lcom/fsck/k9/K9$BACKGROUND_OPS;
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/K9;->setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)Z

    move-result v15

    .line 117
    .local v15, "needsReset":Z
    or-int/2addr v13, v15

    .line 118
    or-int/2addr v14, v15

    .line 121
    .end local v15    # "needsReset":Z
    .end local v16    # "newBackgroundOps":Lcom/fsck/k9/K9$BACKGROUND_OPS;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "com.fsck.k9.K9RemoteControl.theme"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 122
    .local v26, "theme":Ljava/lang/String;
    if-eqz v26, :cond_e

    .line 123
    const-string v30, "DARK"

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    sget-object v30, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    :goto_4
    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/K9;->setK9Theme(Lcom/fsck/k9/K9$Theme;)V

    .line 126
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$preferences:Lcom/fsck/k9/Preferences;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v25

    .line 128
    .local v25, "storage":Lcom/fsck/k9/preferences/Storage;
    invoke-virtual/range {v25 .. v25}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v11

    .line 129
    .local v11, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-static {v11}, Lcom/fsck/k9/K9;->save(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 130
    invoke-virtual {v11}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 132
    if-eqz v14, :cond_f

    .line 133
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v30, v0

    const-class v31, Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v12, "i":Landroid/content/Intent;
    const-string v30, "com.fsck.k9.service.RemoteControlService.RESCHEDULE_ACTION"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    const-wide/16 v32, 0x2710

    add-long v18, v30, v32

    .line 136
    .local v18, "nextTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v12}, Lcom/fsck/k9/service/BootReceiver;->scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V

    .line 138
    .end local v12    # "i":Landroid/content/Intent;
    .end local v18    # "nextTime":J
    :cond_f
    if-eqz v13, :cond_9

    .line 139
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v30, v0

    const-class v31, Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v30, "com.fsck.k9.service.RemoteControlService.PUSH_RESTART_ACTION"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    const-wide/16 v32, 0x2710

    add-long v18, v30, v32

    .line 142
    .restart local v18    # "nextTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v12}, Lcom/fsck/k9/service/BootReceiver;->scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V

    goto/16 :goto_3

    .line 123
    .end local v11    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .end local v12    # "i":Landroid/content/Intent;
    .end local v18    # "nextTime":J
    .end local v25    # "storage":Lcom/fsck/k9/preferences/Storage;
    :cond_10
    sget-object v30, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
