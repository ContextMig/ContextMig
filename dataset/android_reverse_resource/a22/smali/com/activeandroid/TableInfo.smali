.class public final Lcom/activeandroid/TableInfo;
.super Ljava/lang/Object;


# instance fields
.field private mColumnNames:Ljava/util/Map;

.field private mIdName:Ljava/lang/String;

.field private mTableName:Ljava/lang/String;

.field private mType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Id"

    iput-object v0, p0, Lcom/activeandroid/TableInfo;->mIdName:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    iput-object p1, p0, Lcom/activeandroid/TableInfo;->mType:Ljava/lang/Class;

    const-class v0, Lcom/activeandroid/annotation/Table;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/annotation/Table;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/activeandroid/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/activeandroid/TableInfo;->mTableName:Ljava/lang/String;

    invoke-interface {v0}, Lcom/activeandroid/annotation/Table;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/TableInfo;->mIdName:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lcom/activeandroid/TableInfo;->getIdField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    iget-object v2, p0, Lcom/activeandroid/TableInfo;->mIdName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/activeandroid/util/ReflectionUtils;->getDeclaredColumnFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    const-class v1, Lcom/activeandroid/annotation/Column;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/activeandroid/annotation/Column;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/annotation/Column;

    invoke-interface {v1}, Lcom/activeandroid/annotation/Column;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/TableInfo;->mTableName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getIdField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 2

    const-class v0, Lcom/activeandroid/Model;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "mId"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Impossible!"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/activeandroid/TableInfo;->getIdField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIdName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mIdName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mType:Ljava/lang/Class;

    return-object v0
.end method
