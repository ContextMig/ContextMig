.class Lcom/fsck/k9/mailstore/migrations/MigrationTo60;
.super Ljava/lang/Object;
.source "MigrationTo60.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;
    }
.end annotation


# static fields
.field private static final PENDING_COMMAND_APPEND:Ljava/lang/String; = "com.fsck.k9.MessagingController.append"

.field private static final PENDING_COMMAND_EMPTY_TRASH:Ljava/lang/String; = "com.fsck.k9.MessagingController.emptyTrash"

.field private static final PENDING_COMMAND_EXPUNGE:Ljava/lang/String; = "com.fsck.k9.MessagingController.expunge"

.field private static final PENDING_COMMAND_MARK_ALL_AS_READ:Ljava/lang/String; = "com.fsck.k9.MessagingController.markAllAsRead"

.field private static final PENDING_COMMAND_MOVE_OR_COPY:Ljava/lang/String; = "com.fsck.k9.MessagingController.moveOrCopy"

.field private static final PENDING_COMMAND_MOVE_OR_COPY_BULK:Ljava/lang/String; = "com.fsck.k9.MessagingController.moveOrCopyBulk"

.field private static final PENDING_COMMAND_MOVE_OR_COPY_BULK_NEW:Ljava/lang/String; = "com.fsck.k9.MessagingController.moveOrCopyBulkNew"

.field private static final PENDING_COMMAND_SET_FLAG:Ljava/lang/String; = "com.fsck.k9.MessagingController.setFlag"

