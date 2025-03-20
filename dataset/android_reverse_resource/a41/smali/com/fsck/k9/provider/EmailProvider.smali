.class public Lcom/fsck/k9/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;,
        Lcom/fsck/k9/provider/EmailProvider$IdTrickeryCursor;,
        Lcom/fsck/k9/provider/EmailProvider$StatsColumns;,
        Lcom/fsck/k9/provider/EmailProvider$ThreadColumns;,
        Lcom/fsck/k9/provider/EmailProvider$FolderColumns;,
        Lcom/fsck/k9/provider/EmailProvider$InternalMessageColumns;,
        Lcom/fsck/k9/provider/EmailProvider$MessageColumns;,
        Lcom/fsck/k9/provider/EmailProvider$SpecialColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.fsck.k9.provider.email"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final FIXUP_AGGREGATED_MESSAGES_COLUMNS:[Ljava/lang/String;

.field private static final FIXUP_MESSAGES_COLUMNS:[Ljava/lang/String;

.field private static final FOLDERS_COLUMNS:[Ljava/lang/String;

.field private static final FOLDERS_TABLE:Ljava/lang/String; = "folders"

.field private static final MESSAGES:I = 0x0

.field private static final MESSAGES_TABLE:Ljava/lang/String; = "messages"

.field private static final MESSAGES_THREAD:I = 0x2

.field private static final MESSAGES_THREADED:I = 0x1

.field private static final MESSAGE_BASE:I = 0x0

.field private static final STATS:I = 0x64

.field private static final STATS_BASE:I = 0x64

.field private static final STATS_DEFAULT_PROJECTION:[Ljava/lang/String;

.field private static final THREADS_TABLE:Ljava/lang/String; = "threads"

.field private static final THREAD_AGGREGATION_FUNCS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mPreferences:Lcom/fsck/k9/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/fsck/k9/provider/EmailProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 51
    const-string v1, "content://com.fsck.k9.provider.email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    .line 70
    sget-object v1, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    const-string v2, "date"

    const-string v3, "MAX"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    const-string v2, "internal_date"

    const-string v3, "MAX"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    const-string v2, "attachment_count"

    const-string v3, "SUM"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    const-string v2, "read"

    const-string v3, "MIN"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    const-string v2, "flagged"

    const-string v3, "MAX"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    const-string v2, "answered"

    const-string v3, "MIN"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    const-string v2, "forwarded"

    const-string v3, "MIN"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/fsck/k9/provider/EmailProvider;->FIXUP_MESSAGES_COLUMNS:[Ljava/lang/String;

    .line 83
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "date"

    aput-object v2, v1, v4

    const-string v2, "internal_date"

    aput-object v2, v1, v5

    const-string v2, "attachment_count"

    aput-object v2, v1, v6

    const-string v2, "read"

    aput-object v2, v1, v7

    const-string v2, "flagged"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "answered"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "forwarded"

    aput-object v3, v1, v2

    sput-object v1, Lcom/fsck/k9/provider/EmailProvider;->FIXUP_AGGREGATED_MESSAGES_COLUMNS:[Ljava/lang/String;

    .line 95
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "id"

    aput-object v2, v1, v4

    const-string v2, "name"

    aput-object v2, v1, v5

    const-string v2, "last_updated"

    aput-object v2, v1, v6

    const-string v2, "unread_count"

    aput-object v2, v1, v7

    const-string v2, "visible_limit"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "push_state"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "last_pushed"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "flagged_count"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "integrate"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "top_group"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "poll_class"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "push_class"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "display_class"

    aput-object v3, v1, v2

    sput-object v1, Lcom/fsck/k9/provider/EmailProvider;->FOLDERS_COLUMNS:[Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/fsck/k9/provider/EmailProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 117
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v1, "com.fsck.k9.provider.email"

    const-string v2, "account/*/messages"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    const-string v1, "com.fsck.k9.provider.email"

    const-string v2, "account/*/messages/threaded"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    const-string v1, "com.fsck.k9.provider.email"

    const-string v2, "account/*/thread/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    const-string v1, "com.fsck.k9.provider.email"

    const-string v2, "account/*/stats"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "unread_count"

    aput-object v2, v1, v4

    const-string v2, "flagged_count"

    aput-object v2, v1, v5

    sput-object v1, Lcom/fsck/k9/provider/EmailProvider;->STATS_DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/fsck/k9/provider/EmailProvider;->FOLDERS_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/fsck/k9/provider/EmailProvider;->FIXUP_MESSAGES_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/provider/EmailProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/provider/EmailProvider;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/StringBuilder;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/provider/EmailProvider;->createThreadedSubQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/fsck/k9/provider/EmailProvider;->FIXUP_AGGREGATED_MESSAGES_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private static containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "haystack"    # Ljava/lang/String;
    .param p1, "needles"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 813
    if-nez p0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return v1

    .line 817
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 818
    .local v0, "needle":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 819
    const/4 v1, 0x1

    goto :goto_0

    .line 817
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private createThreadedSubQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/StringBuilder;

    .prologue
    .line 428
    const-string v2, "SELECT t.root AS thread_root"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 430
    .local v1, "columnName":Ljava/lang/String;
    sget-object v4, Lcom/fsck/k9/provider/EmailProvider;->THREAD_AGGREGATION_FUNCS:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "aggregationFunc":Ljava/lang/String;
    const-string v4, "thread_count"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    const-string v4, ",COUNT(t.root) AS thread_count"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_1
    if-eqz v0, :cond_0

    .line 435
    const-string v4, ","

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v4, "("

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v4, ") AS "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 446
    .end local v0    # "aggregationFunc":Ljava/lang/String;
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_2
    const-string v2, " FROM messages m JOIN threads t ON (t.message_id = m.id)"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    sget-object v2, Lcom/fsck/k9/provider/EmailProvider;->FOLDERS_COLUMNS:[Ljava/lang/String;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/fsck/k9/helper/Utility;->arrayContainsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    const-string v2, " JOIN folders f ON (m.folder_id = f.id)"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_3
    const-string v2, " WHERE (t.root IN (SELECT root FROM messages m JOIN threads t ON (t.message_id = m.id) WHERE m.empty = 0 AND m.deleted = 0)"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 467
    const-string v2, " AND ("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v2, ")"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_4
    const-string v2, ") AND deleted = 0 AND empty = 0"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v2, " GROUP BY t.root"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    return-void
.end method

.method private getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;
    .locals 5
    .param p1, "accountUuid"    # Ljava/lang/String;

    .prologue
    .line 597
    iget-object v2, p0, Lcom/fsck/k9/provider/EmailProvider;->mPreferences:Lcom/fsck/k9/Preferences;

    if-nez v2, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/fsck/k9/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 599
    .local v1, "appContext":Landroid/content/Context;
    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/provider/EmailProvider;->mPreferences:Lcom/fsck/k9/Preferences;

    .line 602
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/provider/EmailProvider;->mPreferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 604
    .local v0, "account":Lcom/fsck/k9/Account;
    if-nez v0, :cond_1

    .line 605
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_1
    return-object v0
.end method

.method private getAccountStats(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 536
    invoke-direct {p0, p1}, Lcom/fsck/k9/provider/EmailProvider;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 537
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-direct {p0, v0}, Lcom/fsck/k9/provider/EmailProvider;->getDatabase(Lcom/fsck/k9/Account;)Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v2

    .line 540
    .local v2, "database":Lcom/fsck/k9/mailstore/LockableDatabase;
    if-nez p2, :cond_0

    sget-object v5, Lcom/fsck/k9/provider/EmailProvider;->STATS_DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 543
    .local v5, "sourceProjection":[Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v6, "sql":Ljava/lang/StringBuilder;
    const-string v8, "SELECT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const/4 v4, 0x1

    .line 549
    .local v4, "first":Z
    array-length v8, v5

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v1, v5, v7

    .line 550
    .local v1, "columnName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 551
    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    :goto_2
    const-string v9, "unread_count"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 557
    const-string v9, "SUM(read=0) AS unread_count"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v1    # "columnName":Ljava/lang/String;
    .end local v4    # "first":Z
    .end local v5    # "sourceProjection":[Ljava/lang/String;
    .end local v6    # "sql":Ljava/lang/StringBuilder;
    :cond_0
    move-object v5, p2

    .line 540
    goto :goto_0

    .line 553
    .restart local v1    # "columnName":Ljava/lang/String;
    .restart local v4    # "first":Z
    .restart local v5    # "sourceProjection":[Ljava/lang/String;
    .restart local v6    # "sql":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 558
    :cond_2
    const-string v9, "flagged_count"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 559
    const-string v9, "SUM(flagged) AS flagged_count"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 561
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Column name not allowed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 566
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_4
    const-string v7, " FROM messages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    sget-object v7, Lcom/fsck/k9/provider/EmailProvider;->FOLDERS_COLUMNS:[Ljava/lang/String;

    invoke-static {p3, v7}, Lcom/fsck/k9/provider/EmailProvider;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 569
    const-string v7, " JOIN folders ON (folders.id = messages.folder_id)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_5
    const-string v7, " WHERE (deleted = 0 AND empty = 0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 575
    const-string v7, " AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_6
    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Lcom/fsck/k9/provider/EmailProvider$4;

    invoke-direct {v8, p0, v6, p4}, Lcom/fsck/k9/provider/EmailProvider$4;-><init>(Lcom/fsck/k9/provider/EmailProvider;Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v7

    .line 589
    :catch_0
    move-exception v3

    .line 590
    .local v3, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Storage not available"

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 591
    .end local v3    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catch_1
    move-exception v3

    .line 592
    .local v3, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "messaging exception"

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private getDatabase(Lcom/fsck/k9/Account;)Lcom/fsck/k9/mailstore/LockableDatabase;
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 614
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 619
    .local v1, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v2

    return-object v2

    .line 615
    .end local v1    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t get LocalStore"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/fsck/k9/provider/EmailProvider;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v6

    .line 291
    .local v6, "account":Lcom/fsck/k9/Account;
    invoke-direct {p0, v6}, Lcom/fsck/k9/provider/EmailProvider;->getDatabase(Lcom/fsck/k9/Account;)Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v7

    .line 294
    .local v7, "database":Lcom/fsck/k9/mailstore/LockableDatabase;
    const/4 v9, 0x0

    :try_start_0
    new-instance v0, Lcom/fsck/k9/provider/EmailProvider$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/provider/EmailProvider$1;-><init>(Lcom/fsck/k9/provider/EmailProvider;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v9, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 345
    :catch_0
    move-exception v8

    .line 346
    .local v8, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Storage not available"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 347
    .end local v8    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catch_1
    move-exception v8

    .line 348
    .local v8, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "messaging exception"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getThread(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "threadId"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/fsck/k9/provider/EmailProvider;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 483
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-direct {p0, v0}, Lcom/fsck/k9/provider/EmailProvider;->getDatabase(Lcom/fsck/k9/Account;)Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    .line 486
    .local v1, "database":Lcom/fsck/k9/mailstore/LockableDatabase;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/fsck/k9/provider/EmailProvider$3;

    invoke-direct {v4, p0, p2, p4, p3}, Lcom/fsck/k9/provider/EmailProvider$3;-><init>(Lcom/fsck/k9/provider/EmailProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 526
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Storage not available"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 528
    .end local v2    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catch_1
    move-exception v2

    .line 529
    .local v2, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "messaging exception"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getThreadedMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/fsck/k9/provider/EmailProvider;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v6

    .line 356
    .local v6, "account":Lcom/fsck/k9/Account;
    invoke-direct {p0, v6}, Lcom/fsck/k9/provider/EmailProvider;->getDatabase(Lcom/fsck/k9/Account;)Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v7

    .line 359
    .local v7, "database":Lcom/fsck/k9/mailstore/LockableDatabase;
    const/4 v9, 0x0

    :try_start_0
    new-instance v0, Lcom/fsck/k9/provider/EmailProvider$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/provider/EmailProvider$2;-><init>(Lcom/fsck/k9/provider/EmailProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v9, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 420
    :catch_0
    move-exception v8

    .line 421
    .local v8, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Storage not available"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 422
    .end local v8    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catch_1
    move-exception v8

    .line 423
    .local v8, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "messaging exception"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 207
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 279
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 212
    sget-object v4, Lcom/fsck/k9/provider/EmailProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 213
    .local v15, "match":I
    if-gez v15, :cond_0

    .line 214
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 218
    .local v11, "contentResolver":Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 219
    .local v12, "cursor":Landroid/database/Cursor;
    sparse-switch v15, :sswitch_data_0

    .line 269
    :goto_0
    return-object v12

    .line 223
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    .line 224
    .local v17, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 226
    .local v5, "accountUuid":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    array-length v4, v0

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v14, "dbColumnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v18, "specialColumns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p2

    array-length v7, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v10, p2, v4

    .line 229
    .local v10, "columnName":Ljava/lang/String;
    const-string v8, "account_uuid"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    const-string v8, "account_uuid"

    move-object/from16 v0, v18

    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 232
    :cond_1
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 236
    .end local v10    # "columnName":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v14, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 238
    .local v6, "dbProjection":[Ljava/lang/String;
    if-nez v15, :cond_3

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 239
    invoke-virtual/range {v4 .. v9}, Lcom/fsck/k9/provider/EmailProvider;->getMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 249
    :goto_3
    sget-object v4, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/messages"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 250
    .local v16, "notificationUri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-interface {v12, v11, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 252
    new-instance v13, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;

    new-instance v4, Lcom/fsck/k9/provider/EmailProvider$IdTrickeryCursor;

    invoke-direct {v4, v12}, Lcom/fsck/k9/provider/EmailProvider$IdTrickeryCursor;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-direct {v13, v4, v0, v1}, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    .end local v12    # "cursor":Landroid/database/Cursor;
    .local v13, "cursor":Landroid/database/Cursor;
    new-instance v12, Lcom/fsck/k9/cache/EmailProviderCacheCursor;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v12, v5, v13, v4}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/Context;)V

    .line 254
    .end local v13    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 240
    .end local v16    # "notificationUri":Landroid/net/Uri;
    :cond_3
    const/4 v4, 0x1

    if-ne v15, v4, :cond_4

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 241
    invoke-virtual/range {v4 .. v9}, Lcom/fsck/k9/provider/EmailProvider;->getThreadedMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_3

    .line 242
    :cond_4
    const/4 v4, 0x2

    if-ne v15, v4, :cond_5

    .line 243
    const/4 v4, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 244
    .local v19, "threadId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/fsck/k9/provider/EmailProvider;->getThread(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 245
    goto :goto_3

    .line 246
    .end local v19    # "threadId":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "Not implemented"

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    .end local v5    # "accountUuid":Ljava/lang/String;
    .end local v6    # "dbProjection":[Ljava/lang/String;
    .end local v14    # "dbColumnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "specialColumns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    .line 258
    .restart local v17    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 260
    .restart local v5    # "accountUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/fsck/k9/provider/EmailProvider;->getAccountStats(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 262
    sget-object v4, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/messages"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 264
    .restart local v16    # "notificationUri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-interface {v12, v11, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
