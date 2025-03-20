.class Lcom/fsck/k9/mailstore/LocalFolder$14;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalFolder;

.field final synthetic val$lDestFolder:Lcom/fsck/k9/mailstore/LocalFolder;

.field final synthetic val$msgs:Ljava/util/List;

.field final synthetic val$uidMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$lDestFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$msgs:Ljava/util/List;

    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$uidMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$14;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 24
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1060
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$lDestFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$msgs:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/mail/Message;

    .line 1062
    .local v8, "message":Lcom/fsck/k9/mail/Message;
    move-object v0, v8

    check-cast v0, Lcom/fsck/k9/mailstore/LocalMessage;

    move-object v7, v0

    .line 1064
    .local v7, "lMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v15

    .line 1066
    .local v15, "oldUID":Ljava/lang/String;
    const-string v18, "Updating folder_id to %s for message with UID %s, id %d currently in folder %s"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$lDestFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    move-object/from16 v21, v0

    .line 1068
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    .line 1069
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    .line 1070
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$14;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    move-object/from16 v21, v0

    .line 1071
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 1066
    invoke-static/range {v18 .. v19}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "K9LOCAL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1074
    .local v14, "newUid":Ljava/lang/String;
    invoke-virtual {v8, v14}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$uidMap:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$lDestFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/fsck/k9/mailstore/LocalFolder;->access$1300(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mailstore/ThreadInfo;

    move-result-object v16

    .line 1084
    .local v16, "threadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v10

    .line 1085
    .local v10, "msgId":J
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v18

    .line 1087
    .local v6, "idArg":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1088
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v18, "folder_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$lDestFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1089
    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v18, "messages"

    const-string v19, "id = ?"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1095
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1096
    const-string v18, "message_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1097
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->threadId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_3

    .line 1098
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->rootId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_0

    .line 1099
    const-string v18, "root"

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->rootId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1102
    :cond_0
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->parentId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_1

    .line 1103
    const-string v18, "parent"

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->parentId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1106
    :cond_1
    const-string v18, "threads"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1119
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$14;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1121
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1122
    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v18, "flags"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1124
    const-string v18, "read"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1125
    const-string v18, "deleted"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    const-string v18, "folder_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$14;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/mailstore/LocalFolder;->access$100(Lcom/fsck/k9/mailstore/LocalFolder;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1127
    const-string v18, "empty"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v9

    .line 1130
    .local v9, "messageId":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1131
    const-string v18, "message_id"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_2
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->msgId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_4

    .line 1139
    move-object/from16 v0, v16

    iget-wide v12, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->msgId:J

    .line 1141
    .local v12, "newId":J
    const-string v18, "messages"

    const-string v19, "id = ?"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 1142
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 1141
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1152
    :goto_2
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1153
    const-string v18, "message_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1154
    const-string v18, "threads"

    const-string v19, "id = ?"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 1155
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getThreadId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 1154
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1157
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "idArg":[Ljava/lang/String;
    .end local v7    # "lMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v8    # "message":Lcom/fsck/k9/mail/Message;
    .end local v9    # "messageId":Ljava/lang/String;
    .end local v10    # "msgId":J
    .end local v12    # "newId":J
    .end local v14    # "newUid":Ljava/lang/String;
    .end local v15    # "oldUID":Ljava/lang/String;
    .end local v16    # "threadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    :catch_0
    move-exception v5

    .line 1158
    .local v5, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v17, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v17

    .line 1108
    .end local v5    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "idArg":[Ljava/lang/String;
    .restart local v7    # "lMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .restart local v8    # "message":Lcom/fsck/k9/mail/Message;
    .restart local v10    # "msgId":J
    .restart local v14    # "newUid":Ljava/lang/String;
    .restart local v15    # "oldUID":Ljava/lang/String;
    .restart local v16    # "threadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    :cond_3
    :try_start_1
    const-string v18, "threads"

    const-string v19, "id = ?"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->threadId:J

    move-wide/from16 v22, v0

    .line 1109
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 1108
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1144
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_4
    const-string v18, "messages"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    .restart local v12    # "newId":J
    goto :goto_2

    .line 1160
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "idArg":[Ljava/lang/String;
    .end local v7    # "lMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v8    # "message":Lcom/fsck/k9/mail/Message;
    .end local v9    # "messageId":Ljava/lang/String;
    .end local v10    # "msgId":J
    .end local v12    # "newId":J
    .end local v14    # "newUid":Ljava/lang/String;
    .end local v15    # "oldUID":Ljava/lang/String;
    .end local v16    # "threadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    :cond_5
    const/16 v17, 0x0

    return-object v17
.end method
