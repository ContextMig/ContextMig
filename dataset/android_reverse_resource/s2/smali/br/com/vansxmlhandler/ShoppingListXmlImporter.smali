.class public Lbr/com/vansxmlhandler/ShoppingListXmlImporter;
.super Ljava/lang/Object;
.source "ShoppingListXmlImporter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private doc:Lorg/w3c/dom/Document;

.field private itemShoppingList:Lbr/com/bean/ItemShoppingList;

.field private shoppingList:Lbr/com/bean/ShoppingList;

.field private wasSucessful:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x61ac0428c61b5834L    # 3.1510670204468922E162

    const-string v2, "br/com/vansxmlhandler/ShoppingListXmlImporter"

    const/16 v3, 0x72

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Document;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->wasSucessful:Z

    .line 32
    iput-object p1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->context:Landroid/content/Context;

    aput-boolean v2, v0, v1

    .line 33
    new-instance v1, Lbr/com/bean/ShoppingList;

    invoke-direct {v1, p1}, Lbr/com/bean/ShoppingList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->shoppingList:Lbr/com/bean/ShoppingList;

    aput-boolean v2, v0, v2

    .line 34
    new-instance v1, Lbr/com/bean/ItemShoppingList;

    invoke-direct {v1, p1}, Lbr/com/bean/ItemShoppingList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->itemShoppingList:Lbr/com/bean/ItemShoppingList;

    .line 35
    iput-object p2, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->doc:Lorg/w3c/dom/Document;

    .line 36
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method private doToast(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v1

    .line 197
    iget-object v0, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->context:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x70

    aput-boolean v2, v1, v0

    .line 198
    iget-object v0, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 199
    const/16 v0, 0x71

    aput-boolean v2, v1, v0

    return-void
.end method

.method private getTableName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v0

    .line 193
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "NAME"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private isImportableBase()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v3

    .line 148
    :try_start_0
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const/16 v4, 0x4a

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 150
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DATABASE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v1, 0x4b

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 151
    :goto_0
    const/16 v1, 0x50

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    move v1, v0

    .line 150
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->isValidNode(Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x51

    aput-boolean v2, v3, v1

    .line 154
    :goto_2
    return v0

    .line 150
    :cond_0
    :try_start_1
    const-string v4, "NAME"

    const/16 v5, 0x4c

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 151
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "LISTADECOMPRAS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v1, 0x4d

    const/4 v4, 0x1

    aput-boolean v4, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    const/16 v4, 0x52

    aput-boolean v2, v3, v4

    .line 153
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->doToast(Ljava/lang/String;)V

    .line 154
    const/16 v1, 0x53

    aput-boolean v2, v3, v1

    goto :goto_2

    .line 151
    :cond_1
    :try_start_2
    invoke-interface {v1}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x4e

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x4f

    const/4 v4, 0x1

    aput-boolean v4, v3, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v2

    goto :goto_1
.end method

.method private isImportableCol(Lorg/w3c/dom/Node;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v3

    .line 178
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "COL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x64

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    :goto_0
    const/16 v1, 0x67

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->isValidNode(Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x68

    aput-boolean v2, v3, v1

    .line 181
    :goto_2
    return v0

    .line 178
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x65

    const/4 v4, 0x1

    aput-boolean v4, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    const/16 v4, 0x69

    aput-boolean v2, v3, v4

    .line 180
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->doToast(Ljava/lang/String;)V

    .line 181
    const/16 v1, 0x6a

    aput-boolean v2, v3, v1

    goto :goto_2

    .line 178
    :cond_1
    const/16 v1, 0x66

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v3, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v2

    goto :goto_1
.end method

.method private isImportableRow(Lorg/w3c/dom/Node;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v3

    .line 169
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ROW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x5c

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    :goto_0
    const/16 v1, 0x60

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->isValidNode(Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x61

    aput-boolean v2, v3, v1

    .line 172
    :goto_2
    return v0

    .line 169
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x5d

    const/4 v4, 0x1

    aput-boolean v4, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    const/16 v4, 0x62

    aput-boolean v2, v3, v4

    .line 171
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->doToast(Ljava/lang/String;)V

    .line 172
    const/16 v1, 0x63

    aput-boolean v2, v3, v1

    goto :goto_2

    .line 169
    :cond_1
    :try_start_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x5e

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x5f

    const/4 v4, 0x1

    aput-boolean v4, v3, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v2

    goto :goto_1
.end method

.method private isImportableTable(Lorg/w3c/dom/Node;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v3

    .line 160
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TABLE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x54

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    :goto_0
    const/16 v1, 0x58

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->isValidNode(Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x59

    aput-boolean v2, v3, v1

    .line 163
    :goto_2
    return v0

    .line 160
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x55

    const/4 v4, 0x1

    aput-boolean v4, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    const/16 v4, 0x5a

    aput-boolean v2, v3, v4

    .line 162
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->doToast(Ljava/lang/String;)V

    .line 163
    const/16 v1, 0x5b

    aput-boolean v2, v3, v1

    goto :goto_2

    .line 160
    :cond_1
    :try_start_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x56

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x57

    const/4 v4, 0x1

    aput-boolean v4, v3, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v2

    goto :goto_1
.end method

.method private isValidNode(Ljava/lang/Boolean;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6b

    aput-boolean v3, v0, v1

    .line 189
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x6e

    aput-boolean v3, v0, v2

    return v1

    .line 186
    :cond_0
    const/16 v1, 0x6c

    aput-boolean v3, v0, v1

    .line 187
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->context:Landroid/content/Context;

    const v2, 0x7f050028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->doToast(Ljava/lang/String;)V

    const/16 v1, 0x6d

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private setColAttributesToTableClass(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    invoke-direct {p0, p1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->getTableName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHOPPINGLIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x31

    aput-boolean v6, v0, v1

    .line 115
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "NAME"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x32

    aput-boolean v6, v0, v1

    .line 119
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "NAME"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DATELIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x35

    aput-boolean v6, v0, v1

    .line 144
    :goto_1
    const/16 v1, 0x49

    aput-boolean v6, v0, v1

    return-void

    .line 115
    :cond_0
    const/16 v1, 0x33

    aput-boolean v6, v0, v1

    .line 116
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->shoppingList:Lbr/com/bean/ShoppingList;

    iget-object v2, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->context:Landroid/content/Context;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbr/com/bean/ShoppingList;->setName(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x34

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 119
    :cond_1
    const/16 v1, 0x36

    aput-boolean v6, v0, v1

    .line 120
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->shoppingList:Lbr/com/bean/ShoppingList;

    new-instance v2, Ljava/sql/Date;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lbr/com/bean/ShoppingList;->setDate(Ljava/util/Date;)V

    const/16 v1, 0x37

    aput-boolean v6, v0, v1

    goto :goto_1

    .line 122
    :cond_2
    invoke-direct {p0, p1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->getTableName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ITEMSHOPPINGLIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x38

    aput-boolean v6, v0, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x39

    aput-boolean v6, v0, v1

    .line 124
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "NAME"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDSHOPPINGLIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x3a

    aput-boolean v6, v0, v1

    .line 128
    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "NAME"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHECKED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x3d

    aput-boolean v6, v0, v1

    .line 132
    :goto_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "NAME"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DESCRIPTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x40

    aput-boolean v6, v0, v1

    .line 136
    :goto_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "NAME"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNITVALUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x43

    aput-boolean v6, v0, v1

    .line 140
    :goto_5
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "NAME"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QUANTITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x46

    aput-boolean v6, v0, v1

    goto/16 :goto_1

    .line 124
    :cond_4
    const/16 v1, 0x3b

    aput-boolean v6, v0, v1

    .line 125
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->itemShoppingList:Lbr/com/bean/ItemShoppingList;

    iget-object v2, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->shoppingList:Lbr/com/bean/ShoppingList;

    invoke-virtual {v2}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/bean/ItemShoppingList;->setIdShoppingList(I)V

    const/16 v1, 0x3c

    aput-boolean v6, v0, v1

    goto :goto_2

    .line 128
    :cond_5
    const/16 v1, 0x3e

    aput-boolean v6, v0, v1

    .line 129
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->itemShoppingList:Lbr/com/bean/ItemShoppingList;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/bean/ItemShoppingList;->setChecked(Z)V

    const/16 v1, 0x3f

    aput-boolean v6, v0, v1

    goto :goto_3

    .line 132
    :cond_6
    const/16 v1, 0x41

    aput-boolean v6, v0, v1

    .line 133
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->itemShoppingList:Lbr/com/bean/ItemShoppingList;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/bean/ItemShoppingList;->setDescription(Ljava/lang/String;)V

    const/16 v1, 0x42

    aput-boolean v6, v0, v1

    goto :goto_4

    .line 136
    :cond_7
    const/16 v1, 0x44

    aput-boolean v6, v0, v1

    .line 137
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->itemShoppingList:Lbr/com/bean/ItemShoppingList;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbr/com/vansformat/CustomFloatFormat;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/bean/ItemShoppingList;->setUnitValue(F)V

    const/16 v1, 0x45

    aput-boolean v6, v0, v1

    goto :goto_5

    .line 140
    :cond_8
    const/16 v1, 0x47

    aput-boolean v6, v0, v1

    .line 141
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->itemShoppingList:Lbr/com/bean/ItemShoppingList;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbr/com/vansformat/CustomFloatFormat;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/bean/ItemShoppingList;->setQuantity(F)V

    const/16 v1, 0x48

    aput-boolean v6, v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public getImportedShoppingList()Lbr/com/bean/ShoppingList;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->shoppingList:Lbr/com/bean/ShoppingList;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public importXml()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v5

    .line 47
    iput-boolean v4, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->wasSucessful:Z

    const/4 v6, 0x5

    aput-boolean v14, v5, v6

    .line 48
    invoke-direct {p0}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->isImportableBase()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v4, 0x6

    aput-boolean v14, v5, v4

    .line 109
    .local v1, "i":I
    :goto_0
    const/16 v4, 0x30

    aput-boolean v14, v5, v4

    return-void

    .line 48
    .end local v1    # "i":I
    :cond_0
    const/4 v6, 0x7

    aput-boolean v14, v5, v6

    .line 49
    iget-object v6, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/16 v7, 0x8

    aput-boolean v14, v5, v7

    .line 51
    new-instance v7, Lbr/com/dao/DataBaseDAO;

    iget-object v8, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const/16 v8, 0x9

    aput-boolean v14, v5, v8

    .line 52
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v8, 0xa

    const/4 v9, 0x1

    :try_start_0
    aput-boolean v9, v5, v8

    .line 56
    const/16 v8, 0xb

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    move v1, v4

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lt v1, v8, :cond_1

    const/16 v4, 0xc

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 98
    :goto_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 99
    const/4 v4, 0x1

    iput-boolean v4, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->wasSucessful:Z

    const/16 v4, 0x27

    const/4 v6, 0x1

    aput-boolean v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v4, 0x28

    aput-boolean v14, v5, v4

    .line 106
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 107
    const/16 v4, 0x29

    aput-boolean v14, v5, v4

    goto :goto_0

    .line 56
    :cond_1
    const/16 v8, 0xd

    const/4 v9, 0x1

    :try_start_1
    aput-boolean v9, v5, v8

    .line 58
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    const/16 v9, 0xe

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 60
    invoke-direct {p0, v8}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->isImportableTable(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_2

    const/16 v4, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v5, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 100
    .end local v1    # "i":I
    .local v3, "k":I
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->wasSucessful:Z

    .end local v3    # "k":I
    const/16 v4, 0x2a

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->doToast(Ljava/lang/String;)V

    const/16 v4, 0x2b

    const/4 v6, 0x1

    aput-boolean v6, v5, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v4, 0x2c

    aput-boolean v14, v5, v4

    .line 106
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 107
    const/16 v4, 0x2d

    aput-boolean v14, v5, v4

    goto/16 :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    :cond_2
    const/16 v9, 0x10

    const/4 v10, 0x1

    :try_start_3
    aput-boolean v10, v5, v9

    .line 61
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/16 v10, 0x11

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 63
    const/16 v10, 0x12

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    move v2, v4

    .end local v1    # "i":I
    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v2, v10, :cond_3

    const/16 v8, 0x13

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 56
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .restart local v1    # "i":I
    const/16 v8, 0x26

    const/4 v9, 0x1

    aput-boolean v9, v5, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 105
    .end local v1    # "i":I
    .restart local v3    # "k":I
    :catchall_0
    move-exception v4

    .end local v3    # "k":I
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v6, 0x2e

    aput-boolean v14, v5, v6

    .line 106
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 107
    const/16 v6, 0x2f

    aput-boolean v14, v5, v6

    throw v4

    .line 63
    :cond_3
    const/16 v10, 0x14

    const/4 v11, 0x1

    :try_start_4
    aput-boolean v11, v5, v10

    .line 65
    invoke-interface {v9, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    const/16 v11, 0x15

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 67
    invoke-direct {p0, v10}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->isImportableRow(Lorg/w3c/dom/Node;)Z

    move-result v11

    if-nez v11, :cond_4

    const/16 v8, 0x16

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    goto :goto_4

    :cond_4
    const/16 v11, 0x17

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 68
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/16 v11, 0x18

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 70
    const/16 v11, 0x19

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    move v3, v4

    .restart local v3    # "k":I
    :goto_5
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lt v3, v11, :cond_5

    const/16 v10, 0x1a

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 81
    :goto_6
    invoke-direct {p0, v8}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->getTableName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "SHOPPINGLIST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x20

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 82
    iget-object v10, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->context:Landroid/content/Context;

    iget-object v11, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->shoppingList:Lbr/com/bean/ShoppingList;

    invoke-static {v10, v7, v11}, Lbr/com/dao/ShoppingListDAO;->insert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lbr/com/bean/ShoppingList;)Lbr/com/bean/ShoppingList;

    move-result-object v10

    iput-object v10, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->shoppingList:Lbr/com/bean/ShoppingList;

    const/16 v10, 0x21

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 63
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .local v2, "j":I
    const/16 v10, 0x25

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    goto/16 :goto_3

    .line 70
    .end local v2    # "j":I
    :cond_5
    const/16 v11, 0x1b

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 72
    invoke-interface {v10, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    const/16 v12, 0x1c

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 74
    invoke-direct {p0, v11}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->isImportableCol(Lorg/w3c/dom/Node;)Z

    move-result v12

    if-nez v12, :cond_6

    const/16 v10, 0x1d

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    goto :goto_6

    :cond_6
    const/16 v12, 0x1e

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 75
    invoke-direct {p0, v8, v11}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->setColAttributesToTableClass(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 70
    add-int/lit8 v3, v3, 0x1

    const/16 v11, 0x1f

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    goto :goto_5

    .line 83
    :cond_7
    invoke-direct {p0, v8}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->getTableName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ITEMSHOPPINGLIST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const/16 v10, 0x22

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    goto :goto_7

    :cond_8
    const/16 v10, 0x23

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 84
    iget-object v10, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->context:Landroid/content/Context;

    iget-object v11, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->itemShoppingList:Lbr/com/bean/ItemShoppingList;

    invoke-static {v10, v7, v11}, Lbr/com/dao/ItemShoppingListDAO;->insert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lbr/com/bean/ItemShoppingList;)Lbr/com/bean/ItemShoppingList;

    const/16 v10, 0x24

    const/4 v11, 0x1

    aput-boolean v11, v5, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7
.end method

.method public wasSucessful()Z
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-boolean v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->wasSucessful:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