.field private static final PENDING_COMMAND_SET_FLAG_BULK:Ljava/lang/String; = "com.fsck.k9.MessagingController.setFlagBulk"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRAGMA table_info("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 70
    .local v0, "columnCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 71
    .local v2, "foundColumn":Z
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "currentColumnName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const/4 v2, 0x1

    .line 78
    .end local v1    # "currentColumnName":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 79
    return v2
.end method

.method private static fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x9

    .line 226
    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 228
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 229
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 230
    aget-byte v1, v0, v4

    .line 231
    .local v1, "ch":B
    const/16 v7, 0x25

    if-ne v1, v7, :cond_2

    .line 232
    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    add-int/lit8 v3, v7, -0x30

    .line 233
    .local v3, "h":I
    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v0, v7

    add-int/lit8 v5, v7, -0x30

    .line 234
    .local v5, "l":I
    if-le v3, v8, :cond_0

    .line 235
    add-int/lit8 v3, v3, -0x7

    .line 237
    :cond_0
    if-le v5, v8, :cond_1

    .line 238
    add-int/lit8 v5, v5, -0x7

    .line 240
    :cond_1
    shl-int/lit8 v7, v3, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 241
    add-int/lit8 v4, v4, 0x2

    .line 247
    .end local v3    # "h":I
    .end local v5    # "l":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    :cond_2
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_3

    .line 243
    const/16 v7, 0x20

    aput-byte v7, v0, v6

    goto :goto_1

    .line 245
    :cond_3
    aget-byte v7, v0, v4

    aput-byte v7, v0, v6

    goto :goto_1

    .line 249
    .end local v1    # "ch":B
    :cond_4
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v0, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v7
.end method

.method private static getPendingCommands(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 13
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    const/4 v11, 0x0

    .line 206
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "pending_commands"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "command"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "arguments"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 208
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v10, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;>;"
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v9, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    invoke-direct {v9}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;-><init>()V

    .line 211
    .local v9, "command":Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->command:Ljava/lang/String;

    .line 212
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "arguments":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    .line 214
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v0, v9, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    array-length v0, v0

    if-ge v12, v0, :cond_0

    .line 215
    iget-object v0, v9, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    iget-object v1, v9, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-static {v1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    .line 214
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 217
    :cond_0
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    .end local v8    # "arguments":Ljava/lang/String;
    .end local v9    # "command":Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;
    .end local v10    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;>;"
    .end local v12    # "i":I
    :catchall_0
    move-exception v0

    invoke-static {v11}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    .restart local v10    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;>;"
    :cond_1
    invoke-static {v11}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 219
    return-object v10
.end method

.method private static migrateCommandAppend(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 4
    .param p0, "command"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    .prologue
    .line 198
    iget-object v2, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 199
    .local v0, "folder":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 200
    .local v1, "uid":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    move-result-object v2

    return-object v2
.end method

.method private static migrateCommandEmptyTrash()Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;->create()Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method private static migrateCommandExpunge(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 3
    .param p0, "command"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 120
    .local v0, "folder":Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;->create(Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;

    move-result-object v1

    return-object v1
.end method

.method private static migrateCommandMarkAllAsRead(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 2
    .param p0, "command"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->create(Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    move-result-object v0

    return-object v0
.end method

.method private static migrateCommandMoveOrCopy(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 6
    .param p0, "command"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    .prologue
    .line 128
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v2, v4, v5

    .line 129
    .local v2, "srcFolder":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v4, v5

    .line 130
    .local v3, "uid":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v0, v4, v5

    .line 131
    .local v0, "destFolder":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 133
    .local v1, "isCopy":Z
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v0, v1, v4}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->create(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    move-result-object v4

    return-object v4
.end method

.method private static migrateCommandMoveOrCopyBulk(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 8
    .param p0, "command"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    iget-object v2, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    array-length v0, v2

    .line 161
    .local v0, "len":I
    new-instance v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    invoke-direct {v1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;-><init>()V

    .line 162
    .local v1, "newCommand":Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;
    const-string v2, "com.fsck.k9.MessagingController.moveOrCopyBulkNew"

    iput-object v2, v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->command:Ljava/lang/String;

    .line 163
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    .line 164
    iget-object v2, v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    .line 165
    iget-object v2, v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v5

    .line 166
    iget-object v2, v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v6

    .line 167
    iget-object v2, v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 168
    iget-object v2, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    iget-object v3, v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v4, 0x4

    add-int/lit8 v5, v0, -0x3

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    invoke-static {v1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migratePendingCommand(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v2

    return-object v2
.end method

.method private static migrateCommandMoveOrCopyBulkNew(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 11
    .param p0, "command"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    .prologue
    .line 137
    iget-object v8, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v5, v8, v9

    .line 138
    .local v5, "srcFolder":Ljava/lang/String;
    iget-object v8, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v0, v8, v9

    .line 139
    .local v0, "destFolder":Ljava/lang/String;
    iget-object v8, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 140
    .local v3, "isCopy":Z
    iget-object v8, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 142
    .local v1, "hasNewUids":Z
    if-eqz v1, :cond_1

    .line 143
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v6, "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x4

    div-int/lit8 v4, v8, 0x2

    .line 145
    .local v4, "offset":I
    const/4 v2, 0x4

    .local v2, "i":I
    :goto_0
    add-int/lit8 v8, v4, 0x4

    if-ge v2, v8, :cond_0

    .line 146
    iget-object v8, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    aget-object v8, v8, v2

    iget-object v9, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    add-int v10, v2, v4

    aget-object v9, v9, v10

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {v5, v0, v3, v6}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->create(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    move-result-object v8

    .line 154
    .end local v2    # "i":I
    .end local v4    # "offset":I
    .end local v6    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v8

    .line 151
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x4

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v7, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    array-length v10, v10

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-static {v5, v0, v3, v7}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->create(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    move-result-object v8

    goto :goto_1
.end method

.method private static migrateCommandSetFlag(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 6
    .param p0, "command"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    .prologue
    .line 178
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 179
    .local v1, "folder":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v4, v5

    .line 180
    .local v3, "uid":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 181
    .local v2, "newState":Z
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    .line 183
    .local v0, "flag":Lcom/fsck/k9/mail/Flag;
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v2, v0, v4}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->create(Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    move-result-object v4

    return-object v4
.end method

.method private static migrateCommandSetFlagBulk(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 7
    .param p0, "command"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    .prologue
    .line 187
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 188
    .local v1, "folder":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 189
    .local v2, "newState":Z
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    .line 191
    .local v0, "flag":Lcom/fsck/k9/mail/Flag;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->arguments:[Ljava/lang/String;

    array-length v6, v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-static {v1, v2, v0, v3}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->create(Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    move-result-object v4

    return-object v4
.end method

.method static migratePendingCommand(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 3
    .param p0, "oldPendingCommand"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;->command:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to migrate unknown pending command!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :sswitch_0
    const-string v2, "com.fsck.k9.MessagingController.append"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.fsck.k9.MessagingController.setFlagBulk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.fsck.k9.MessagingController.setFlag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "com.fsck.k9.MessagingController.markAllAsRead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "com.fsck.k9.MessagingController.moveOrCopyBulk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "com.fsck.k9.MessagingController.moveOrCopyBulkNew"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "com.fsck.k9.MessagingController.moveOrCopy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "com.fsck.k9.MessagingController.emptyTrash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "com.fsck.k9.MessagingController.expunge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migrateCommandAppend(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v0

    .line 110
    :goto_1
    return-object v0

    .line 89
    :pswitch_1
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migrateCommandSetFlagBulk(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v0

    goto :goto_1

    .line 92
    :pswitch_2
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migrateCommandSetFlag(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v0

    goto :goto_1

    .line 95
    :pswitch_3
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migrateCommandMarkAllAsRead(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v0

    goto :goto_1

    .line 98
    :pswitch_4
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migrateCommandMoveOrCopyBulk(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v0

    goto :goto_1

    .line 101
    :pswitch_5
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migrateCommandMoveOrCopyBulkNew(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v0

    goto :goto_1

    .line 104
    :pswitch_6
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migrateCommandMoveOrCopy(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v0

    goto :goto_1

    .line 107
    :pswitch_7
    invoke-static {}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migrateCommandEmptyTrash()Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v0

    goto :goto_1

    .line 110
    :pswitch_8
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migrateCommandExpunge(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v0

    goto :goto_1

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c636803 -> :sswitch_4
        -0x77ac2fc2 -> :sswitch_1
        -0x63548ef4 -> :sswitch_2
        -0x4a9c2ec4 -> :sswitch_0
        -0x389382c6 -> :sswitch_3
        -0x3403c39d -> :sswitch_5
        -0x27a2b10e -> :sswitch_8
        -0x152c0fb5 -> :sswitch_6
        0x104fe70d -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static migratePendingCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 43
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v5, "pendingCommands":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;>;"
    const-string v6, "pending_commands"

    const-string v7, "arguments"

    invoke-static {p0, v6, v7}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 46
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->getPendingCommands(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;

    .line 47
    .local v2, "oldPendingCommand":Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;
    invoke-static {v2}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migratePendingCommand(Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    move-result-object v1

    .line 48
    .local v1, "newPendingCommand":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v1    # "newPendingCommand":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .end local v2    # "oldPendingCommand":Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;
    :cond_0
    const-string v6, "DROP TABLE IF EXISTS pending_commands"

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v6, "CREATE TABLE pending_commands (id INTEGER PRIMARY KEY, command TEXT, data TEXT)"

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/fsck/k9/controller/PendingCommandSerializer;->getInstance()Lcom/fsck/k9/controller/PendingCommandSerializer;

    move-result-object v4

    .line 59
    .local v4, "pendingCommandSerializer":Lcom/fsck/k9/controller/PendingCommandSerializer;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    .line 60
    .local v3, "pendingCommand":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "command"

    invoke-virtual {v3}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v7, "data"

    invoke-virtual {v4, v3}, Lcom/fsck/k9/controller/PendingCommandSerializer;->serialize(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v7, "pending_commands"

    const-string v8, "command"

    invoke-virtual {p0, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 66
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "pendingCommand":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .end local v4    # "pendingCommandSerializer":Lcom/fsck/k9/controller/PendingCommandSerializer;
    :cond_1
    return-void
.end method
