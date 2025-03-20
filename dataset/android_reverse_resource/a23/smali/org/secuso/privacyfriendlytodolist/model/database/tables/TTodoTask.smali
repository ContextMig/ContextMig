.class public Lorg/secuso/privacyfriendlytodolist/model/database/tables/TTodoTask;
.super Ljava/lang/Object;
.source "TTodoTask.java"


# static fields
.field public static final COLUMN_DEADLINE:Ljava/lang/String; = "deadline"

.field public static final COLUMN_DEADLINE_WARNING_TIME:Ljava/lang/String; = "deadline_warning_time"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DONE:Ljava/lang/String; = "done"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LIST_POSITION:Ljava/lang/String; = "position_in_todo_list"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NUM_SUBTAKS:Ljava/lang/String; = "num_subtasks"

.field public static final COLUMN_PRIORITY:Ljava/lang/String; = "priority"

.field public static final COLUMN_PROGRESS:Ljava/lang/String; = "progress"

.field public static final COLUMN_TODO_LIST_ID:Ljava/lang/String; = "todo_list_id"

.field public static final COLUMN_TRASH:Ljava/lang/String; = "in_trash"

.field public static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE todo_task(_id INTEGER PRIMARY KEY AUTOINCREMENT, todo_list_id INTEGER NOT NULL, position_in_todo_list INTEGER NOT NULL, name TEXT NOT NULL, description TEXT NOT NULL, priority INTEGER NOT NULL DEFAULT 0, deadline DATETIME DEFAULT NULL, done INTEGER NOT NULL DEFAULT 0, progress INTEGER NOT NULL DEFAULT 0, num_subtasksINTEGER NOT NULL DEFAULT 0, deadline_warning_time NUMERIC NULL DEFAULT NULL, in_trash INTEGER NOT NULL DEFAULT 0, FOREIGN KEY (todo_list_id) REFERENCES todo_list(_id));"

.field public static final TABLE_NAME:Ljava/lang/String; = "todo_task"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lorg/secuso/privacyfriendlytodolist/model/database/tables/TTodoList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/tables/TTodoTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
