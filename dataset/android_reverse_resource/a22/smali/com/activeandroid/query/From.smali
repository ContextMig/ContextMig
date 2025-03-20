.class public final Lcom/activeandroid/query/From;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mArguments:Ljava/util/List;

.field private mGroupBy:Ljava/lang/String;

.field private mHaving:Ljava/lang/String;

.field private mJoins:Ljava/util/List;

.field private mLimit:Ljava/lang/String;

.field private mOffset:Ljava/lang/String;

.field private mOrderBy:Ljava/lang/String;

.field private mQueryBase:Lcom/activeandroid/query/Sqlable;

.field private mType:Ljava/lang/Class;

.field private final mWhere:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/activeandroid/query/Sqlable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    iput-object p2, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    return-void
.end method

.method private addFrom(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "FROM "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "AS "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addGroupBy(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "GROUP BY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addHaving(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "HAVING "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addJoins(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/query/Join;

    invoke-virtual {v0}, Lcom/activeandroid/query/Join;->toSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addLimit(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "LIMIT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addOffset(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "OFFSET "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addOrderBy(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "ORDER BY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addWhere(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "WHERE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/activeandroid/util/Log;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method


# virtual methods
.method addArguments([Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    iget-object v5, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method public and(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public varargs and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public as(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public count()I
    .locals 2

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toCountSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->intQuery(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public crossJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2

    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->CROSS:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()Ljava/util/List;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    instance-of v1, v1, Lcom/activeandroid/query/Select;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/activeandroid/content/ContentProvider;->createUri(Ljava/lang/Class;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public executeSingle()Lcom/activeandroid/Model;
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    instance-of v0, v0, Lcom/activeandroid/query/Select;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuerySingle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/activeandroid/Model;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuerySingle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/activeandroid/Model;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/Model;->delete()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toExistsSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->intQuery(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public groupBy(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    return-object p0
.end method

.method public having(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    return-object p0
.end method

.method public innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2

    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->INNER:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public join(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2

    new-instance v0, Lcom/activeandroid/query/Join;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public leftJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2

    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->LEFT:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public limit(I)Lcom/activeandroid/query/From;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->limit(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public limit(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    return-object p0
.end method

.method public offset(I)Lcom/activeandroid/query/From;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->offset(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public offset(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    return-object p0
.end method

.method public or(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 2

    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public varargs or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/activeandroid/query/From;->addArguments([Ljava/lang/Object;)V

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    return-object p0
.end method

.method public outerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2

    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->OUTER:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toCountSql()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addFrom(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addJoins(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addWhere(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addGroupBy(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addHaving(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addLimit(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOffset(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toExistsSql()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT EXISTS(SELECT 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addFrom(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addJoins(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addWhere(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addGroupBy(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addHaving(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addLimit(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOffset(Ljava/lang/StringBuilder;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSql()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    invoke-interface {v1}, Lcom/activeandroid/query/Sqlable;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addFrom(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addJoins(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addWhere(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addGroupBy(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addHaving(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOrderBy(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addLimit(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOffset(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 2

    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/activeandroid/query/From;->addArguments([Ljava/lang/Object;)V

    return-object p0
.end method
