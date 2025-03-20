.class public final Lorg/secuso/privacyfriendlytodolist/model/database/tables/TTodoSubTask;
.super Ljava/lang/Object;
.source "TTodoSubTask.java"


# static fields
.field public static final COLUMN_DONE:Ljava/lang/String; = "done"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_TASK_ID:Ljava/lang/String; = "todo_task_id"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TRASH:Ljava/lang/String; = "in_trash"

.field public static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE todo_subtask(_id INTEGER PRIMARY KEY AUTOINCREMENT, todo_task_id INTEGER NOT NULL, title TEXT NOT NULL, done INTEGER, in_trash INTEGER NOT NULL DEFAULT 0, FOREIGN KEY (todo_task_id) REFERENCES todo_task(_id));"

.field public static final TABLE_NAME:Ljava/lang/String; = "todo_subtask"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lorg/secuso/privacyfriendlytodolist/model/database/tables/TTodoList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/tables/TTodoSubTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
