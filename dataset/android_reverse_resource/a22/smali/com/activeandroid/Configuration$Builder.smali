.class public Lcom/activeandroid/Configuration$Builder;
.super Ljava/lang/Object;


# static fields
.field private static final AA_DB_NAME:Ljava/lang/String; = "AA_DB_NAME"

.field private static final AA_DB_VERSION:Ljava/lang/String; = "AA_DB_VERSION"

.field private static final AA_MODELS:Ljava/lang/String; = "AA_MODELS"

.field private static final AA_SERIALIZERS:Ljava/lang/String; = "AA_SERIALIZERS"

.field private static final AA_SQL_PARSER:Ljava/lang/String; = "AA_SQL_PARSER"

.field private static final DEFAULT_CACHE_SIZE:I = 0x400

.field private static final DEFAULT_DB_NAME:Ljava/lang/String; = "Application.db"

.field private static final DEFAULT_SQL_PARSER:Ljava/lang/String; = "legacy"


# instance fields
.field private mCacheSize:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private mDatabaseName:Ljava/lang/String;

.field private mDatabaseVersion:Ljava/lang/Integer;

.field private mModelClasses:Ljava/util/List;

.field private mSqlParser:Ljava/lang/String;

.field private mTypeSerializers:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mContext:Landroid/content/Context;

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mCacheSize:Ljava/lang/Integer;

    return-void
.end method

.method private getMetaDataDatabaseNameOrDefault()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mContext:Landroid/content/Context;

    const-string v1, "AA_DB_NAME"

    invoke-static {v0, v1}, Lcom/activeandroid/util/ReflectionUtils;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Application.db"

    :cond_0
    return-object v0
.end method

.method private getMetaDataDatabaseVersionOrDefault()I
    .locals 2

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mContext:Landroid/content/Context;

    const-string v1, "AA_DB_VERSION"

    invoke-static {v0, v1}, Lcom/activeandroid/util/ReflectionUtils;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getMetaDataSqlParserOrDefault()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mContext:Landroid/content/Context;

    const-string v1, "AA_SQL_PARSER"

    invoke-static {v0, v1}, Lcom/activeandroid/util/ReflectionUtils;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "legacy"

    :cond_0
    return-object v0
.end method

.method private loadModelList([Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/activeandroid/Configuration$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    array-length v4, p1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, p1, v1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "Couldn\'t create class."

    invoke-static {v5, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private loadSerializerList([Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/activeandroid/Configuration$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    array-length v4, p1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, p1, v1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/util/ReflectionUtils;->isTypeSerializer(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "Couldn\'t create class."

    invoke-static {v5, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public addModelClass(Ljava/lang/Class;)Lcom/activeandroid/Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mModelClasses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mModelClasses:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mModelClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addModelClasses([Ljava/lang/Class;)Lcom/activeandroid/Configuration$Builder;
    .locals 2

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mModelClasses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mModelClasses:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mModelClasses:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addTypeSerializer(Ljava/lang/Class;)Lcom/activeandroid/Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mTypeSerializers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mTypeSerializers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mTypeSerializers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addTypeSerializers([Ljava/lang/Class;)Lcom/activeandroid/Configuration$Builder;
    .locals 2

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mTypeSerializers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mTypeSerializers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mTypeSerializers:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public create()Lcom/activeandroid/Configuration;
    .locals 3

    new-instance v1, Lcom/activeandroid/Configuration;

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/activeandroid/Configuration;-><init>(Landroid/content/Context;Lcom/activeandroid/Configuration$1;)V

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mCacheSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$102(Lcom/activeandroid/Configuration;I)I

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mDatabaseName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mDatabaseName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$202(Lcom/activeandroid/Configuration;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mDatabaseVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mDatabaseVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$302(Lcom/activeandroid/Configuration;I)I

    :goto_1
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mSqlParser:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mSqlParser:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$402(Lcom/activeandroid/Configuration;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mModelClasses:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mModelClasses:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$502(Lcom/activeandroid/Configuration;Ljava/util/List;)Ljava/util/List;

    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mTypeSerializers:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mTypeSerializers:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$602(Lcom/activeandroid/Configuration;Ljava/util/List;)Ljava/util/List;

    :cond_1
    :goto_4
    return-object v1

    :cond_2
    invoke-direct {p0}, Lcom/activeandroid/Configuration$Builder;->getMetaDataDatabaseNameOrDefault()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$202(Lcom/activeandroid/Configuration;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/activeandroid/Configuration$Builder;->getMetaDataDatabaseVersionOrDefault()I

    move-result v0

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$302(Lcom/activeandroid/Configuration;I)I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/activeandroid/Configuration$Builder;->getMetaDataSqlParserOrDefault()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$402(Lcom/activeandroid/Configuration;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mContext:Landroid/content/Context;

    const-string v2, "AA_MODELS"

    invoke-static {v0, v2}, Lcom/activeandroid/util/ReflectionUtils;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/activeandroid/Configuration$Builder;->loadModelList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$502(Lcom/activeandroid/Configuration;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mContext:Landroid/content/Context;

    const-string v2, "AA_SERIALIZERS"

    invoke-static {v0, v2}, Lcom/activeandroid/util/ReflectionUtils;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/activeandroid/Configuration$Builder;->loadSerializerList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/activeandroid/Configuration;->access$602(Lcom/activeandroid/Configuration;Ljava/util/List;)Ljava/util/List;

    goto :goto_4
.end method

.method public setCacheSize(I)Lcom/activeandroid/Configuration$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mCacheSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDatabaseName(Ljava/lang/String;)Lcom/activeandroid/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/Configuration$Builder;->mDatabaseName:Ljava/lang/String;

    return-object p0
.end method

.method public setDatabaseVersion(I)Lcom/activeandroid/Configuration$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mDatabaseVersion:Ljava/lang/Integer;

    return-object p0
.end method

.method public varargs setModelClasses([Ljava/lang/Class;)Lcom/activeandroid/Configuration$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mModelClasses:Ljava/util/List;

    return-object p0
.end method

.method public setSqlParser(Ljava/lang/String;)Lcom/activeandroid/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/Configuration$Builder;->mSqlParser:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setTypeSerializers([Ljava/lang/Class;)Lcom/activeandroid/Configuration$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Configuration$Builder;->mTypeSerializers:Ljava/util/List;

    return-object p0
.end method
