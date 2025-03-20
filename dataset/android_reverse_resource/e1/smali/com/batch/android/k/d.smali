.class public final Lcom/batch/android/k/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "attributes"

.field protected static final b:Ljava/lang/String; = "name"

.field protected static final c:Ljava/lang/String; = "type"

.field protected static final d:Ljava/lang/String; = "value"

.field protected static final e:Ljava/lang/String; = "changeset"

.field protected static final f:Ljava/lang/String; = "tags"

.field protected static final g:Ljava/lang/String; = "collection"

.field protected static final h:Ljava/lang/String; = "value"

.field protected static final i:Ljava/lang/String; = "changeset"

.field private static final j:Ljava/lang/String; = "ba_user_profile.db"

.field private static final k:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 37
    const-string v0, "ba_user_profile.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 43
    const-string v0, "create table attributes(name text not null, type integer, value text, changeset integer, unique(name) on conflict replace, unique(name,type,value) on conflict abort);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "create table tags(collection text not null, value text not null, changeset integer, unique(collection,value) on conflict abort);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 63
    return-void
.end method
