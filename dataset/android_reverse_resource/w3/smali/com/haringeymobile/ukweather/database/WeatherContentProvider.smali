.class public Lcom/haringeymobile/ukweather/database/WeatherContentProvider;
.super Landroid/content/ContentProvider;
.source "WeatherContentProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final AUTHORITY:Ljava/lang/String; = "com.haringeymobile.ukweather.provider"

.field private static final CITIES_ALL_ROWS:I = 0x1

.field private static final CITIES_SEARCH:I = 0x3

.field private static final CITIES_SINGLE_ROW:I = 0x2

.field public static final CONTENT_ITEM_TYPE_CITY_RECORDS:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.haringeymobile.ukweather.provider.Cities"

.field public static final CONTENT_TYPE_CITY_RECORDS:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.haringeymobile.ukweather.provider.Cities"

.field public static final CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

.field private static final PATH_CITY_RECORDS:Ljava/lang/String; = "Cities"

.field private static final PROVIDER_SPECIFIC_SUBTYPE_FOR_CITY_RECORDS:Ljava/lang/String; = "/vnd.com.haringeymobile.ukweather.provider.Cities"

.field private static final SEARCH_SUGGEST_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final myURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private databaseHelper:Lcom/haringeymobile/ukweather/database/DatabaseHelper;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x54ab78e054da3e30L    # 7.511066295407083E99

    const-string v2, "com/haringeymobile/ukweather/database/WeatherContentProvider"

    const/16 v3, 0x37

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    const-string v1, "content://com.haringeymobile.ukweather.provider/Cities"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    const/16 v1, 0x2d

    aput-boolean v5, v0, v1

    .line 46
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    const/16 v1, 0x2e

    aput-boolean v5, v0, v1

    .line 47
    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.haringeymobile.ukweather.provider"

    const-string v3, "Cities"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x2f

    aput-boolean v5, v0, v1

    .line 48
    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.haringeymobile.ukweather.provider"

    const-string v3, "Cities/#"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x30

    aput-boolean v5, v0, v1

    .line 49
    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.haringeymobile.ukweather.provider"

    const-string v3, "search_suggest_query"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x31

    aput-boolean v5, v0, v1

    .line 50
    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.haringeymobile.ukweather.provider"

    const-string v3, "search_suggest_query/*"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x32

    aput-boolean v5, v0, v1

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->SEARCH_SUGGEST_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x33

    aput-boolean v5, v0, v1

    .line 62
    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->SEARCH_SUGGEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "_id AS _id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x34

    aput-boolean v5, v0, v1

    .line 63
    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->SEARCH_SUGGEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "suggest_text_1"

    const-string v3, "Name AS suggest_text_1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x35

    aput-boolean v5, v0, v1

    .line 65
    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->SEARCH_SUGGEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "suggest_intent_data_id"

    const-string v3, "_id AS suggest_intent_data_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/16 v1, 0x36

    aput-boolean v5, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->databaseHelper:Lcom/haringeymobile/ukweather/database/DatabaseHelper;

    invoke-virtual {v3}, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v3, 0x1c

    aput-boolean v7, v2, v3

    .line 152
    sget-object v3, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 167
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x22

    aput-boolean v7, v2, v4

    throw v3

    .line 154
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    aput-boolean v7, v2, v4

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1e

    aput-boolean v7, v2, v4

    .line 156
    const-string v4, "Cities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .local v1, "rowsDeleted":I
    const/16 v3, 0x1f

    aput-boolean v7, v2, v3

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 170
    const/16 v3, 0x23

    aput-boolean v7, v2, v3

    return v1

    .line 159
    .end local v1    # "rowsDeleted":I
    :cond_0
    const-string v4, "Cities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 162
    .restart local v1    # "rowsDeleted":I
    const/16 v3, 0x20

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 164
    .end local v1    # "rowsDeleted":I
    :pswitch_1
    const-string v3, "Cities"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 165
    .restart local v1    # "rowsDeleted":I
    const/16 v3, 0x21

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOpenHelperForTest()Lcom/haringeymobile/ukweather/database/DatabaseHelper;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->databaseHelper:Lcom/haringeymobile/ukweather/database/DatabaseHelper;

    const/16 v2, 0x2c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoInit()[Z

    move-result-object v1

    .line 114
    sget-object v0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-boolean v4, v1, v2

    throw v0

    .line 116
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/vnd.com.haringeymobile.ukweather.provider.Cities"

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 120
    :goto_0
    return-object v0

    .line 118
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.com.haringeymobile.ukweather.provider.Cities"

    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoInit()[Z

    move-result-object v1

    .line 128
    iget-object v4, p0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->databaseHelper:Lcom/haringeymobile/ukweather/database/DatabaseHelper;

    invoke-virtual {v4}, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v4, 0x16

    aput-boolean v7, v1, v4

    .line 131
    sget-object v4, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 136
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x17

    aput-boolean v7, v1, v5

    throw v4

    .line 133
    :pswitch_0
    const-string v4, "Cities"

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 139
    .local v2, "id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/16 v4, 0x18

    aput-boolean v7, v1, v4

    .line 140
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x19

    aput-boolean v7, v1, v5

    .line 141
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 142
    const/16 v5, 0x1a

    aput-boolean v7, v1, v5

    return-object v4

    .line 145
    :cond_0
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not insert into table for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1b

    aput-boolean v7, v1, v5

    throw v4

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    new-instance v1, Lcom/haringeymobile/ukweather/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/haringeymobile/ukweather/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->databaseHelper:Lcom/haringeymobile/ukweather/database/DatabaseHelper;

    .line 72
    aput-boolean v3, v0, v3

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoInit()[Z

    move-result-object v9

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->databaseHelper:Lcom/haringeymobile/ukweather/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 83
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    move-object v1, v8

    .line 85
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    const/4 v5, 0x0

    .line 86
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v0, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v9, v0

    .line 87
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 89
    sget-object v2, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    throw v0

    .line 81
    .end local v5    # "groupBy":Ljava/lang/String;
    :catch_0
    move-exception v0

    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    .line 82
    iget-object v0, p0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->databaseHelper:Lcom/haringeymobile/ukweather/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v9, v0

    goto :goto_0

    .line 89
    .restart local v5    # "groupBy":Ljava/lang/String;
    :pswitch_0
    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 94
    :goto_1
    const-string v2, "Cities"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 95
    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    :goto_2
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 106
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 108
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 109
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    return-object v0

    .line 91
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    goto :goto_1

    .line 97
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name LIKE \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v9, v3

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x1

    aput-boolean v4, v9, v3

    .line 97
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 99
    sget-object v2, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->SEARCH_SUGGEST_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 100
    const-string v2, "Cities"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 101
    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    goto/16 :goto_2

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->$jacocoInit()[Z

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->databaseHelper:Lcom/haringeymobile/ukweather/database/DatabaseHelper;

    invoke-virtual {v2}, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v3, 0x24

    aput-boolean v7, v1, v3

    .line 177
    sget-object v3, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->myURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2a

    aput-boolean v7, v1, v3

    throw v2

    .line 179
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x25

    aput-boolean v7, v1, v4

    .line 180
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x26

    aput-boolean v7, v1, v4

    .line 181
    const-string v4, "Cities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, p2, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, "rowsUpdated":I
    const/16 v2, 0x27

    aput-boolean v7, v1, v2

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 195
    const/16 v2, 0x2b

    aput-boolean v7, v1, v2

    return v0

    .line 184
    .end local v0    # "rowsUpdated":I
    :cond_0
    const-string v4, "Cities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 187
    .restart local v0    # "rowsUpdated":I
    const/16 v2, 0x28

    aput-boolean v7, v1, v2

    goto :goto_0

    .line 189
    .end local v0    # "rowsUpdated":I
    :pswitch_1
    const-string v3, "Cities"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 190
    .restart local v0    # "rowsUpdated":I
    const/16 v2, 0x29

    aput-boolean v7, v1, v2

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
