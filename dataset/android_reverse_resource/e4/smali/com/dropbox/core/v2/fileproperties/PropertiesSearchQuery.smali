.class public Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;
.super Ljava/lang/Object;
.source "PropertiesSearchQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;
    }
.end annotation


# instance fields
.field protected final logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

.field protected final mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

.field protected final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    .prologue
    .line 66
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LogicalOperator;->OR_OPERATOR:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;Lcom/dropbox/core/v2/fileproperties/LogicalOperator;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;Lcom/dropbox/core/v2/fileproperties/LogicalOperator;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;
    .param p3, "logicalOperator"    # Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'query\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->query:Ljava/lang/String;

    .line 42
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'mode\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    .line 46
    if-nez p3, :cond_2

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'logicalOperator\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p1, p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 113
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 117
    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;

    .line 118
    .local v0, "other":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->query:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->query:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->query:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    .line 119
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    .line 120
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/fileproperties/LogicalOperator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;
    :cond_6
    move v1, v2

    .line 124
    goto :goto_0
.end method

.method public getLogicalOperator()Lcom/dropbox/core/v2/fileproperties/LogicalOperator;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    return-object v0
.end method

.method public getMode()Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->query:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 99
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->query:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 104
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
