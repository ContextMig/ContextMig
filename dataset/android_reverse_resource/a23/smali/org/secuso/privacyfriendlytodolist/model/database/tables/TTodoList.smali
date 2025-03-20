.class public final Lorg/secuso/privacyfriendlytodolist/model/database/tables/TTodoList;
.super Ljava/lang/Object;
.source "TTodoList.java"


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE todo_list(_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL);"

.field public static final TABLE_NAME:Ljava/lang/String; = "todo_list"

.field private static final TAG:Ljava/lang/String; = "TTodoList"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
