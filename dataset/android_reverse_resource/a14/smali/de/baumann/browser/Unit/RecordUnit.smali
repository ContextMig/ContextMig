.class public Lde/baumann/browser/Unit/RecordUnit;
.super Ljava/lang/Object;
.source "RecordUnit.java"


# static fields
.field public static final COLUMN_DOMAIN:Ljava/lang/String; = "DOMAIN"

.field public static final COLUMN_FILENAME:Ljava/lang/String; = "FILENAME"

.field public static final COLUMN_ORDINAL:Ljava/lang/String; = "ORDINAL"

.field public static final COLUMN_TIME:Ljava/lang/String; = "TIME"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "TITLE"

.field public static final COLUMN_URL:Ljava/lang/String; = "URL"

.field public static final CREATE_BOOKMARKS:Ljava/lang/String; = "CREATE TABLE BOOKMARKS ( TITLE text, URL text, TIME integer)"

.field public static final CREATE_COOKIE:Ljava/lang/String; = "CREATE TABLE COOKIE ( DOMAIN text)"

.field public static final CREATE_GRID:Ljava/lang/String; = "CREATE TABLE GRID ( TITLE text, URL text, FILENAME text, ORDINAL integer)"

.field public static final CREATE_HISTORY:Ljava/lang/String; = "CREATE TABLE HISTORY ( TITLE text, URL text, TIME integer)"

.field public static final CREATE_JAVASCRIPT:Ljava/lang/String; = "CREATE TABLE JAVASCRIPT ( DOMAIN text)"

.field public static final CREATE_WHITELIST:Ljava/lang/String; = "CREATE TABLE WHITELIST ( DOMAIN text)"

.field public static final TABLE_BOOKMARKS:Ljava/lang/String; = "BOOKMARKS"

.field public static final TABLE_COOKIE:Ljava/lang/String; = "COOKIE"

.field public static final TABLE_GRID:Ljava/lang/String; = "GRID"

.field public static final TABLE_HISTORY:Ljava/lang/String; = "HISTORY"

.field public static final TABLE_JAVASCRIPT:Ljava/lang/String; = "JAVASCRIPT"

.field public static final TABLE_WHITELIST:Ljava/lang/String; = "WHITELIST"

.field private static holder:Lde/baumann/browser/Database/Record;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHolder()Lde/baumann/browser/Database/Record;
    .locals 1

    .line 65
    sget-object v0, Lde/baumann/browser/Unit/RecordUnit;->holder:Lde/baumann/browser/Database/Record;

    return-object v0
.end method

.method public static declared-synchronized setHolder(Lde/baumann/browser/Database/Record;)V
    .locals 1

    const-class v0, Lde/baumann/browser/Unit/RecordUnit;

    monitor-enter v0

    .line 68
    :try_start_0
    sput-object p0, Lde/baumann/browser/Unit/RecordUnit;->holder:Lde/baumann/browser/Database/Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0

    throw p0
.end method
