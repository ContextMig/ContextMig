.class public Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;
.super Ljava/lang/Object;
.source "DBQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;
    }
.end annotation


# static fields
.field public static final NO_CHANGES:I = -0x2

.field private static final TAG:Ljava/lang/String; = "DBQueryHandler"


# instance fields
.field public dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteTodoList(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoList;)V
    .locals 5

    .line 164
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v0

    int-to-long v0, v0

    .line 167
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 168
    invoke-static {p0, v4}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->putTaskInTrash(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 169
    :cond_0
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tasks put into trash"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "_id=?"

    const/4 v3, 0x1

    .line 172
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "todo_list"

    .line 173
    invoke-virtual {p0, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 175
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " lists removed from database"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static deleteTodoSubTask(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I
    .locals 3

    .line 475
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getId()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "_id = ?"

    const/4 v2, 0x1

    .line 478
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v0, "todo_subtask"

    .line 479
    invoke-virtual {p0, v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static deleteTodoTask(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I
    .locals 5

    .line 180
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v0

    int-to-long v0, v0

    .line 183
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 184
    invoke-static {p0, v4}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->deleteTodoSubTask(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 186
    :cond_0
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subtasks removed from database"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "_id = ?"

    const/4 v3, 0x1

    .line 189
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "todo_task"

    .line 190
    invoke-virtual {p0, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static extractTodoTask(Landroid/database/Cursor;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
    .locals 14

    const-string v0, "_id"

    .line 128
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "position_in_todo_list"

    .line 129
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "name"

    .line 130
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    .line 131
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "done"

    .line 132
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-string v7, "progress"

    .line 133
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "deadline"

    .line 134
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "deadline_warning_time"

    .line 135
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "priority"

    .line 136
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "todo_list_id"

    .line 137
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "in_trash"

    .line 138
    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-lez p0, :cond_1

    move v5, v6

    .line 140
    :cond_1
    new-instance p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;-><init>()V

    .line 141
    invoke-virtual {p0, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setName(Ljava/lang/String;)V

    int-to-long v12, v8

    .line 142
    invoke-virtual {p0, v12, v13}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDeadline(J)V

    .line 143
    invoke-virtual {p0, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDescription(Ljava/lang/String;)V

    .line 144
    invoke-static {v10}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->fromInt(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setPriority(Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)V

    int-to-long v2, v9

    .line 145
    invoke-virtual {p0, v2, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setReminderTime(J)V

    .line 146
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setId(I)V

    .line 147
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setPositionInList(I)V

    .line 148
    invoke-virtual {p0, v7}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setProgress(I)V

    .line 149
    invoke-virtual {p0, v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDone(Z)V

    .line 150
    invoke-virtual {p0, v11}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setListId(I)V

    .line 151
    invoke-virtual {p0, v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setInTrash(Z)V

    return-object p0
.end method

.method public static getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "todo_list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 291
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "_id"

    .line 296
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "name"

    .line 297
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    new-instance v4, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-direct {v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;-><init>()V

    .line 300
    invoke-virtual {v4, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setName(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v4, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setId(I)V

    .line 302
    invoke-static {p0, v2, v3}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getTasksByListId(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setTasks(Ljava/util/ArrayList;)V

    .line 303
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 307
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static getAllToDoTasks(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "in_trash =0"

    :try_start_0
    const-string v2, "todo_task"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 199
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string v2, "_id"

    .line 203
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "todo_list_id"

    .line 204
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "name"

    .line 205
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    .line 206
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "progress"

    .line 207
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "deadline"

    .line 208
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "priority"

    .line 209
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "done"

    .line 210
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lez v10, :cond_1

    move v10, v12

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    const-string v13, "deadline_warning_time"

    .line 211
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "in_trash"

    .line 212
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-lez v14, :cond_2

    move v11, v12

    .line 215
    :cond_2
    new-instance v12, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {v12}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;-><init>()V

    .line 216
    invoke-virtual {v12, v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v12, v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDescription(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v12, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setId(I)V

    int-to-long v4, v2

    .line 219
    invoke-static {p0, v4, v5}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getSubTasksByTaskId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setSubTasks(Ljava/util/ArrayList;)V

    .line 220
    invoke-virtual {v12, v6}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setProgress(I)V

    .line 221
    invoke-virtual {v12, v7, v8}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDeadline(J)V

    .line 222
    invoke-static {v9}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->fromInt(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setPriority(Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)V

    .line 223
    invoke-virtual {v12, v10}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDone(Z)V

    int-to-long v4, v13

    .line 224
    invoke-virtual {v12, v4, v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setReminderTime(J)V

    .line 225
    invoke-virtual {v12, v11}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setInTrash(Z)V

    .line 226
    invoke-virtual {v12, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setListId(I)V

    .line 227
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 231
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-object v0
.end method

.method public static getBin(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "in_trash >0"

    :try_start_0
    const-string v2, "todo_task"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 245
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string v2, "_id"

    .line 249
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "todo_list_id"

    .line 250
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "name"

    .line 251
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    .line 252
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "progress"

    .line 253
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "deadline"

    .line 254
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "priority"

    .line 255
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "done"

    .line 256
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lez v10, :cond_1

    move v10, v12

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    const-string v13, "deadline_warning_time"

    .line 257
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "in_trash"

    .line 258
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-lez v14, :cond_2

    move v11, v12

    .line 261
    :cond_2
    new-instance v12, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {v12}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;-><init>()V

    .line 262
    invoke-virtual {v12, v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setName(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v12, v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDescription(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v12, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setId(I)V

    int-to-long v4, v2

    .line 265
    invoke-static {p0, v4, v5}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getSubTasksByTaskId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setSubTasks(Ljava/util/ArrayList;)V

    .line 266
    invoke-virtual {v12, v6}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setProgress(I)V

    .line 267
    invoke-virtual {v12, v7, v8}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDeadline(J)V

    .line 268
    invoke-static {v9}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->fromInt(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setPriority(Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)V

    .line 269
    invoke-virtual {v12, v10}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDone(Z)V

    int-to-long v4, v13

    .line 270
    invoke-virtual {v12, v4, v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setReminderTime(J)V

    .line 271
    invoke-virtual {v12, v11}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setInTrash(Z)V

    .line 272
    invoke-virtual {v12, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setListId(I)V

    .line 273
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 277
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-object v0
.end method

.method public static getNextDueTask(Landroid/database/sqlite/SQLiteDatabase;J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
    .locals 2

    const-string v0, "SELECT * FROM todo_task WHERE done=0 AND deadline_warning_time > 0 AND in_trash=0 AND deadline_warning_time-? > 0 ORDER BY ABS(deadline_warning_time -?) LIMIT 1;"

    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->extractTodoTask(Landroid/database/Cursor;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, p2

    .line 67
    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-object p1
.end method

.method private static getSubTasksByTaskId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "todo_task_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v4, "todo_subtask"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    .line 343
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 344
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 347
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "_id"

    .line 349
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "title"

    .line 350
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "done"

    .line 351
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const-string v6, "in_trash"

    .line 352
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_2

    move v4, v5

    .line 354
    :cond_2
    new-instance v5, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-direct {v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;-><init>()V

    .line 355
    invoke-virtual {v5, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setId(I)V

    .line 356
    invoke-virtual {v5, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setName(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v5, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setDone(Z)V

    .line 358
    invoke-virtual {v5, p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setTaskId(J)V

    .line 359
    invoke-virtual {v5, v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setInTrash(Z)V

    .line 360
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 365
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static getTasksByListId(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "todo_list_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "in_trash"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "todo_task"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 319
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 322
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    :cond_0
    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->extractTodoTask(Landroid/database/Cursor;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object v1

    .line 326
    invoke-virtual {v1, p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setListName(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getSubTasksByTaskId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setSubTasks(Ljava/util/ArrayList;)V

    .line 328
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 333
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public static getTasksToRemind(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashSet;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, " AND "

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id <> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    const-string p3, ";"

    .line 97
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM todo_task WHERE done = 0 AND in_trash=0 AND deadline_warning_time > 0 AND deadline_warning_time <= ? "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    .line 100
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 102
    :try_start_0
    invoke-virtual {p0, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    :cond_2
    invoke-static {p3}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->extractTodoTask(Landroid/database/Cursor;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 113
    :cond_3
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    :catch_0
    :goto_1
    invoke-static {p0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getNextDueTask(Landroid/database/sqlite/SQLiteDatabase;J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 121
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public static putSubtaskInTrash(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I
    .locals 5

    .line 500
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getId()I

    move-result p1

    int-to-long v0, p1

    .line 502
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "in_trash"

    const/4 v3, 0x1

    .line 503
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_id = ?"

    .line 506
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "todo_subtask"

    .line 507
    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static putTaskInTrash(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I
    .locals 7

    .line 483
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v0

    int-to-long v0, v0

    .line 484
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "in_trash"

    const/4 v4, 0x1

    .line 485
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 489
    invoke-static {p0, v6}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->putSubtaskInTrash(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    .line 491
    :cond_0
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " subtasks put into bin"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "_id = ?"

    .line 494
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "todo_task"

    .line 496
    invoke-virtual {p0, v0, v2, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static recoverSubtasks(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I
    .locals 5

    .line 528
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getId()I

    move-result p1

    int-to-long v0, p1

    .line 530
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "in_trash"

    const/4 v3, 0x0

    .line 531
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_id = ?"

    const/4 v4, 0x1

    .line 534
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "todo_subtask"

    .line 535
    invoke-virtual {p0, v0, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static recoverTasks(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I
    .locals 6

    .line 511
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v0

    int-to-long v0, v0

    .line 512
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "in_trash"

    const/4 v4, 0x0

    .line 513
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 517
    invoke-static {p0, v5}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->recoverSubtasks(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 519
    :cond_0
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subtasks put into bin"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "_id = ?"

    const/4 v3, 0x1

    .line 522
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "todo_task"

    .line 524
    invoke-virtual {p0, v0, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static saveTodoListInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoList;)I
    .locals 5

    .line 449
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    move-result-object v0

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->NO_DB_ACTION:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    const/4 v2, -0x2

    if-eq v0, v1, :cond_2

    .line 450
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 451
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    move-result-object v1

    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->INSERT_TO_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    if-ne v1, v3, :cond_0

    const-string v1, "todo_list"

    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v2, v0

    .line 455
    sget-object p0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Todo list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was inserted into the database (return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    move-result-object v1

    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->UPDATE_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    if-ne v1, v3, :cond_1

    const-string v1, "_id=?"

    const/4 v2, 0x1

    .line 458
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "todo_list"

    .line 459
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 460
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v2

    .line 461
    sget-object p0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Todo list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was updated (return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setUnchanged()V

    :cond_2
    return v2
.end method

.method public static saveTodoSubTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I
    .locals 5

    .line 375
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    move-result-object v0

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->NO_DB_ACTION:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    const/4 v2, -0x2

    if-eq v0, v1, :cond_2

    .line 376
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 377
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "done"

    .line 378
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getDone()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "todo_task_id"

    .line 379
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getTaskId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "in_trash"

    .line 380
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->isInTrash()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 382
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    move-result-object v1

    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->INSERT_TO_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    if-ne v1, v3, :cond_0

    const-string v1, "todo_subtask"

    const/4 v2, 0x0

    .line 383
    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v2, v0

    .line 384
    sget-object p0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Todo subtask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was inserted into the database (return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    move-result-object v1

    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->UPDATE_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    if-ne v1, v3, :cond_1

    const-string v1, "_id=?"

    const/4 v2, 0x1

    .line 387
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "todo_subtask"

    .line 388
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 389
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getId()I

    move-result v2

    .line 390
    sget-object p0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Todo subtask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was updated (return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setUnchanged()V

    :cond_2
    return v2
.end method

.method public static saveTodoTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I
    .locals 5

    .line 407
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    move-result-object v0

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->NO_DB_ACTION:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    const/4 v2, -0x2

    if-eq v0, v1, :cond_2

    .line 409
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 410
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    .line 411
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "progress"

    .line 412
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "deadline"

    .line 413
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "deadline_warning_time"

    .line 414
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getReminderTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "priority"

    .line 415
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getPriority()Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v3

    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "todo_list_id"

    .line 416
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "position_in_todo_list"

    .line 417
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "done"

    .line 418
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "in_trash"

    .line 419
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->isInTrash()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 421
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    move-result-object v1

    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->INSERT_TO_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    if-ne v1, v3, :cond_0

    const-string v1, "todo_task"

    const/4 v2, 0x0

    .line 422
    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v2, v0

    .line 423
    sget-object p0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Todo task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was inserted into the database (return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    move-result-object v1

    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->UPDATE_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    if-ne v1, v3, :cond_1

    const-string v1, "_id=?"

    const/4 v2, 0x1

    .line 426
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "todo_task"

    .line 427
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 428
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v2

    .line 429
    sget-object p0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Todo task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was updated (return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setUnchanged()V

    :cond_2
    return v2
.end method
