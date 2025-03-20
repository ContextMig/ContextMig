.class public Lcom/fsck/k9/search/SqlQueryBuilder;
.super Ljava/lang/Object;
.source "SqlQueryBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrefixToSelection([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "columnNames"    # [Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 287
    move-object v1, p2

    .line 288
    .local v1, "result":Ljava/lang/String;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 289
    .local v0, "columnName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(?<=^|[^\\.])\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static appendCondition(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .param p0, "condition"    # Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    .param p1, "query"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/search/SearchSpecification$SearchCondition;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/fsck/k9/search/SqlQueryBuilder;->getColumnName(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {p0, p1, p2}, Lcom/fsck/k9/search/SqlQueryBuilder;->appendExprRight(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 105
    return-void
.end method

.method private static appendExprRight(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .param p0, "condition"    # Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    .param p1, "query"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/search/SearchSpecification$SearchCondition;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    .line 211
    .local v2, "value":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 213
    .local v0, "field":Lcom/fsck/k9/search/SearchSpecification$SearchField;
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "selectionArg":Ljava/lang/String;
    sget-object v3, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    iget-object v4, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v4}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 260
    :goto_0
    if-nez v1, :cond_2

    .line 261
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unhandled case"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :pswitch_0
    const-string v3, "NOT "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :pswitch_1
    const-string v3, "LIKE ?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    goto :goto_0

    .line 225
    :pswitch_2
    const-string v3, "NOT "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :pswitch_3
    const-string v3, "LIKE ?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    goto :goto_0

    .line 233
    :pswitch_4
    const-string v3, "NOT "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :pswitch_5
    const-string v3, "LIKE ?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    goto :goto_0

    .line 241
    :pswitch_6
    invoke-static {v0}, Lcom/fsck/k9/search/SqlQueryBuilder;->isNumberColumn(Lcom/fsck/k9/search/SearchSpecification$SearchField;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    const-string v3, "!= ?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :goto_1
    move-object v1, v2

    .line 247
    goto :goto_0

    .line 244
    :cond_0
    const-string v3, "NOT LIKE ?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 250
    :pswitch_7
    invoke-static {v0}, Lcom/fsck/k9/search/SqlQueryBuilder;->isNumberColumn(Lcom/fsck/k9/search/SearchSpecification$SearchField;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    const-string v3, "= ?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :goto_2
    move-object v1, v2

    goto/16 :goto_0

    .line 253
    :cond_1
    const-string v3, "LIKE ?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 264
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static buildWhereClause(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "node"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .param p2, "query"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/search/ConditionsTreeNode;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClauseInternal(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 21
    return-void
.end method

.method private static buildWhereClauseInternal(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 8
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "node"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .param p2, "query"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/search/ConditionsTreeNode;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 26
    const-string v6, "1"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v6, p1, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v6, :cond_3

    .line 31
    iget-object v0, p1, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .line 32
    .local v0, "condition":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    sget-object v6, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    iget-object v7, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v7}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 87
    invoke-static {v0, p2, p3}, Lcom/fsck/k9/search/SqlQueryBuilder;->appendCondition(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    .line 34
    :pswitch_0
    iget-object v1, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    .line 35
    .local v1, "folderName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/fsck/k9/search/SqlQueryBuilder;->getFolderId(Lcom/fsck/k9/Account;Ljava/lang/String;)J

    move-result-wide v2

    .line 36
    .local v2, "folderId":J
    iget-object v6, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    sget-object v7, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    if-ne v6, v7, :cond_1

    .line 37
    const-string v6, "folder_id = ?"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_1
    const-string v6, "folder_id != ?"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 45
    .end local v1    # "folderName":Ljava/lang/String;
    .end local v2    # "folderId":J
    :pswitch_1
    sget-object v6, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$Account$Searchable:[I

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getSearchableFolders()Lcom/fsck/k9/Account$Searchable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/Account$Searchable;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 48
    :pswitch_2
    new-instance v5, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v5}, Lcom/fsck/k9/search/LocalSearch;-><init>()V

    .line 51
    .local v5, "tempSearch":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual {p0, v5}, Lcom/fsck/k9/Account;->excludeUnwantedFolders(Lcom/fsck/k9/search/LocalSearch;)V

    .line 53
    invoke-virtual {v5}, Lcom/fsck/k9/search/LocalSearch;->getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v6

    invoke-static {p0, v6, p2, p3}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClauseInternal(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    .line 59
    .end local v5    # "tempSearch":Lcom/fsck/k9/search/LocalSearch;
    :pswitch_3
    new-instance v5, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v5}, Lcom/fsck/k9/search/LocalSearch;-><init>()V

    .line 62
    .restart local v5    # "tempSearch":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual {p0, v5}, Lcom/fsck/k9/Account;->excludeSpecialFolders(Lcom/fsck/k9/search/LocalSearch;)V

    .line 63
    invoke-virtual {p0, v5}, Lcom/fsck/k9/Account;->limitToDisplayableFolders(Lcom/fsck/k9/search/LocalSearch;)V

    .line 65
    invoke-virtual {v5}, Lcom/fsck/k9/search/LocalSearch;->getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v6

    invoke-static {p0, v6, p2, p3}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClauseInternal(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    .line 71
    .end local v5    # "tempSearch":Lcom/fsck/k9/search/LocalSearch;
    :pswitch_4
    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :pswitch_5
    iget-object v4, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    .line 79
    .local v4, "fulltextQueryString":Ljava/lang/String;
    iget-object v6, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    sget-object v7, Lcom/fsck/k9/search/SearchSpecification$Attribute;->CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    if-eq v6, v7, :cond_2

    .line 80
    const-string v6, "message contents can only be matched!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_2
    const-string v6, "m.id IN (SELECT docid FROM messages_fulltext WHERE fulltext MATCH ?)"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 91
    .end local v0    # "condition":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    .end local v4    # "fulltextQueryString":Ljava/lang/String;
    :cond_3
    const-string v6, "("

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v6, p1, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-static {p0, v6, p2, p3}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClauseInternal(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 93
    const-string v6, ") "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v6, p1, Lcom/fsck/k9/search/ConditionsTreeNode;->mValue:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    invoke-virtual {v6}, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v6, " ("

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v6, p1, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-static {p0, v6, p2, p3}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClauseInternal(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 97
    const-string v6, ")"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 45
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getColumnName(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Ljava/lang/String;
    .locals 3
    .param p0, "condition"    # Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "columnName":Ljava/lang/String;
    sget-object v1, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    iget-object v2, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 201
    :goto_0
    if-nez v0, :cond_0

    .line 202
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unhandled case"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :pswitch_0
    const-string v0, "attachment_count"

    .line 127
    goto :goto_0

    .line 130
    :pswitch_1
    const-string v0, "bcc_list"

    .line 131
    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "cc_list"

    .line 135
    goto :goto_0

    .line 138
    :pswitch_3
    const-string v0, "date"

    .line 139
    goto :goto_0

    .line 142
    :pswitch_4
    const-string v0, "deleted"

    .line 143
    goto :goto_0

    .line 146
    :pswitch_5
    const-string v0, "flags"

    .line 147
    goto :goto_0

    .line 150
    :pswitch_6
    const-string v0, "id"

    .line 151
    goto :goto_0

    .line 154
    :pswitch_7
    const-string v0, "reply_to_list"

    .line 155
    goto :goto_0

    .line 158
    :pswitch_8
    const-string v0, "sender_list"

    .line 159
    goto :goto_0

    .line 162
    :pswitch_9
    const-string v0, "subject"

    .line 163
    goto :goto_0

    .line 166
    :pswitch_a
    const-string v0, "to_list"

    .line 167
    goto :goto_0

    .line 170
    :pswitch_b
    const-string v0, "uid"

    .line 171
    goto :goto_0

    .line 174
    :pswitch_c
    const-string v0, "integrate"

    .line 175
    goto :goto_0

    .line 178
    :pswitch_d
    const-string v0, "read"

    .line 179
    goto :goto_0

    .line 182
    :pswitch_e
    const-string v0, "flagged"

    .line 183
    goto :goto_0

    .line 186
    :pswitch_f
    const-string v0, "display_class"

    .line 187
    goto :goto_0

    .line 190
    :pswitch_10
    const-string v0, "threads.root"

    .line 191
    goto :goto_0

    .line 205
    :cond_0
    return-object v0

    .line 124
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private static getFolderId(Lcom/fsck/k9/Account;Ljava/lang/String;)J
    .locals 6
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 108
    const-wide/16 v2, 0x0

    .line 110
    .local v2, "folderId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v4

    .line 111
    .local v4, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v4, p1}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 112
    .local v1, "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 113
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 119
    .end local v1    # "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :goto_0
    return-wide v2

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/MessagingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isNumberColumn(Lcom/fsck/k9/search/SearchSpecification$SearchField;)Z
    .locals 2
    .param p0, "field"    # Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .prologue
    .line 268
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    invoke-virtual {p0}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 278
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
